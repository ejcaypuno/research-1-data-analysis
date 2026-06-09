# Creating the table that will hold our data:
CREATE TABLE IF NOT EXISTS satisfaction_scores (
	id INT NOT NULL
    ,program VARCHAR(255) NOT NULL
    ,aware VARCHAR(255) NOT NULL
    ,avail VARCHAR(255) NULL
    ,ss_q_code VARCHAR(255) NOT NULL
    ,institution VARCHAR(255) NOT NULL
    ,score INT NULL
    ); 
    
# Filling the table with data from research_1_data_copy, while pivoting the table making it a narrow table.
INSERT INTO satisfaction_scores (id, program, aware, avail, ss_q_code, institution, score)
    
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_a", "church", sat_01_a FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_b", "church", sat_01_b FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_c", "church", sat_01_c FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_d", "church", sat_01_d FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_e", "church", sat_01_e FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_f", "church", sat_01_f FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_g", "church", sat_01_g FROM research_1_data_copy UNION ALL
	SELECT id, "eucharist", sat_01_awr, sat_01_avl , "sat_01_h", "church", sat_01_h FROM research_1_data_copy UNION ALL
	SELECT id, "confession", sat_02_awr, sat_02_avl , "sat_02_a", "church", sat_02_a FROM research_1_data_copy UNION ALL
	SELECT id, "confession", sat_02_awr, sat_02_avl , "sat_02_b", "church", sat_02_b FROM research_1_data_copy UNION ALL
	SELECT id, "confession", sat_02_awr, sat_02_avl , "sat_02_c", "church", sat_02_c FROM research_1_data_copy UNION ALL
	SELECT id, "confirmation", sat_03_awr, sat_03_avl , "sat_03_a", "church", sat_03_a FROM research_1_data_copy UNION ALL
	SELECT id, "confirmation", sat_03_awr, sat_03_avl , "sat_03_b", "church", sat_03_b FROM research_1_data_copy UNION ALL
	SELECT id, "confirmation", sat_03_awr, sat_03_avl , "sat_03_c", "church", sat_03_c FROM research_1_data_copy UNION ALL
	SELECT id, "sick", sat_04_awr, sat_04_avl , "sat_04_a", "church", sat_04_a FROM research_1_data_copy UNION ALL
	SELECT id, "sick", sat_04_awr, sat_04_avl , "sat_04_b", "church", sat_04_b FROM research_1_data_copy UNION ALL
	SELECT id, "baptism", sat_05_awr, sat_05_avl , "sat_05_a", "church", sat_05_a FROM research_1_data_copy UNION ALL
	SELECT id, "baptism", sat_05_awr, sat_05_avl , "sat_05_b", "church", sat_05_b FROM research_1_data_copy UNION ALL
	SELECT id, "baptism", sat_05_awr, sat_05_avl , "sat_05_c", "church", sat_05_c FROM research_1_data_copy UNION ALL
	SELECT id, "funeral", sat_06_awr, sat_06_a , "sat_06_a", "church", sat_06_a FROM research_1_data_copy UNION ALL
	SELECT id, "funeral", sat_06_awr, sat_06_a , "sat_06_b", "church", sat_06_b FROM research_1_data_copy UNION ALL
	SELECT id, "marriage", sat_07_awr, sat_07_avl , "sat_07_a", "church", sat_07_a FROM research_1_data_copy UNION ALL
	SELECT id, "marriage", sat_07_awr, sat_07_avl , "sat_07_b", "church", sat_07_b FROM research_1_data_copy UNION ALL
	SELECT id, "marriage", sat_07_awr, sat_07_avl , "sat_07_c", "church", sat_07_c FROM research_1_data_copy UNION ALL
	SELECT id, "facility", sat_08_awr, sat_08_avl , "sat_08_a", "church", sat_08_a FROM research_1_data_copy UNION ALL
	SELECT id, "facility", sat_08_awr, sat_08_avl , "sat_08_b", "church", sat_08_b FROM research_1_data_copy UNION ALL
	SELECT id, "facility", sat_08_awr, sat_08_avl , "sat_08_c", "church", sat_08_c FROM research_1_data_copy UNION ALL
	SELECT id, "facility", sat_08_awr, sat_08_avl , "sat_08_d", "church", sat_08_d FROM research_1_data_copy UNION ALL
	SELECT id, "facility", sat_08_awr, sat_08_avl , "sat_08_e", "church", sat_08_e FROM research_1_data_copy UNION ALL
	SELECT id, "facility", sat_08_awr, sat_08_avl , "sat_08_f", "church", sat_08_f FROM research_1_data_copy UNION ALL
	SELECT id, "others", sat_09_awr, sat_09_avl , "sat_09_a", "church", sat_09_a FROM research_1_data_copy UNION ALL
	SELECT id, "others", sat_09_awr, sat_09_avl , "sat_09_b", "church", sat_09_b FROM research_1_data_copy UNION ALL
	SELECT id, "others", sat_09_awr, sat_09_avl , "sat_09_c", "church", sat_09_c FROM research_1_data_copy UNION ALL
	SELECT id, "others", sat_09_awr, sat_09_avl , "sat_09_d", "church", sat_09_d FROM research_1_data_copy UNION ALL
	SELECT id, "youth", sat_10_awr, sat_10_avl , "sat_10_a", "church", sat_10_a FROM research_1_data_copy UNION ALL
	SELECT id, "youth", sat_10_awr, sat_10_avl , "sat_10_b", "church", sat_10_b FROM research_1_data_copy UNION ALL
	SELECT id, "youth", sat_10_awr, sat_10_avl , "sat_10_c", "church", sat_10_c FROM research_1_data_copy UNION ALL
	SELECT id, "family", sat_11_awr, sat_11_avl , "sat_11_a", "church", sat_11_a FROM research_1_data_copy UNION ALL
	SELECT id, "family", sat_11_awr, sat_11_avl , "sat_11_b", "church", sat_11_b FROM research_1_data_copy UNION ALL
	SELECT id, "family", sat_11_awr, sat_11_avl , "sat_11_c", "church", sat_11_c FROM research_1_data_copy UNION ALL
	SELECT id, "family", sat_11_awr, sat_11_avl , "sat_11_d", "church", sat_11_d FROM research_1_data_copy UNION ALL
	SELECT id, "family", sat_11_awr, sat_11_avl , "sat_11_f", "church", sat_11_f FROM research_1_data_copy UNION ALL
	SELECT id, "catechism", sat_12_awr, sat_12_avl , "sat_12_a", "church", sat_12_a FROM research_1_data_copy UNION ALL
	SELECT id, "catechism", sat_12_awr, sat_12_avl , "sat_12_b", "church", sat_12_b FROM research_1_data_copy UNION ALL
	SELECT id, "catechism", sat_12_awr, sat_12_avl , "sat_12_c", "church", sat_12_c FROM research_1_data_copy UNION ALL
	SELECT id, "bible_apostolate", sat_13_awr, sat_13_avl , "sat_13_a", "church", sat_13_a FROM research_1_data_copy UNION ALL
	SELECT id, "bible_apostolate", sat_13_awr, sat_13_avl , "sat_13_b", "church", sat_13_b FROM research_1_data_copy UNION ALL
	SELECT id, "bible_apostolate", sat_13_awr, sat_13_avl , "sat_13_c", "church", sat_13_c FROM research_1_data_copy UNION ALL
	SELECT id, "bible_apostolate", sat_13_awr, sat_13_avl , "sat_13_d", "church", sat_13_d FROM research_1_data_copy UNION ALL
	SELECT id, "bible_apostolate", sat_13_awr, sat_13_avl , "sat_13_e", "church", sat_13_e FROM research_1_data_copy UNION ALL
	SELECT id, "mass_media", sat_14_awr, sat_14_avl , "sat_14_a", "church", sat_14_a FROM research_1_data_copy UNION ALL
	SELECT id, "mass_media", sat_14_awr, sat_14_avl , "sat_14_b", "church", sat_14_b FROM research_1_data_copy UNION ALL
	SELECT id, "health_wellness", sat_15_awr, sat_15_avl , "sat_15_a", "church", sat_15_a FROM research_1_data_copy UNION ALL
	SELECT id, "health_wellness", sat_15_awr, sat_15_avl , "sat_15_b", "church", sat_15_b FROM research_1_data_copy UNION ALL
	SELECT id, "health_wellness", sat_15_awr, sat_15_avl , "sat_15_c", "church", sat_15_c FROM research_1_data_copy UNION ALL
	SELECT id, "health_wellness", sat_15_awr, sat_15_avl , "sat_15_d", "church", sat_15_d FROM research_1_data_copy UNION ALL
	SELECT id, "health_wellness", sat_15_awr, sat_15_avl , "sat_15_e", "church", sat_15_e FROM research_1_data_copy UNION ALL
	SELECT id, "educ_support", sat_16_awr, sat_16_avl , "sat_16_a", "church", sat_16_a FROM research_1_data_copy UNION ALL
	SELECT id, "educ_support", sat_16_awr, sat_16_avl , "sat_16_b", "church", sat_16_b FROM research_1_data_copy UNION ALL
	SELECT id, "educ_support", sat_16_awr, sat_16_avl , "sat_16_c", "church", sat_16_c FROM research_1_data_copy UNION ALL
	SELECT id, "educ_support", sat_16_awr, sat_16_avl , "sat_16_d", "church", sat_16_d FROM research_1_data_copy UNION ALL
	SELECT id, "ecology_drrm", sat_17_awr, sat_17_avl , "sat_17_a", "church", sat_17_a FROM research_1_data_copy UNION ALL
	SELECT id, "ecology_drrm", sat_17_awr, sat_17_avl , "sat_17_b", "church", sat_17_b FROM research_1_data_copy UNION ALL
	SELECT id, "ecology_drrm", sat_17_awr, sat_17_avl , "sat_17_c", "church", sat_17_c FROM research_1_data_copy UNION ALL
	SELECT id, "urban_poor", sat_18_awr, sat_18_avl , "sat_18_a", "church", sat_18_a FROM research_1_data_copy UNION ALL
	SELECT id, "urban_poor", sat_18_awr, sat_18_avl , "sat_18_b", "church", sat_18_b FROM research_1_data_copy UNION ALL
	SELECT id, "restore_justice", sat_19_awr, sat_19_avl , "sat_19_a", "church", sat_19_a FROM research_1_data_copy UNION ALL
	SELECT id, "restore_justice", sat_19_awr, sat_19_avl , "sat_19_b", "church", sat_19_b FROM research_1_data_copy UNION ALL
	SELECT id, "restore_justice", sat_19_awr, sat_19_avl , "sat_19_c", "church", sat_19_c FROM research_1_data_copy UNION ALL
	SELECT id, "restore_justice", sat_19_awr, sat_19_avl , "sat_19_d", "church", sat_19_d FROM research_1_data_copy UNION ALL
	SELECT id, "restore_justice", sat_19_awr, sat_19_avl , "sat_19_e", "church", sat_19_e FROM research_1_data_copy UNION ALL
	SELECT id, "public_affairs", sat_20_awr, sat_20_avl , "sat_20_a", "church", sat_20_a FROM research_1_data_copy UNION ALL
	SELECT id, "public_affairs", sat_20_awr, sat_20_avl , "sat_20_b", "church", sat_20_b FROM research_1_data_copy UNION ALL
	SELECT id, "gov_health_program", sat_21_awr, sat_21_avl , "sat_21_a", "gov", sat_21_a FROM research_1_data_copy UNION ALL
	SELECT id, "gov_health_program", sat_21_awr, sat_21_avl , "sat_21_b", "gov", sat_21_b FROM research_1_data_copy UNION ALL
	SELECT id, "gov_health_program", sat_21_awr, sat_21_avl , "sat_21_c", "gov", sat_21_c FROM research_1_data_copy UNION ALL
	SELECT id, "gov_health_program", sat_21_awr, sat_21_avl , "sat_21_d", "gov", sat_21_d FROM research_1_data_copy UNION ALL
	SELECT id, "gov_health_program", sat_21_awr, sat_21_avl , "sat_21_e", "gov", sat_21_e FROM research_1_data_copy UNION ALL
	SELECT id, "gov_scholarship", sat_22_awr, sat_22_avl , "sat_22_a", "gov", sat_22_a FROM research_1_data_copy UNION ALL
	SELECT id, "gov_scholarship", sat_22_awr, sat_22_avl , "sat_22_b", "gov", sat_22_b FROM research_1_data_copy UNION ALL
	SELECT id, "gov_scholarship", sat_22_awr, sat_22_avl , "sat_22_c", "gov", sat_22_c FROM research_1_data_copy UNION ALL
	SELECT id, "gov_als", sat_23_awr, sat_23_avl , "sat_23_a", "gov", sat_23_a FROM research_1_data_copy UNION ALL
	SELECT id, "gov_als", sat_23_awr, sat_23_avl , "sat_23_b", "gov", sat_23_b FROM research_1_data_copy UNION ALL
	SELECT id, "gov_als", sat_23_awr, sat_23_avl , "sat_23_c", "gov", sat_23_c FROM research_1_data_copy UNION ALL
	SELECT id, "gov_als", sat_23_awr, sat_23_avl , "sat_23_d", "gov", sat_23_d FROM research_1_data_copy UNION ALL
	SELECT id, "gov_clinic", sat_24_awr, sat_24_avl , "sat_24_a", "gov", sat_24_a FROM research_1_data_copy UNION ALL
	SELECT id, "gov_clinic", sat_24_awr, sat_24_avl , "sat_24_b", "gov", sat_24_b FROM research_1_data_copy UNION ALL
	SELECT id, "gov_sports", sat_25_awr, sat_25_avl , "sat_25_a", "gov", sat_25_a FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_a", "gov", sat_26_a FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_b", "gov", sat_26_b FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_c", "gov", sat_26_c FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_d", "gov", sat_26_d FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_e", "gov", sat_26_e FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_f", "gov", sat_26_f FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_g", "gov", sat_26_g FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_h", "gov", sat_26_h FROM research_1_data_copy UNION ALL
	SELECT id, "gov_social_welfare", sat_26_awr, sat_26_avl , "sat_26_i", "gov", sat_26_i FROM research_1_data_copy;

