# Project Background
In 2022, the Catholic Church in the Philippines realized that their moral & political influence is wavering after the loss of a presidential candidate in the 2022 National Elections, despite their staunch endorsement. Losing this election to the son of a late dictator sounded the alarm bells within the clergy. The huge gap between the clergy and their constituents has never been more apparent. Their position as a moral authority in Philippine society has eroded, if not completely abolished. The people don’t listen to them anymore and their messages are not getting across. They realized that they needed expert professional help and modern technologies to bridge this gap between the clergy and the people.

We established the **Pastoral Communication Research Institute (PCRI)** to provide expert professional services to The **Diocese of Kalookan (DoK)** in fields outside their purview, including psychology, data analytics, social sciences, and information technology. PCRI’s main goal is to aid the DoK executives make better, data-driven decisions using modern technologies and scientific methodology. As one of PCRI’s founders, I brought in my expertise in psychology and data analytics.

For our first research project, the DoK asked us to answer the following questions:

	1. How many people are still active in the Church?
	2. How do we do to make people valued?
	3. How are our programs performing? What can we improve?
	4. What do people want from their leaders?

I developed a questionnaire to answer these questions. The questionnaire has 4 main parts to answer the questions above:  

	1. Church Life and Life of Faith Questionnaire
	2. Behaviorally-Anchored Love Language Questionnaire
	3. Awareness, Availment, & Satisfaction
	4. Leadership Qualities Questionnaire  

Using the Slovin’s formula, it was determined that 720 respondents were needed to get representative data from the population. We randomly selected 720 households from the cities under the jurisdiction of the Diocese of Kalookan. We trained 50+ enumerators that administered the questionnaire. 


# Data Structure & Initial Checks
Initially, all the data were stored in one table. Each item in the questionnaire occupied a column. It has 300+ fields. Before analysis, the table was checked for duplicates, assigned new ids, and split and pivoted into 10 tables. The database structure used in the analysis is presented below:

<img width="848" height="472" alt="it la questions table" src="https://github.com/user-attachments/assets/fd3af8db-acee-4de6-9d59-b9d7b9696650" />

The SQL queries used to inspect, split, and perform quality checks can be found [here](sql_files). 


# Executive Summary
## How may people are still active in church?
A good measure to differentiate active catholics is their participation in sunday mass. 85.55% (616) of participants attend at least once a year but **only 47.22% (340) go at least once a week**, which is the minimum expectation for every catholic to go to mass. In other words, **less than half of our participants can be considered active catholics**. 

_**Recommendation**: Further study is needed to determine why people do not participate in weekly sunday mass. Doing so will help us formulate better strategies in making people come back to the church on a weekly basis._

<img width="1537" height="867" alt="Life of Faith   Church Life Frequency" src="https://github.com/user-attachments/assets/6f09eb17-31ee-42fc-98fb-8bfd5ed56551" />  
  

Another good measure for catholic participation is the Sacrament of Confession. **Only 45% (324)** of catholics in the Diocese of Kalookan go to confession **at least once a year**. During Holy Week, the church aggressively encourages people to go to confession. More priests are deployed in each parish to hear confessions during this time. This annual ‘Kumpisalang Bayan’ during Holy Week drive these numbers up. 

_**Reccommendation**: Promotion of the this annual activity should continue. But more promotions and encouragement throughout the year could drive participation even higher. Right now, the Sacrament of Confession in most parishes are on by-appointment basis. Having a set time and day for confession for each parish would make it easier to promote this practice and for the people to get confessions._

<img width="1537" height="867" alt="Life of Faith   Church Life Frequency" src="https://github.com/user-attachments/assets/16722a92-65ba-4fc0-b800-b00382b19165" />


## What do we do to make people feel valued?
We were specifically asked for behavioral recommendations to answer this question; actionable and tangible behaviors that the clergy can change in order to grow closer to their constituents. 

We used the Love Languages framework by Gary Chapman to craft a behaviorally-anchored questionnaire. Respondents were asked to rank 5 different statements that represent each love language across 5 different situations (i.e. everyday, calamity, christmas, back-to-school, and town fiesta).

**Recommendations**
- **For everyday life**
	- **Quality time ranks 1st (3.43)**  
		_This means that people want the priests to go out of their churches, visit them in their neighborhoods, and spend time in getting to know them especially on ordinary days._ 
	- **Gift giving ranks 2nd (3.02)**  
		_People feel loved when they receive material things. Allocating more resources into giving away free rosaries, bibles, images, etc. while the priests visit the neighborhoods will make people feel valued._
	- **Acts of service ranks 3rd (2.92)**  
		_The clergy are encouraged to be seen taking public transportation to move about and live more similarly to their constituents to make them more relatable._ 

<img width="1537" height="867" alt="Love Language" src="https://github.com/user-attachments/assets/4fb2ddfe-678a-4e74-85a0-fb403d001d4d" />

