# Right now, our table is too wide. I want to make it a narrow table so it's easier to work with. Here, we're going to pivot our table so that we only have a few columns and our observations will be on our rows. 

# Let's first create the table that's going to hold our data:
CREATE TABLE IF NOT EXISTS love_language_scores (
id INT NOT NULL
,situation VARCHAR(255) NOT NULL
,leader_type VARCHAR(255) NOT NULL
,love_language VARCHAR(255) NOT NULL
,score INT NOT NULL
);

# We then extract, transform, and pivot the information from research_1_data_copy into this table:
INSERT INTO love_language_scores (id, situation, leader_type, love_language, score)

SELECT id, 'calamity', 'spiritual', 'gift giving',ll_1_gg_spr FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'civic', 'gift giving',ll_1_gg_civ FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'spiritual', 'words of affirmation',ll_1_wa_spr FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'civic', 'words of affirmation',ll_1_wa_civ FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'spiritual', 'physical touch',ll_1_pt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'civic', 'physical touch',ll_1_pt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'spiritual', 'quality time',ll_1_qt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'civic', 'quality time',ll_1_qt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'spiritual', 'acts of service',ll_1_as_spr FROM research_1_data_copy UNION ALL
SELECT id, 'calamity', 'civic', 'acts of service',ll_1_as_civ FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'spiritual', 'gift giving',ll_2_gg_spr FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'civic', 'gift giving',ll_2_gg_civ FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'spiritual', 'words of affirmation',ll_2_wa_spr FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'civic', 'words of affirmation',ll_2_wa_civ FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'spiritual', 'physical touch',ll_2_pt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'civic', 'physical touch',ll_2_pt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'spiritual', 'quality time',ll_2_qt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'civic', 'quality time',ll_2_qt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'spiritual', 'acts of service',ll_2_as_spr FROM research_1_data_copy UNION ALL
SELECT id, 'back to school', 'civic', 'acts of service',ll_2_as_civ FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'spiritual', 'gift giving',ll_3_gg_spr FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'civic', 'gift giving',ll_3_gg_civ FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'spiritual', 'words of affirmation',ll_3_wa_spr FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'civic', 'words of affirmation',ll_3_wa_civ FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'spiritual', 'physical touch',ll_3_pt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'civic', 'physical touch',ll_3_pt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'spiritual', 'quality time',ll_3_qt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'civic', 'quality time',ll_3_qt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'spiritual', 'acts of service',ll_3_as_spr FROM research_1_data_copy UNION ALL
SELECT id, 'christmas', 'civic', 'acts of service',ll_3_as_civ FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'spiritual', 'gift giving',ll_4_gg_spr FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'civic', 'gift giving',ll_4_gg_civ FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'spiritual', 'words of affirmation',ll_4_wa_spr FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'civic', 'words of affirmation',ll_4_wa_civ FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'spiritual', 'physical touch',ll_4_pt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'civic', 'physical touch',ll_4_pt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'spiritual', 'quality time',ll_4_qt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'civic', 'quality time',ll_4_qt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'spiritual', 'acts of service',ll_4_as_spr FROM research_1_data_copy UNION ALL
SELECT id, 'town fiesta', 'civic', 'acts of service',ll_4_as_civ FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'spiritual', 'gift giving',ll_5_gg_spr FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'civic', 'gift giving',ll_5_gg_civ FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'spiritual', 'words of affirmation',ll_5_wa_spr FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'civic', 'words of affirmation',ll_5_wa_civ FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'spiritual', 'physical touch',ll_5_pt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'civic', 'physical touch',ll_5_pt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'spiritual', 'quality time',ll_5_qt_spr FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'civic', 'quality time',ll_5_qt_civ FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'spiritual', 'acts of service',ll_5_as_spr FROM research_1_data_copy UNION ALL
SELECT id, 'everyday', 'civic', 'acts of service',ll_5_as_civ FROM research_1_data_copy;

# Let's check the data we just pivoted: 
SELECT
	*
FROM love_language_scores
LIMIT 100;


# I want to check if the scores are within expected ranges (i.e. 1 to 5)
SELECT
	DISTINCT (score)