# Changing the values to make it more straightforward:
UPDATE satisfaction_scores
SET aware = (
	CASE
		WHEN aware = "true" THEN "aware"
        WHEN aware = "false" THEN "not aware"
        ELSE aware
        END);

# Checking if changes were made as expected:
SELECT
	DISTINCT(aware)
FROM satisfaction_scores;

# Changing the values to make it more straightforward and addressing encoding errors (i.e. 4, 5):
UPDATE satisfaction_scores
SET avail = (
	CASE
		WHEN avail = 1 THEN "never availed"
		WHEN avail = 2 THEN "sometimes availed"
        WHEN avail = 3 THEN "often availed"
        WHEN avail = 4 THEN null
        WHEN avail = 5 THEN null
        WHEN avail = 0 THEN null
        ELSE avail
        END);

# Checking if changes were made as expected:
SELECT
	DISTINCT(avail)
FROM satisfaction_scores;

# If a person is not aware of a service, then they could not have availed it, and they should have no satisfaction score:
UPDATE satisfaction_scores
SET 
	avail = NULL
WHERE 
	aware = "not aware";

UPDATE satisfaction_scores
SET 
	score = NULL
WHERE 
	aware = "not aware";


# If a person is aware of a service but have never availed it, then they should have no satisfaction score:
UPDATE satisfaction_scores
SET score = NULL
WHERE 
	avail = NULL 
	OR avail = "never availed";
	