- **During times of calamity**
	- **Gift giving ranks 1st (3.97)**  
   _The church should continue to provide in-kind support to the people during times of calamity. What needs to change is their visibility. Most of the church resources are allocated to this, but the clergy is nowhere to be seen during these times._
 	- **Words of affirmation ranks 2nd (3.09)**  
    _They should be visiting the people affected by the calamity in the evacuation centers and offering psycho-spiritual support to them, with words of affirmation being the top 2 love language in this situation. Not only should they address the people as a whole, they should converse with each family while they’re there._
	- **Acts of service ranks 3rd (2.92)**  
   _When appropriate and capable, the people also want to see the clergy join rescue operations, with acts of service being the third highest love language._

<img width="1537" height="867" alt="Love Language" src="https://github.com/user-attachments/assets/26c5578e-af4a-4991-a5ac-a8da9324cf9f" />

- **Physical touch ranks lowest in 4 out 5 situations**.  
  _The clergy is discouraged from initiating physical contact that is not within the context of their role. The ‘mano po’ gesture should still continue since it is expected from a priest to allow the people the privilege of this gesture. But anything more than that (i.e. hugging, putting hands on the shoulder, etc.) is highly discouraged and may be easily misinterpreted as inappropriate and unbecoming of a priest._

<img width="1116" height="626" alt="res of aftemation a physical touc" src="https://github.com/user-attachments/assets/7642b1db-8496-4e4d-9ae3-1cc52c53209b" />


- _The key to these behavioral changes, when implemented, is that **they should come from a place of genuine concern for their constituents**. People know whether the clergy are doing these things as a means to an end, or a place of good will and kind heartedness._ 

## How are our programs performing? What can we improve?
Currently, the programs are only assessed by the people implementing them in the parishes. Feedback from some of the participants are collected, but each parish has their own feedback form and the data are not stored digitally. This makes it hard to assess programs, evaluate effectiveness, and develop strategies at the diocesan level. 

To address these issues, we developed a standardized evaluation framework based on the DoK 5-year Pastoral plan. We used the Awareness, Availment, and Satisfaction (AAS) evaluation framework. It is a standard evaluation framework used in the Philippines to assess government services. Looking at it from a business perspective, the Catholic Church programs are services they offer to people. The parishioners are their customers, and these services need to be promoted to them. The AAS framework acts as a funnel that tracks how many people know about a service, how many people use it, and whether they’re satisfied with it or not. This framework can be used  only for this project but as a long term, sustainable framework to measure effectiveness of the implementation of recommended changes in this project.

### Awareness & Availment
In general, **74.15% of people are aware** of the church’s various services and has **availment rate of 56%**. This means that there are programs that people are not aware of and are not taking advantage of. Consequently, non-availment of these programs lead to resource stagnation and misallocation of budgets. 

**General Recommendations:**  
	_- A low availment rate could mean that the program is not promoted properly or the people don’t need it. In cases where the programs are not promoted properly (i.e. low awareness), more resources need to be allocated for the promotion of such services. 
	- If the programs are promoted properly (i.e. high awareness) but are not availed, resources should generally be taken away from that program and reallocated to others but that depends on the context of the program. 
	- Exceptions to this recommendation applies to programs such as baptism (93.47%), funeral masses (91.39%), and marriage (88.47%) which have high awareness but naturally have low availment because Catholics only avail these once or a few times at most within their lifetime._

<img width="428" height="330" alt="Awareness-Availment Funnel" src="https://github.com/user-attachments/assets/2491f881-5d3a-43bd-9fde-07e0a33cf472" />

The **Sacrament of the Eucharist has the highest awareness (94.44%)** out of all programs, followed by **baptism (93.47%)**, **funeral masses (91.39%)**, **marriage (88.47%)**, and **confession (85.56%)**. 

<img width="558" height="328" alt="awareness-availment comparison" src="https://github.com/user-attachments/assets/abcdbc8b-5f18-4cae-88bd-21009a3843e9" />

Although the numbers are high, not having 100% in Eucharist is odd. All people should know about the mass. Upon closer inspection however, the respondents who said they were not aware about the Sacrament of the Eucharist were from areas whose chapels do not offer mass on a regular basis. This makes them think that there are no masses being conducted at all in the chapels. 

_**Recommendation**: We should increase our capacity to conduct masses more consistently, not necessarily more frequently, in these chapels so that people who do want to go to mass can make it a part of their routine. In other words, making the weekday mass schedules more predictable makes it easier for people to incorporate it in their schedule._

The same pattern emerges in Confessions. **494 (80.19%) out of the 616 people who are aware of the sacrament of confession avails it**. Although most people only avail it once a year, it is likely because it’s only aggressively promoted once a year, specifically during holy week. 

_**Recommendation**: By promoting confessions more across the whole year, awareness will increase and people who are aware will be reminded to go to confession more, driving availment rates up._ 

