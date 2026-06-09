# Here, we're going to extract the demographic information from the research_1_data_copy table. First we need to create the table:
CREATE TABLE IF NOT EXISTS demographics_table (
	id int NOT NULL
	,region varchar(255) NOT NULL
	,city varchar(255) NOT NULL
	,brgy varchar(255) NOT NULL
	,sex varchar(255) NOT NULL
	,marital_status varchar(255) NOT NULL
	,age int NOT NULL
	,age_bracket varchar(255) NOT NULL
	,family_income int NULL
	,class varchar(255) NULL
	,employment_status varchar(255) NOT NULL
	,highest_educational_attainment varchar(255) NOT NULL
);

# Now, we're going to inject the information in the table we just created. 
INSERT INTO demographics_table 
SELECT
	id
	,region
	,city
	,brgy
	,sex
	,marital_status
	,age
	,age_bracket
	,family_income
	,class
	,employment_status
	,highest_educational_attainment
FROM research_1_data_copy;

# Let's view the table we just made:
SELECT *
FROM demographics_table
LIMIT 10;

# Let's check each column for errors and constraints. Let's go from left to right: 
SELECT
	DISTINCT(region)
FROM demographics_table;

SELECT
	DISTINCT(city)
FROM demographics_table;

SELECT
	DISTINCT(brgy)
FROM demographics_table;

# There are blanks in the brgy column. These are people who declined to report their barangay information. Let's just turn them into nulls.
## Let's change the brgy column into a column that accepts nulls:
ALTER TABLE demographics_table
MODIFY brgy VARCHAR(255) NULL;

## Let's turn blanks to nulls:
UPDATE demographics_table
SET brgy = NULL
WHERE brgy = '';

## Checking if changes were made as expected:
SELECT
	DISTINCT(brgy)
FROM demographics_table;


# Let's continue checking each column:
SELECT
	DISTINCT(sex)
FROM demographics_table;

SELECT
	DISTINCT(marital_status)
FROM demographics_table;

SELECT 
	DISTINCT (age)
FROM demographics_table;

## Since age is an int, I also want to check it for range constraints.
SELECT 
	DISTINCT(age)
FROM demographics_table
WHERE
	1=1 
	AND age <= 1
    OR age >= 100;
    
## There are ages that are beyond our constraints. I would consider these encoding errors and remove the zeros at the end of the numbers greater than 100. 
UPDATE demographics_table
SET age = LEFT(age, CHAR_LENGTH(age) - 1)
WHERE 
	age > 100;
    
## Now we check if the changes we made were implemented.
SELECT 
	DISTINCT(age)
FROM demographics_table
WHERE
	1=1 
	AND age <= 1
    OR age >= 100;
    
## As for the zero value in the age, we'll assume that the person didn't want to report their age. We'll keep it as is. 

# We continue checking for errors:
SELECT 
	DISTINCT(age_bracket)
FROM demographics_table;

# Seeing that the age bracket is empty, we'd just drop that column and use brackets when we visualize the them. 
ALTER TABLE demographics_table 
	DROP COLUMN age_bracket;
    
    
# We continue checking for errors:
SELECT 
	DISTINCT (family_income)
FROM demographics_table;

# Since family_income is an int, I want to check for range constraints.
SELECT 
	MIN(family_income)
	,MAX(family_income)
FROM demographics_table;

# There are zeroes reported in the family_income. These are people who chose not to report their monthly family income. I want to turn them to NULLS so we don't get confused in the computations later.
## We first modify the column so that it can accept nulls:
ALTER TABLE demographics_table
MODIFY family_income int NULL;

## Then, we convert zeroes to nulls:
UPDATE demographics_table
SET family_income = 
	CASE
		WHEN family_income = 0 THEN NULL
        ELSE family_income
        END
WHERE family_income = 0; # where statement placed to prevent making changes to other information.

## Let's check if the data was changed as expected:
SELECT
	DISTINCT(family_income)
FROM demographics_table
ORDER BY family_income;


# We continue checking for errors. We're including family_income here since the class is inferred from family_income:
SELECT
	DISTINCT(family_income)
	,class
FROM demographics_table
ORDER BY family_income;

## There are those with zero income declared, which we turned to null earlier. However, the class column still reports them as "Poor". This is misrepresentation of the data. We need to turn class data to nulls if the reported family income is 0 or null. 
## First we need to make the column accept null values:
ALTER TABLE demographics_table
MODIFY class VARCHAR(255) NULL;

## Then we update the values: 
UPDATE demographics_table
SET class =
	CASE
		WHEN family_income IS NULL THEN NULL
        ELSE class
        END
WHERE family_income IS NULL; # where statement placed to prevent making changes to other information.

# Now we check if the values were updated as expected:     
SELECT
	 class
     ,family_income
FROM demographics_table
WHERE
	1=1 
	AND family_income IS NULL;
    

# We continue checking for errors.
SELECT
	DISTINCT(employment_status)
FROM demographics_table;

SELECT
	DISTINCT(highest_educational_attainment)
FROM demographics_table; 

## There are consistent typographical errors in this column. We'll address all of them using the following:
UPDATE demographics_table
SET highest_educational_attainment = 
	(CASE
		WHEN highest_educational_attainment = 'HightSchool Graduate' THEN "High School Graduate"
        WHEN highest_educational_attainment = 'Master Graduate' THEN "Masters Degree Graduate"
        WHEN highest_educational_attainment = 'HighSchool Undergraduate' THEN "High School Undergraduate"
        WHEN highest_educational_attainment = 'student' THEN "Student"
        ELSE highest_educational_attainment
        END)
WHERE 
	highest_educational_attainment IN ('HightSchool Graduate', 'Master Graduate', 'HighSchool Undergraduate', 'student'); # where statement placed to prevent making changes to other information.
    
## Let's check if the changes were implemented correctly:
SELECT
	DISTINCT(highest_educational_attainment)
FROM demographics_table;


# Now that we've checked each column, Let's have one final look at our whole table:
SELECT
	*
FROM demographics_table
LIMIT 100;


