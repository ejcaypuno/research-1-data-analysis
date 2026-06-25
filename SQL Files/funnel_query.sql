 /*
 Computing for funnel conversion rates from total poplulation to awareness, 
 awareness to availment, and total population to availment
 */
 
CREATE TABLE funnel_table AS 
WITH cte_1 AS (
SELECT
	ss.program
	,(COUNT(DISTINCT(ss.id))) AS total_participants
	,aw.aware_count
	,av.avail_count
FROM satisfaction_scores ss 
	JOIN (SELECT program, COUNT(DISTINCT(id)) AS aware_count FROM satisfaction_scores WHERE aware = "aware" GROUP BY program) 
		AS aw
		ON ss.program = aw.program
	 JOIN (SELECT program, COUNT(DISTINCT(id)) AS avail_count FROM satisfaction_scores WHERE avail IN ("sometimes availed", "often availed") GROUP BY program) 
		AS av
		ON ss.program = av.program
GROUP BY program)


SELECT
	program
	,total_participants
	,(aware_count / total_participants * 100) AS aware_percent
	,(avail_count / aware_count * 100) AS avail_percent
	,(avail_count / total_participants * 100) AS funnel_percent
FROM cte_1
GROUP BY program;
	

-- For PowerBI:
CREATE TABLE funnel_table_2 AS (
SELECT
	ss.program
	,(COUNT(DISTINCT(ss.id))) AS total_participants
	,aware.aware_count
	,avail.avail_count
FROM satisfaction_scores ss 
	JOIN (SELECT program, COUNT(DISTINCT(id)) AS aware_count FROM satisfaction_scores WHERE aware = "aware" GROUP BY program) 
		AS aware
		ON ss.program = aware.program
	 JOIN (SELECT program, COUNT(DISTINCT(id)) AS avail_count FROM satisfaction_scores WHERE avail IN ("sometimes availed", "often availed") GROUP BY program) 
		AS avail
		ON ss.program = avail.program
GROUP BY program);
	


CREATE TABLE IF NOT EXISTS funnel_final_2 (
	program VARCHAR(255) NOT NULL
	,event_type VARCHAR(255) NOT NULL
	,value INT NOT NULL
);

INSERT INTO funnel_final_2 (program, event_type, value)
	SELECT program, "total_participants", total_participants FROM funnel_table_2 UNION ALL
	SELECT program, "aware", aware_count are FROM funnel_table_2 UNION ALL
	SELECT program, "avail", avail_count FROM funnel_table_2;

-- Now that we've checked that the results in PowerBI and in SQL are the same, we can drop the intermediary tables:
DROP TABLE funnel_table;
DROP TABLE funnel_table_2;