FROM love_language_scores;


# The love languages portion of the questionnaire requires the respondent to rank several statements based on the importance. Since it's a forced-ranking response, there should be no repeating numbers witin each situation presented. We're going to check which ids have valid responses by checking if the total of scores is 15 (i.e. 1 + 2 + 3 + 4 + 5) and checking if the responses are distinct from one another within a situation.
# We compute the sum of scores and the count of distinct scores per id, per situation, per leader type.
WITH score_check_1 AS (
SELECT
	DISTINCT(id)
    ,leader_type
    ,situation
    ,SUM(score) AS score_sum
    ,COUNT(DISTINCT score) AS score_count
FROM love_language_scores 
GROUP BY id, situation, leader_type
ORDER BY id),

# We then filter out those that do not add up to our expected values, which is a sum of 15 (i.e. 1+2+3+4+5) and a count of 5 (i.e. 1, 2, 3, 4, 5; no repetitions)
score_check_2 AS (
SELECT 
	id
    ,score_sum
    ,score_count
FROM score_check_1
HAVING 
	score_sum = 15 
    AND score_count = 5)

# Since there are multiple situations and leader types, we need to get our expected values in all of the situations and leader types to consider them as valid. 
# There are 2 leader types (civic and spiritual) and 5 situations, the valid count should be 10 (2 types x 5 situations). 
, score_check_3 AS (SELECT 
	id
FROM score_check_2
GROUP BY id
HAVING
	COUNT(id) = 10)
    
# Let's see how many respondents are valid:
SELECT
	COUNT(*)
FROM score_check_3;

# There are 291 valid responses in the dataset. 
# Let's count the invalid ones just to check if it all counts to 720
WITH score_check_1 AS (
SELECT
	DISTINCT(id)
    ,leader_type
    ,situation
    ,SUM(score) AS score_sum
    ,COUNT(DISTINCT score) AS score_count
FROM love_language_scores 
GROUP BY id, situation, leader_type
ORDER BY id),

score_check_2 AS (
SELECT 
	id
    ,score_sum
    ,score_count
FROM score_check_1
HAVING 
	score_sum <> 15 
    OR score_count <> 5)

# Let's see how many respondents are invalid:
SELECT
	COUNT(DISTINCT (id))
FROM score_check_2;

#There are 429 invalid responses. Adding the 291 valid responses gives us 720, which means that our filtering system worked. 
# I want this information to be permanent and be reflected in the table so I'm going to make a column that ties the id whether it's valid or not
ALTER TABLE love_language_scores
ADD valid_check VARCHAR(255) NOT NULL;

# Using the list of valid ids we obtained above, we're going to fill the newly made column with "valid" or "invalid"
UPDATE love_language_scores
SET valid_check = (
	CASE
		WHEN id IN (WITH score_check_1 AS (SELECT
												DISTINCT(id)
												,leader_type
												,situation
												,SUM(score) AS score_sum
												,COUNT(DISTINCT score) AS score_count
											FROM love_language_scores 
											GROUP BY id, situation, leader_type
											ORDER BY id),

											score_check_2 AS (
											SELECT 
												id
												,score_sum
												,score_count
											FROM score_check_1
											HAVING 
												score_sum = 15 
												AND score_count = 5)

											SELECT 
												id
											FROM score_check_2
											GROUP BY id
											HAVING
												COUNT(id) = 10)
		THEN "valid"
		ELSE "invalid"
		END) ;

# Let's check if we have the right number of valid responses:
SELECT
	COUNT(DISTINCT id) 
FROM love_language_scores
WHERE valid_check = "valid";
# The output is 291, which is correct.

# Now the invalid responses:
SELECT
	COUNT(DISTINCT id) 
FROM love_language_scores
WHERE valid_check = "invalid";
# The output is 429, which is correct.alter


# Now you might be asking "Why don't you just eliminate the invalid responses from the table?". This is because I'm interested in seeing the differences in results between a likert scale and a ranking scale. I'm going to do an analysis on both and see if the results are the same or they're different. 


												


												