On the other hand, the **lowest scores** are from **ecology & DRRM (49.17%)**, r**estorative justice (52.92%)**, **public affairs (53.19%)**, **bible apostolate (60.14%)**, and **family & life (61.67%)**. These programs deal with societal issues that are greatly influenced by national government and politics.  The church is losing its moral ground on these matters is partly because people are unaware that the church is doing something about these things on a regular basis, not only during election season.

_**Recommendation**: More resources should be allocated in promoting restorative justice programs so people can avail them if they need it. Ecology and public affairs are more awareness-oriented programs and do not require high availment to be effective. Increasing people’s awareness of these programs, and the achievements of these programs, along with other strategies mentioned above, will help the church bridge the gap between the clergy and their constituents. It will help stave off accusations of politicking and meddling, caring only about society during election season._

<img width="561" height="334" alt="awareness-availment comparison" src="https://github.com/user-attachments/assets/da355d17-7ce6-4563-88ba-7e114af2107c" />

### Satisfaction
In terms of satisfaction, parishioners are **generally satisfied** with the services and experience they get from church services **(3.81 - 4.63)**. But Filipinos in general tend to answer more positively to satisfaction surveys due to their culture and natural optimism. This is what’s called the acquiescence bias. Despite this, the results of questionnaire can still be used to prioritize which aspects of each program to improve. Parishioners are least satisfied with the following: 

	1. free dental surgeries in our parish (3.81)
	2. number of bibles being distributed in our parish (3.90)
	3. training for those who want to be bible animators or bible-engaged youth leaders in our parish (3.91)
	4. number of bible animators or bible-engaged youth leaders in our parish (3.91)
	5. programs for mental health (3.96)

More resources should be put into improving the quality of these services.

On the other hand, parishioners are most satisfied with the following:
 	1. distribution of relief goods of our parish for the poor during calamities (4.63)
	2. cleanliness and orderliness of the whole parish (4.58)
	3. number of masses in our parish (4.52)
	4. treatment of priest toward churchgoers (4.48)
	5. general quality of the Sacrament of Baptism (4.47)

A good portion of the church’s resources go to relief operations and the church’s day-to-day operations. This is evident in the satisfaction people get out of them.

## What do people want from their leaders?
We asked the respondents to rate different leadership qualities based on how important it is to them. The clergy wanted these to be actionable so we phrased the qualities as behaviors instead of intangible qualities. We also asked the respondents to rate these behaviors for civic leaders and spiritual leaders to see if there are any differences in their expectations. Results show that differences in expectations toward these two distinct leaders are small: 

- Civic Leader

		1. Has a plan for their constituents (4.50)
		2. Admits mistakes (4.47)
		3. Open to change and criticism (4.43)
		4. Express themselves well (4.40)
		5. Objectively analyzes relevant data before making a decision (4.36)

- Spiritual Leader

		1. Has a plan for their constituents (4.49)
		2. Finished college (4.44)
		2. Admits mistakes (4.44)
		3. Smart (4.35)
		3. Open to change and criticism (4.35)
		3. Objectively analyzes relevant data before making a decision (4.35)

On the other hand, different facets of social media is the least important for both leaders.

- Civic Leader
		
		1. Show their everyday lives through vlogs, stories, and videos (3.07)
		2. Post selfies with people on their social media accounts (3.21)
		3. Going live on social media to ask people how they are (3.37)
		4. Has presence on facebook, youtube, etc. (3.44)
		5. Report what they’re doing in social media for the sake of transparency (3.59)

- Spiritual Leader

		1. Show their everyday lives through vlogs, stories, and videos (3.08)
		2. Post selfies with peopl eon their social media accounts (3.23)
		3. Going live on social media to ask people how they are (3.48)
		4. Has presence on facebook, youtube, etc. (3.55)
		5. Report what they’re doing on social media for the sake of transparency (3.72)


_**Recommendations**: 
	- We recommend that the clergy embody these behaviors as much as they could when dealing with the public, particularly towards parishioners that are actively serving in the parishes. 
	- Allocating resources toward leadership trainings and seminars for the clergy is strongly recommended. Providing such trainings does not mean that the clergy do not have these qualities, but it will provide a baseline and a standard as to what kind of leadership is expected from them. 
	- Once a standardized training is established, we can develop KPIs and questionnaires that measure the leadership effectiveness and performance of each priest in their respective parishes. 
	- This will help us identify gaps in the priests leadership capabilities and bridge these gaps. Since different parishes have different needs, this will also enable us to assign a priest to a parish that needs the kind of leadership they offer._

# In-depth Visualization (PowerBI)
A more detailed visualization was made for this project since it was presented to multiple stakeholders, ministries, and program managers. It provides all the information that can be extracted from this project.  The visuals provided above come from this visualization. 

[Research 1 In-depth Visualization](https://app.powerbi.com/view?r=eyJrIjoiMThhMDM1YTItNjVjZS00MzE3LWI0ODMtMDMyMGRiOWM4ODA0IiwidCI6ImYzNGEzNWJkLWE2NWQtNDYwNS1iMGZhLWQyNTcxZjgzMWY1ZSIsImMiOjEwfQ%3D%3D)