# Changing the 0 satisfaction score to null so that it gets excluded from the computation of AVG. 
UPDATE satisfaction_scores
SET score = NULL
WHERE score = 0; 

# Checking if there are invalid cases:
SELECT
	*
FROM satisfaction_scores
WHERE 
	aware = "not aware"
    AND score IS NOT NULL;

SELECT
	*
FROM satisfaction_scores
WHERE 
	aware = "not aware"
    AND score IS NOT NULL;


# Checking everything one last time:
SELECT 
	*
FROM satisfaction_scores
LIMIT 1000;


# Creating the question table:
CREATE TABLE IF NOT EXISTS ss_questions_table
(ss_q_code VARCHAR(255) NOT NULL
,question VARCHAR (255) NOT NULL
);

# Injecting values into our table:
INSERT INTO ss_questions_table (ss_q_code, question)
VALUES
("sat_01_a", "number of masses in our parish")
,("sat_01_b", "general quality of my experience in attending mass")
,("sat_01_c", "amount of knowledge i get from the priest’s homily")
,("sat_01_d", "interestingness of the priest’s homily")
,("sat_01_e", "helpfulness of the priest’s homily in my faith")
,("sat_01_f", "the priest’s homily helps me in my daily life")
,("sat_01_g", "helpfulness of the priest’s homily in my faith")
,("sat_01_h", "priest’s talking speed and clarity")
,("sat_02_a", "process of getting a schedule for confession in our parish")
,("sat_02_b", "orientations, seminars, etc. that prepare me for the sacrament of confession")
,("sat_02_c", "general quality of my confession")
,("sat_03_a", "process of getting a schedule for confirmation in our parish")
,("sat_03_b", "orientations, seminars, etc. that prepare me for the sacrament of confirmation")
,("sat_03_c", "general quality of the sacrement of confirmation")
,("sat_04_a", "process of getting a schedule for the sacrament of the anointing of the sick in our parish")
,("sat_04_b", "general quality of the sacrament of the anointing of the sick")
,("sat_05_a", "process of getting a schedule for baptism")
,("sat_05_b", "orientations, seminars, etc. that prepare me for the sacrament of baptism")
,("sat_05_c", "general quality of the sacrament of baptism")
,("sat_06_a", "process of getting a schedule for a priest to conduct a funeral mass from our parish")
,("sat_06_b", "general quality of the funeral mass")
,("sat_07_a", "process of getting a schedule for a wedding")
,("sat_07_b", "orientations, seminars, etc. that prepare us for the sacrament of matrimony")
,("sat_07_c", "general quality of the sacrament of matrimony")
,("sat_08_a", "cleanliness and orderliness of the whole parish")
,("sat_08_b", "number of restrooms in our parish")
,("sat_08_c", "cleanliness and orderliness of the restrooms in our parish")
,("sat_08_d", "quality of the sound system or speaker inside the parish")
,("sat_08_e", "number of chairs inside the parish")
,("sat_08_f", "process of obtaining documents like baptismal certificates, marriage certificates, etc.")
,("sat_09_a", "treatment of the parish staff toward churchgoers")
,("sat_09_b", "treatment of the priest toward churchgoers")
,("sat_09_c", "priest’s frequency in going around the community")
,("sat_09_d", "process of bringing grievances to the priest and the parish")
,("sat_10_a", "regular meetings of the youth in our parish")
,("sat_10_b", "encouragement of the youth to be active members of the church")
,("sat_10_c", "youth programs for the prevention of illegal drug use")
,("sat_11_a", "getting a schedule for marriage counseling in our parish")
,("sat_11_b", "encouragement of the youth to be active members of the church")
,("sat_11_c", "youth programs for the prevention of illegal drug use")
,("sat_11_d", "mass weddings (kasalang bayan)")
,("sat_11_f", "programs for couples and families")
,("sat_12_a", "number of catechists in our parish or community")
,("sat_12_b", "training for those who want to be catechists in our parish")
,("sat_12_c", "quality of catechists’ teaching methods in public schools")
,("sat_13_a", "number of bible animators or bible-engaged youth leaders in our parish")
,("sat_13_b", "training for those who want to be bible animators or bible-engaged youth leaders in our parish")
,("sat_13_c", "conducting the parish youth bible encounter in our parish")
,("sat_13_d", "number of bibles being distributed in our parish")
,("sat_13_e", "availability of programs such as bible sharing, etc.")
,("sat_14_a", "presence of our parish in print media, social media, radio, television, etc.")
,("sat_14_b", "quality of mass in our parish in facebook, youtube, and other online media outlets")
,("sat_15_a", "free medical consultations in our parish")
,("sat_15_b", "free dental consultations in our parish")
,("sat_15_c", "free dental surgeries in our parish")
,("sat_15_d", "free medicines being distributed in our parish")
,("sat_15_e", "feeding program in our parish")
,("sat_16_a", "full scholarship programs in our parish")
,("sat_16_b", "financial assistance for students in our parish")
,("sat_16_c", "distribution of school supplies to students in our parish")
,("sat_16_d", "programs for mental health")
,("sat_17_a", "segregation of trash in our parish")
,("sat_17_b", "campaign about climate change in our parish")
,("sat_17_c", "avoidance of the use of plastic bottles, utensils, etc.")
,("sat_18_a", "distribution of relief goods of our parish for the poor during calamities")
,("sat_18_b", "regular visits of priests and/or parish staff to assess the conditions of indigenous peoples in their communities")
,("sat_19_a", "distribution of relief goods to the imprisoned")
,("sat_19_b", "distribution of relief goods to the youth juvenile detention centers")
,("sat_19_c", "conducting masses inside prisons")
,("sat_19_d", "programs for the youth discouraging them to participate in illegal activities")
,("sat_19_e", "legal assistance for prisoners")
,("sat_20_a", "relationship of the state and church")
,("sat_20_b", "guidance provided by the church in voting and politics")
,("sat_21_a", "free medical consultations")
,("sat_21_b", "free dental consultations in our parish")
,("sat_21_c", "free dental surgeries in our parish")
,("sat_21_d", "free medicines being distributed in our parish")
,("sat_21_e", "feeding and nutrition programs")
,("sat_22_a", "full scholarship programs of the local government")
,("sat_22_b", "financial assistance of the local government unit to students")
,("sat_22_c", "distribution of school supplies to the students by the local government")
,("sat_23_a", "free gadgets from the local government unit for online learning")
,("sat_23_b", "modules from the local government for asynchronus learning")
,("sat_23_c", "quality of online or asynchronus learning")
,("sat_23_d", "programs such as evening school, open school, and special education")
,("sat_24_a", "medical clinic inside the school")
,("sat_24_b", "feeding program inside the schol")
,("sat_25_a", "facilities for various sports and recreation activities")
,("sat_26_a", "child and youth welfare programs")
,("sat_26_b", "pwd welfare program")
,("sat_26_c", "older persons/senior citizens programs")
,("sat_26_d", "women's welfare programs")
,("sat_26_e", "drug rehabilitation programs")
,("sat_26_f", "mental health programs")
,("sat_26_g", "programs for prisoners or restorative justice")
,("sat_26_h", "programs for the homeless")
,("sat_26_i", "programs for informal settlers");

# Checking if the table is as expected:
SELECT *
FROM ss_questions_table;

# Checking if it will work as intended:
SELECT
*
FROM satisfaction_scores ss 
	JOIN ss_questions_table st
    ON ss.ss_q_code = st.ss_q_code;


