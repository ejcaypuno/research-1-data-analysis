/* For the leadership qualities part of the questionnaire, the interpretation of the scores 
 rely heavily on the questions tied to it. There isn't much structure to it. For us not to 
 lose this context, and to save space, we're going to introduce a question code column beside 
 our scores and make a separate table for the questions themselves. That way, the questions 
 don't repeat multiple times in the main table, thus saving us space and can just be joined when needed. */ 

-- Creating the main table:
CREATE TABLE IF NOT EXISTS leader_qualities_scores (
	id INT NOT NULL
    ,leader_type VARCHAR(255) NOT NULL
    ,lq_q_code VARCHAR(255) NOT NULL
    ,score INT NOT NULL
    );
    
# Injecting and pivoting the data:
INSERT INTO leader_qualities_scores (id, leader_type, lq_q_code, score)
	SELECT  id, "spiritual", "lq_01", lq_1_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_01", lq_1_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_02", lq_2_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_02", lq_2_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_03", lq_3_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_03", lq_3_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_04", lq_4_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_04", lq_4_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_05", lq_5_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_05", lq_5_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_06", lq_6_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_06", lq_6_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_07", lq_7_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_07", lq_7_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_08", lq_8_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_08", lq_8_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_09", lq_9_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_09", lq_9_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_10", lq_10_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_10", lq_10_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_11", lq_11_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_11", lq_11_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_12", lq_12_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_12", lq_12_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_13", lq_13_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_13", lq_13_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_14", lq_14_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_14", lq_14_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_15", lq_15_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_15", lq_15_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_16", lq_16_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_16", lq_16_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_17", lq_17_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_17", lq_17_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_18", lq_18_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_18", lq_18_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_19", lq_19_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_19", lq_19_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_20", lq_20_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_20", lq_20_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_21", lq_21_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_21", lq_21_civ FROM research_1_data_copy UNION ALL
	SELECT  id, "spiritual", "lq_22", lq_22_spr FROM research_1_data_copy UNION ALL
	SELECT  id, "civic", "lq_22", lq_22_civ FROM research_1_data_copy;
    
-- Checking if data is as expected:
SELECT 
	*
FROM leader_qualities_scores;

-- Checking for range constraints:
SELECT 
	DISTINCT(score)
FROM leader_qualities_scores;


-- Creating leadership quality questions table:
CREATE TABLE IF NOT EXISTS lq_questions_table (
	lq_q_code VARCHAR(255) NOT NULL
    ,lq_question VARCHAR(255) NOT NULL
    );
    
-- Injecting values:
INSERT INTO lq_questions_table (lq_q_code, lq_question)
 VALUES
	("lq_01", "finished college")
	,("lq_02", "smart")
	,("lq_03", "has a lot of achievements related to their work")
	,("lq_04", "has a plan for their constituents")
	,("lq_05", "talks smart")
	,("lq_06", "has a lot of experience with their work")
	,("lq_07", "express themselves well")
	,("lq_08", "open to change and criticism")
	,("lq_09", "asks for feedback to improve their dealings with others")
	,("lq_10", "encourages others to voice opposing points of view")
	,("lq_11", "objectively analyzes relevant data before making a decision")
	,("lq_12", "admits mistakes")
	,("lq_13", "openly shares information with others")
	,("lq_14", "reporting what they're doing on social media for the sake of transparency")
	,("lq_15", "going live on social media to ask people how they are")
	,("lq_16", "posts selfies with people on their social media accounts")
	,("lq_17", "show their everyday lives through vlogs, stories, and videos")
	,("lq_18", "has a presence on facebook, youtube, etc.")
	,("lq_19", "their office is open and easily reachable")
	,("lq_20", "social media accounts reply quickly")
	,("lq_21", "easy to schedule meeting with their office")
	,("lq_22", "easy to find in times of calamity or crisis");

-- Checking the table:
SELECT *
FROM lq_questions_table;

-- Checking if the joins work as intended: 
SELECT
	*
FROM leader_qualities_scores lt 
	JOIN lq_questions_table lq 
	ON lt.lq_q_code = lq.lq_q_code;
	