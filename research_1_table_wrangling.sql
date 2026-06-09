# Disclaimer: I have cleaned this data before in Excel and analyzed it in Jamovi for a research project. It's composed of 700+ rows and cleaning it in Excel might be a better, more efficient idea. However, I'd like to challenge myself today and show off my SQL skills and clean this data just in SQL.
# In data cleaning, I like to look at all the columns and write the expected data type and their expected constraints. After writing them down, I start checking if the columns are up to my expectations. I also want to rename the columns so that it's more standardized and has more context. 

#  I'm going to make a duplicate of the whole table do that the original remains intact:

CREATE TABLE IF NOT EXISTS
research_1_data_copy 
AS SELECT * FROM research_1_data;


# Now, we're going to change the column names of the duplicate table to make our succeeding code and analysis easier:
## Note: I used Excel to create and standardize the new column names before putting it here so that I can check early for errors. 
ALTER TABLE research_1_data_copy
	RENAME COLUMN `CTRL #` TO id
	,RENAME COLUMN `REGION` TO region
	,RENAME COLUMN `CITY` TO city
	,RENAME COLUMN `BARANGAY` TO brgy
	,RENAME COLUMN `SEX` TO sex
	,RENAME COLUMN `MARITAL STATUS` TO marital_status
	,RENAME COLUMN `AGE` TO age
	,RENAME COLUMN `AGE BRACKET` TO age_bracket
	,RENAME COLUMN `FAMILY INCOME` TO family_income
	,RENAME COLUMN `CLASS` TO class
	,RENAME COLUMN `EMPLOYMENT STATUS` TO employment_status
	,RENAME COLUMN `HIGHEST EDUCATIONAL ATTAINMENT` TO highest_educational_attainment
	,RENAME COLUMN `2.1-1` TO lof_01_01_phys_sun_mass_freq
	,RENAME COLUMN `2.1-2` TO lof_01_02_phys_sun_mass
	,RENAME COLUMN `2.1-3` TO lof_01_03_occasion
	,RENAME COLUMN `2.2-1` TO lof_02_01_ol_sun_mass_freq
	,RENAME COLUMN `2.2-2` TO lof_02_02_ol_mass
	,RENAME COLUMN `2.2-3` TO lof_02_03_occasion
	,RENAME COLUMN `2.3-1` TO lof_03_01_phys_daily_mass_freq
	,RENAME COLUMN `2.3-2` TO lof_03_02_phys_daily_mass
	,RENAME COLUMN `2.3-3` TO lof_03_03_occasion
	,RENAME COLUMN `2.4-1` TO lof_04_01_ol_daily_mass_freq
	,RENAME COLUMN `2.4-2` TO lof_04_02_ol_daily_mass
	,RENAME COLUMN `2.4-3` TO lof_04_03_occasion
	,RENAME COLUMN `2.5-1` TO lof_05_01_station_of_the_cross
	,RENAME COLUMN `2.5-2` TO lof_05_02_candle_lighting
	,RENAME COLUMN `2.5-3` TO lof_05_03_procession
	,RENAME COLUMN `2.5-4` TO lof_05_04_penitensya
	,RENAME COLUMN `2.5-5` TO lof_05_05_devotion
	,RENAME COLUMN `2.6-1` TO lof_06_01_rosary
	,RENAME COLUMN `2.6-2` TO lof_06_02_scapular
	,RENAME COLUMN `2.6-3` TO lof_06_03_bvm_image
	,RENAME COLUMN `2.7-1` TO lof_07_01_altar
	,RENAME COLUMN `2.7-2` TO lof_07_02_altar_images
	,RENAME COLUMN `2.8` TO lof_08_00_bible
	,RENAME COLUMN `2.9-1` TO lof_09_01_bible_reading
	,RENAME COLUMN `2.9-2` TO lof_09_02_bible_reading_freq
	,RENAME COLUMN `2.10-1` TO lof_10_01_pray_place
	,RENAME COLUMN `2.10-2` TO lof_10_02_devote_place
	,RENAME COLUMN `2.10-3` TO lof_10_03_mass_place
	,RENAME COLUMN `3.1-1` TO cl_1_1_0_servant
	,RENAME COLUMN `3.1-2` TO cl_1_2_0_ministry
	,RENAME COLUMN `3.2.1-1` TO cl_2_1_1_sun_mass_freq
	,RENAME COLUMN `3.2.1-2` TO cl_2_1_2_sun_mass_freq
	,RENAME COLUMN `3.2.1-3` TO cl_2_1_3_sun_mass_mode
	,RENAME COLUMN `3.2.2-1` TO cl_2_2_1_wkd_mass_freq
	,RENAME COLUMN `3.2.2-2` TO cl_2_2_2_wkd_mass_
	,RENAME COLUMN `3.2.3-1` TO cl_2_3_1_stations_freq_int
	,RENAME COLUMN `3.2.3-2` TO cl_2_3_2_stations_freq
	,RENAME COLUMN `3.2.4-1` TO cl_2_4_1_rosary_freq
	,RENAME COLUMN `3.2.4-2` TO cl_2_4_2_rosary_freq
	,RENAME COLUMN `3.2.5-1` TO cl_2_5_1_novena_freq
	,RENAME COLUMN `3.2.5-2` TO cl_2_5_2_novena_freq
	,RENAME COLUMN `3.2.6-1` TO cl_2_6_1_confess_freq
	,RENAME COLUMN `3.2.6-2` TO cl_2_6_2_confess_freq
	,RENAME COLUMN `3.2.7-1` TO cl_2_7_1_bibstudy_freq
	,RENAME COLUMN `3.2.7-2` TO cl_2_7_2_bibstudy_freq
	,RENAME COLUMN `3.3` TO cl_3_3_0_church_visited
	,RENAME COLUMN `I 4.1.a-1` TO ll_1_gg_spr
	,RENAME COLUMN `I 4.1.a-2` TO ll_1_gg_civ
	,RENAME COLUMN `I 4.1.b-1` TO ll_1_wa_spr
	,RENAME COLUMN `I 4.1.b-2` TO ll_1_wa_civ
	,RENAME COLUMN `I 4.1.c-1` TO ll_1_pt_spr
	,RENAME COLUMN `I 4.1.c-2` TO ll_1_pt_civ
	,RENAME COLUMN `I 4.1.d-1` TO ll_1_qt_spr
	,RENAME COLUMN `I 4.1.d-2` TO ll_1_qt_civ
	,RENAME COLUMN `I 4.1.e-1` TO ll_1_as_spr
	,RENAME COLUMN `I 4.1.e-2` TO ll_1_as_civ
	,RENAME COLUMN `I 4.2.a-1` TO ll_2_gg_spr
	,RENAME COLUMN `I 4.2.a-2` TO ll_2_gg_civ
	,RENAME COLUMN `I 4.2.b-1` TO ll_2_wa_spr
	,RENAME COLUMN `I 4.2.b-2` TO ll_2_wa_civ
	,RENAME COLUMN `I 4.2.c-1` TO ll_2_pt_spr
	,RENAME COLUMN `I 4.2.c-2` TO ll_2_pt_civ
	,RENAME COLUMN `I 4.2.d-1` TO ll_2_qt_spr
	,RENAME COLUMN `I 4.2.d-2` TO ll_2_qt_civ
	,RENAME COLUMN `I 4.2.e-1` TO ll_2_as_spr
	,RENAME COLUMN `I 4.2.e-2` TO ll_2_as_civ
	,RENAME COLUMN `I 4.3.a-1` TO ll_3_gg_spr
	,RENAME COLUMN `I 4.3.a-2` TO ll_3_gg_civ
	,RENAME COLUMN `I 4.3.b-1` TO ll_3_wa_spr
	,RENAME COLUMN `I 4.3.b-2` TO ll_3_wa_civ
	,RENAME COLUMN `I 4.3.c-1` TO ll_3_pt_spr
	,RENAME COLUMN `I 4.3.c-2` TO ll_3_pt_civ
	,RENAME COLUMN `I 4.3.d-1` TO ll_3_qt_spr
	,RENAME COLUMN `I 4.3.d-2` TO ll_3_qt_civ
	,RENAME COLUMN `I 4.3.e-1` TO ll_3_as_spr
	,RENAME COLUMN `I 4.3.e-2` TO ll_3_as_civ
	,RENAME COLUMN `I 4.4.a-1` TO ll_4_gg_spr
	,RENAME COLUMN `I 4.4.a-2` TO ll_4_gg_civ
	,RENAME COLUMN `I 4.4.b-1` TO ll_4_wa_spr
	,RENAME COLUMN `I 4.4.b-2` TO ll_4_wa_civ
	,RENAME COLUMN `I 4.4.c-1` TO ll_4_pt_spr
	,RENAME COLUMN `I 4.4.c-2` TO ll_4_pt_civ
	,RENAME COLUMN `I 4.4.d-1` TO ll_4_qt_spr
	,RENAME COLUMN `I 4.4.d-2` TO ll_4_qt_civ
	,RENAME COLUMN `I 4.4.e-1` TO ll_4_as_spr
	,RENAME COLUMN `I 4.4.e-2` TO ll_4_as_civ
	,RENAME COLUMN `I 4.5.a-1` TO ll_5_gg_spr
	,RENAME COLUMN `I 4.5.a-2` TO ll_5_gg_civ
	,RENAME COLUMN `I 4.5.b-1` TO ll_5_wa_spr
	,RENAME COLUMN `I 4.5.b-2` TO ll_5_wa_civ
	,RENAME COLUMN `I 4.5.c-1` TO ll_5_pt_spr
	,RENAME COLUMN `I 4.5.c-2` TO ll_5_pt_civ
	,RENAME COLUMN `I 4.5.d-1` TO ll_5_qt_spr
	,RENAME COLUMN `I 4.5.d-2` TO ll_5_qt_civ
	,RENAME COLUMN `I 4.5.e-1` TO ll_5_as_spr
	,RENAME COLUMN `I 4.5.e-2` TO ll_5_as_civ
	,RENAME COLUMN `Col97` TO lq_1_spr
	,RENAME COLUMN `Col98` TO lq_1_civ
	,RENAME COLUMN `Col99` TO lq_2_spr
	,RENAME COLUMN `Col100` TO lq_2_civ
	,RENAME COLUMN `Col101` TO lq_3_spr
	,RENAME COLUMN `Col102` TO lq_3_civ
	,RENAME COLUMN `Col103` TO lq_4_spr
	,RENAME COLUMN `Col104` TO lq_4_civ
	,RENAME COLUMN `Col105` TO lq_5_spr
	,RENAME COLUMN `Col106` TO lq_5_civ
	,RENAME COLUMN `Col107` TO lq_6_spr
	,RENAME COLUMN `Col108` TO lq_6_civ
	,RENAME COLUMN `Col109` TO lq_7_spr
	,RENAME COLUMN `Col110` TO lq_7_civ
	,RENAME COLUMN `Col111` TO lq_8_spr
	,RENAME COLUMN `Col112` TO lq_8_civ
	,RENAME COLUMN `Col113` TO lq_9_spr
	,RENAME COLUMN `Col114` TO lq_9_civ
	,RENAME COLUMN `Col115` TO lq_10_spr
	,RENAME COLUMN `Col116` TO lq_10_civ
	,RENAME COLUMN `Col117` TO lq_11_spr
	,RENAME COLUMN `Col118` TO lq_11_civ
	,RENAME COLUMN `Col119` TO lq_12_spr
	,RENAME COLUMN `Col120` TO lq_12_civ
	,RENAME COLUMN `Col121` TO lq_13_spr
	,RENAME COLUMN `Col122` TO lq_13_civ
	,RENAME COLUMN `Col123` TO lq_14_spr
	,RENAME COLUMN `Col124` TO lq_14_civ
	,RENAME COLUMN `Col125` TO lq_15_spr
	,RENAME COLUMN `Col126` TO lq_15_civ
	,RENAME COLUMN `Col127` TO lq_16_spr
	,RENAME COLUMN `Col128` TO lq_16_civ
	,RENAME COLUMN `Col129` TO lq_17_spr
	,RENAME COLUMN `Col130` TO lq_17_civ
	,RENAME COLUMN `Col131` TO lq_18_spr
	,RENAME COLUMN `Col132` TO lq_18_civ
	,RENAME COLUMN `Col133` TO lq_19_spr
	,RENAME COLUMN `Col134` TO lq_19_civ
	,RENAME COLUMN `Col135` TO lq_20_spr
	,RENAME COLUMN `Col136` TO lq_20_civ
	,RENAME COLUMN `Col137` TO lq_21_spr
	,RENAME COLUMN `Col138` TO lq_21_civ
	,RENAME COLUMN `Col139` TO lq_22_spr
	,RENAME COLUMN `Col140` TO lq_22_civ
	,RENAME COLUMN `II 4.1.1` TO sat_01_awr
	,RENAME COLUMN `II 4.1.2` TO sat_01_avl
	,RENAME COLUMN `II 4.1.a` TO sat_01_a
	,RENAME COLUMN `II 4.1.b` TO sat_01_b
	,RENAME COLUMN `II 4.1.c` TO sat_01_c
	,RENAME COLUMN `II 4.1.d` TO sat_01_d
	,RENAME COLUMN `II 4.1.e` TO sat_01_e
	,RENAME COLUMN `II 4.1.f` TO sat_01_f
	,RENAME COLUMN `II 4.1.g` TO sat_01_g
	,RENAME COLUMN `II 4.1.h` TO sat_01_h
	,RENAME COLUMN `II 4.2.1` TO sat_02_awr
	,RENAME COLUMN `II 4.2.2` TO sat_02_avl
	,RENAME COLUMN `II 4.2.a` TO sat_02_a
	,RENAME COLUMN `II 4.2.b` TO sat_02_b
	,RENAME COLUMN `II 4.2.c` TO sat_02_c
	,RENAME COLUMN `II 4.3.1` TO sat_03_awr
	,RENAME COLUMN `II 4.3.2` TO sat_03_avl
	,RENAME COLUMN `II 4.3.a` TO sat_03_a
	,RENAME COLUMN `II 4.3.b` TO sat_03_b
	,RENAME COLUMN `II 4.3.c` TO sat_03_c
	,RENAME COLUMN `II 4.4.1` TO sat_04_awr
	,RENAME COLUMN `II 4.4.2` TO sat_04_avl
	,RENAME COLUMN `II 4.4.a` TO sat_04_a
	,RENAME COLUMN `II 4.4.b` TO sat_04_b
	,RENAME COLUMN `II 4.5.1` TO sat_05_awr
	,RENAME COLUMN `II 4.5.2` TO sat_05_avl
	,RENAME COLUMN `II 4.5.a` TO sat_05_a
	,RENAME COLUMN `II 4.5.b` TO sat_05_b
	,RENAME COLUMN `II 4.5.c` TO sat_05_c
	,RENAME COLUMN `II 4.6.1` TO sat_06_awr
	,RENAME COLUMN `II 4.6.2` TO sat_06_avl
	,RENAME COLUMN `II 4.6.a` TO sat_06_a
	,RENAME COLUMN `II 4.6.b` TO sat_06_b
	,RENAME COLUMN `II 4.7.1` TO sat_07_awr
	,RENAME COLUMN `II 4.7.2` TO sat_07_avl
	,RENAME COLUMN `II 4.7.a` TO sat_07_a
	,RENAME COLUMN `II 4.7.b` TO sat_07_b
	,RENAME COLUMN `II 4.7.c` TO sat_07_c
	,RENAME COLUMN `II 4.8.1` TO sat_08_awr
	,RENAME COLUMN `II 4.8.2` TO sat_08_avl
	,RENAME COLUMN `II 4.8.a` TO sat_08_a
	,RENAME COLUMN `II 4.8.b` TO sat_08_b
	,RENAME COLUMN `II 4.8.c` TO sat_08_c
	,RENAME COLUMN `II 4.8.d` TO sat_08_d
	,RENAME COLUMN `II 4.8.e` TO sat_08_e
	,RENAME COLUMN `II 4.8.f` TO sat_08_f
	,RENAME COLUMN `II 4.9.1` TO sat_09_awr
	,RENAME COLUMN `II 4.9.2` TO sat_09_avl
	,RENAME COLUMN `II 4.9.a` TO sat_09_a
	,RENAME COLUMN `II 4.9.b` TO sat_09_b
	,RENAME COLUMN `II 4.9.c` TO sat_09_c
	,RENAME COLUMN `II 4.9.d` TO sat_09_d
	,RENAME COLUMN `II 4.10.1` TO sat_10_awr
	,RENAME COLUMN `II 4.10.2` TO sat_10_avl
	,RENAME COLUMN `II 4.10.a` TO sat_10_a
	,RENAME COLUMN `II 4.10.b` TO sat_10_b
	,RENAME COLUMN `II 4.10.c` TO sat_10_c
	,RENAME COLUMN `II 4.11.1` TO sat_11_awr
	,RENAME COLUMN `II 4.11.2` TO sat_11_avl
	,RENAME COLUMN `II 4.11.a` TO sat_11_a
	,RENAME COLUMN `II 4.11.b` TO sat_11_b
	,RENAME COLUMN `II 4.11.c` TO sat_11_c
	,RENAME COLUMN `II 4.11.d` TO sat_11_d
	,RENAME COLUMN `II 4.11.f` TO sat_11_f
	,RENAME COLUMN `II 4.12.1` TO sat_12_awr
	,RENAME COLUMN `II 4.12.2` TO sat_12_avl
	,RENAME COLUMN `II 4.12.a` TO sat_12_a
	,RENAME COLUMN `II 4.12.b` TO sat_12_b
	,RENAME COLUMN `II 4.12.c` TO sat_12_c
	,RENAME COLUMN `II 4.13.1` TO sat_13_awr
	,RENAME COLUMN `II 4.13.2` TO sat_13_avl
	,RENAME COLUMN `II 4.13.a` TO sat_13_a
	,RENAME COLUMN `II 4.13.b` TO sat_13_b
	,RENAME COLUMN `II 4.13.c` TO sat_13_c
	,RENAME COLUMN `II 4.13.d` TO sat_13_d
	,RENAME COLUMN `II 4.13.e` TO sat_13_e
	,RENAME COLUMN `II 4.14.1` TO sat_14_awr
	,RENAME COLUMN `II 4.14.2` TO sat_14_avl
	,RENAME COLUMN `II 4.14.a` TO sat_14_a
	,RENAME COLUMN `II 4.14.b` TO sat_14_b
	,RENAME COLUMN `II 4.15.1` TO sat_15_awr
	,RENAME COLUMN `II 4.15.2` TO sat_15_avl
	,RENAME COLUMN `II 4.15.a` TO sat_15_a
	,RENAME COLUMN `II 4.15.b` TO sat_15_b
	,RENAME COLUMN `II 4.15.c` TO sat_15_c
	,RENAME COLUMN `II 4.15.d` TO sat_15_d
	,RENAME COLUMN `II 4.15.e` TO sat_15_e
	,RENAME COLUMN `II 4.16.1` TO sat_16_awr
	,RENAME COLUMN `II 4.16.2` TO sat_16_avl
	,RENAME COLUMN `II 4.16.a` TO sat_16_a
	,RENAME COLUMN `II 4.16.b` TO sat_16_b
	,RENAME COLUMN `II 4.16.c` TO sat_16_c
	,RENAME COLUMN `II 4.16.d` TO sat_16_d
	,RENAME COLUMN `II 4.17.1` TO sat_17_awr
	,RENAME COLUMN `II 4.17.2` TO sat_17_avl
	,RENAME COLUMN `II 4.17.a` TO sat_17_a
	,RENAME COLUMN `II 4.17.b` TO sat_17_b
	,RENAME COLUMN `II 4.17.c` TO sat_17_c
	,RENAME COLUMN `II 4.18.1` TO sat_18_awr
	,RENAME COLUMN `II 4.18.2` TO sat_18_avl
	,RENAME COLUMN `II 4.18.a` TO sat_18_a
	,RENAME COLUMN `II 4.18.b` TO sat_18_b
	,RENAME COLUMN `II 4.19.1` TO sat_19_awr
	,RENAME COLUMN `II 4.19.2` TO sat_19_avl
	,RENAME COLUMN `II 4.19.a` TO sat_19_a
	,RENAME COLUMN `II 4.19.b` TO sat_19_b
	,RENAME COLUMN `II 4.19.c` TO sat_19_c
	,RENAME COLUMN `II 4.19.d` TO sat_19_d
	,RENAME COLUMN `II 4.19.e` TO sat_19_e
	,RENAME COLUMN `II 4.20.1` TO sat_20_awr
	,RENAME COLUMN `II 4.20.2` TO sat_20_avl
	,RENAME COLUMN `II 4.20.a` TO sat_20_a
	,RENAME COLUMN `II 4.20.b` TO sat_20_b
	,RENAME COLUMN `II 4.21.1` TO sat_21_awr
	,RENAME COLUMN `II 4.21.2` TO sat_21_avl
	,RENAME COLUMN `II 4.21.a` TO sat_21_a
	,RENAME COLUMN `II 4.21.b` TO sat_21_b
	,RENAME COLUMN `II 4.21.c` TO sat_21_c
	,RENAME COLUMN `II 4.21.d` TO sat_21_d
	,RENAME COLUMN `II 4.21.e` TO sat_21_e
	,RENAME COLUMN `II 4.22.1` TO sat_22_awr
	,RENAME COLUMN `II 4.22.2` TO sat_22_avl
	,RENAME COLUMN `II 4.22.a` TO sat_22_a
	,RENAME COLUMN `II 4.22.b` TO sat_22_b
	,RENAME COLUMN `II 4.22.c` TO sat_22_c
	,RENAME COLUMN `II 4.23.1` TO sat_23_awr
	,RENAME COLUMN `II 4.23.2` TO sat_23_avl
	,RENAME COLUMN `II 4.23.a` TO sat_23_a
	,RENAME COLUMN `II 4.23.b` TO sat_23_b
	,RENAME COLUMN `II 4.23.c` TO sat_23_c
	,RENAME COLUMN `II 4.23.d` TO sat_23_d
	,RENAME COLUMN `II 4.24.1` TO sat_24_awr
	,RENAME COLUMN `II 4.24.2` TO sat_24_avl
	,RENAME COLUMN `II 4.24.a` TO sat_24_a
	,RENAME COLUMN `II 4.24.b` TO sat_24_b
	,RENAME COLUMN `II 4.25.1` TO sat_25_awr
	,RENAME COLUMN `II 4.25.2` TO sat_25_avl
	,RENAME COLUMN `II 4.25.a` TO sat_25_a
	,RENAME COLUMN `II 4.26.1` TO sat_26_awr
	,RENAME COLUMN `II 4.26.2` TO sat_26_avl
	,RENAME COLUMN `II 4.26.a` TO sat_26_a
	,RENAME COLUMN `II 4.26.b` TO sat_26_b
	,RENAME COLUMN `II 4.26.c` TO sat_26_c
	,RENAME COLUMN `II 4.26.d` TO sat_26_d
	,RENAME COLUMN `II 4.26.e` TO sat_26_e
	,RENAME COLUMN `II 4.26.f` TO sat_26_f
	,RENAME COLUMN `II 4.26.g` TO sat_26_g
	,RENAME COLUMN `II 4.26.h` TO sat_26_h
	,RENAME COLUMN `II 4.26.i` TO sat_26_i
;


# Now, I want to see how many respondents we actually have in this file:

SELECT
	COUNT(*)
FROM research_1_data_copy;

# We have 720 respondents in the file. Upon closer inspection, the id in this file skips mulitiple numbers, making the id confusing. We'll deal with that later after checking for duplicates.
# The next thing I want to do is to check for duplicates. In this particular case, we would only call something a duplicate if there is an match in all fields. To do that, we will use the ROW_NUMBER window function to check for duplicates. So we need to put all the columns in the PARTITION BY clause to check for that. 
WITH dupe_check_table AS (SELECT
	id
    ,ROW_NUMBER () OVER (PARTITION BY id
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
	,lof_01_01_phys_sun_mass_freq
	,lof_01_02_phys_sun_mass
	,lof_01_03_occasion
	,lof_02_01_ol_sun_mass_freq
	,lof_02_02_ol_mass
	,lof_02_03_occasion
	,lof_03_01_phys_daily_mass_freq
	,lof_03_02_phys_daily_mass
	,lof_03_03_occasion
	,lof_04_01_ol_daily_mass_freq
	,lof_04_02_ol_daily_mass
	,lof_04_03_occasion
	,lof_05_01_station_of_the_cross
	,lof_05_02_candle_lighting
	,lof_05_03_procession
	,lof_05_04_penitensya
	,lof_05_05_devotion
	,lof_06_01_rosary
	,lof_06_02_scapular
	,lof_06_03_bvm_image
	,lof_07_01_altar
	,lof_07_02_altar_images
	,lof_08_00_bible
	,lof_09_01_bible_reading
	,lof_09_02_bible_reading_freq
	,lof_10_01_pray_place
	,lof_10_02_devote_place
	,lof_10_03_mass_place
	,cl_1_1_0_servant
	,cl_1_2_0_ministry
	,cl_2_1_1_sun_mass_freq
	,cl_2_1_2_sun_mass_freq
	,cl_2_1_3_sun_mass_mode
	,cl_2_2_1_wkd_mass_freq
	,cl_2_2_2_wkd_mass_
	,cl_2_3_1_stations_freq_int
	,cl_2_3_2_stations_freq
	,cl_2_4_1_rosary_freq
	,cl_2_4_2_rosary_freq
	,cl_2_5_1_novena_freq
	,cl_2_5_2_novena_freq
	,cl_2_6_1_confess_freq
	,cl_2_6_2_confess_freq
	,cl_2_7_1_bibstudy_freq
	,cl_2_7_2_bibstudy_freq
	,cl_3_3_0_church_visited
	,ll_1_gg_spr
	,ll_1_gg_civ
	,ll_1_wa_spr
	,ll_1_wa_civ
	,ll_1_pt_spr
	,ll_1_pt_civ
	,ll_1_qt_spr
	,ll_1_qt_civ
	,ll_1_as_spr
	,ll_1_as_civ
	,ll_2_gg_spr
	,ll_2_gg_civ
	,ll_2_wa_spr
	,ll_2_wa_civ
	,ll_2_pt_spr
	,ll_2_pt_civ
	,ll_2_qt_spr
	,ll_2_qt_civ
	,ll_2_as_spr
	,ll_2_as_civ
	,ll_3_gg_spr
	,ll_3_gg_civ
	,ll_3_wa_spr
	,ll_3_wa_civ
	,ll_3_pt_spr
	,ll_3_pt_civ
	,ll_3_qt_spr
	,ll_3_qt_civ
	,ll_3_as_spr
	,ll_3_as_civ
	,ll_4_gg_spr
	,ll_4_gg_civ
	,ll_4_wa_spr
	,ll_4_wa_civ
	,ll_4_pt_spr
	,ll_4_pt_civ
	,ll_4_qt_spr
	,ll_4_qt_civ
	,ll_4_as_spr
	,ll_4_as_civ
	,ll_5_gg_spr
	,ll_5_gg_civ
	,ll_5_wa_spr
	,ll_5_wa_civ
	,ll_5_pt_spr
	,ll_5_pt_civ
	,ll_5_qt_spr
	,ll_5_qt_civ
	,ll_5_as_spr
	,ll_5_as_civ
	,lq_1_spr
	,lq_1_civ
	,lq_2_spr
	,lq_2_civ
	,lq_3_spr
	,lq_3_civ
	,lq_4_spr
	,lq_4_civ
	,lq_5_spr
	,lq_5_civ
	,lq_6_spr
	,lq_6_civ
	,lq_7_spr
	,lq_7_civ
	,lq_8_spr
	,lq_8_civ
	,lq_9_spr
	,lq_9_civ
	,lq_10_spr
	,lq_10_civ
	,lq_11_spr
	,lq_11_civ
	,lq_12_spr
	,lq_12_civ
	,lq_13_spr
	,lq_13_civ
	,lq_14_spr
	,lq_14_civ
	,lq_15_spr
	,lq_15_civ
	,lq_16_spr
	,lq_16_civ
	,lq_17_spr
	,lq_17_civ
	,lq_18_spr
	,lq_18_civ
	,lq_19_spr
	,lq_19_civ
	,lq_20_spr
	,lq_20_civ
	,lq_21_spr
	,lq_21_civ
	,lq_22_spr
	,lq_22_civ
	,sat_01_awr
	,sat_01_avl
	,sat_01_a
	,sat_01_b
	,sat_01_c
	,sat_01_d
	,sat_01_e
	,sat_01_f
	,sat_01_g
	,sat_01_h
	,sat_02_awr
	,sat_02_avl
	,sat_02_a
	,sat_02_b
	,sat_02_c
	,sat_03_awr
	,sat_03_avl
	,sat_03_a
	,sat_03_b
	,sat_03_c
	,sat_04_awr
	,sat_04_avl
	,sat_04_a
	,sat_04_b
	,sat_05_awr
	,sat_05_avl
	,sat_05_a
	,sat_05_b
	,sat_05_c
	,sat_06_awr
	,sat_06_avl
	,sat_06_a
	,sat_06_b
	,sat_07_awr
	,sat_07_avl
	,sat_07_a
	,sat_07_b
	,sat_07_c
	,sat_08_awr
	,sat_08_avl
	,sat_08_a
	,sat_08_b
	,sat_08_c
	,sat_08_d
	,sat_08_e
	,sat_08_f
	,sat_09_awr
	,sat_09_avl
	,sat_09_a
	,sat_09_b
	,sat_09_c
	,sat_09_d
	,sat_10_awr
	,sat_10_avl
	,sat_10_a
	,sat_10_b
	,sat_10_c
	,sat_11_awr
	,sat_11_avl
	,sat_11_a
	,sat_11_b
	,sat_11_c
	,sat_11_d
	,sat_11_f
	,sat_12_awr
	,sat_12_avl
	,sat_12_a
	,sat_12_b
	,sat_12_c
	,sat_13_awr
	,sat_13_avl
	,sat_13_a
	,sat_13_b
	,sat_13_c
	,sat_13_d
	,sat_13_e
	,sat_14_awr
	,sat_14_avl
	,sat_14_a
	,sat_14_b
	,sat_15_awr
	,sat_15_avl
	,sat_15_a
	,sat_15_b
	,sat_15_c
	,sat_15_d
	,sat_15_e
	,sat_16_awr
	,sat_16_avl
	,sat_16_a
	,sat_16_b
	,sat_16_c
	,sat_16_d
	,sat_17_awr
	,sat_17_avl
	,sat_17_a
	,sat_17_b
	,sat_17_c
	,sat_18_awr
	,sat_18_avl
	,sat_18_a
	,sat_18_b
	,sat_19_awr
	,sat_19_avl
	,sat_19_a
	,sat_19_b
	,sat_19_c
	,sat_19_d
	,sat_19_e
	,sat_20_awr
	,sat_20_avl
	,sat_20_a
	,sat_20_b
	,sat_21_awr
	,sat_21_avl
	,sat_21_a
	,sat_21_b
	,sat_21_c
	,sat_21_d
	,sat_21_e
	,sat_22_awr
	,sat_22_avl
	,sat_22_a
	,sat_22_b
	,sat_22_c
	,sat_23_awr
	,sat_23_avl
	,sat_23_a
	,sat_23_b
	,sat_23_c
	,sat_23_d
	,sat_24_awr
	,sat_24_avl
	,sat_24_a
	,sat_24_b
	,sat_25_awr
	,sat_25_avl
	,sat_25_a
	,sat_26_awr
	,sat_26_avl
	,sat_26_a
	,sat_26_b
	,sat_26_c
	,sat_26_d
	,sat_26_e
	,sat_26_f
	,sat_26_g
	,sat_26_h
	,sat_26_i
 ORDER BY id) AS dupe_check
 FROM research_1_data_copy)
 
 SELECT
	*
FROM dupe_check_table
WHERE 
	dupe_check > 1;

# From the result above, we can determine that there are no duplicates in our observations.
# Now, we're going to deal with the inconsistent id by replacing it with a id.
ALTER TABLE research_1_data_copy DROP COLUMN id;
ALTER TABLE research_1_data_copy ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

# Now, we'll check if the id was replaced 
SELECT
	*
FROM research_1_data_copy
ORDER BY id DESC
LIMIT 10;

# Now that we have checked that the id's are now properly replaced, we proceed to splitting this huge table into multiple tables. 
# The questionnaire used for this survey is split into 6 parts, namely the Demographics Questionnaire, Life of Faith Questionnaire, Church Life Questionnaire, Love Language Questionnaire, Leader Qualities Questionnaire, and Satisfaction Questionnaire. I'm going to split this into 6 tables, including a table where the Satisfaction Questionnaire Questions are placed so we can refernce them in the visualization later.
# I'll separate the tables in different files. 





CREATE TABLE life_of_faith_table (
	id int NOT NULL
    ,lof_01_01_phys_sun_mass_freq int NOT NULL
	,lof_01_02_phys_sun_mass varchar(255) NOT NULL
	,lof_01_03_occasion varchar(255) NOT NULL
	,lof_02_01_ol_sun_mass_freq int NOT NULL
	,lof_02_02_ol_mass varchar(255) NOT NULL
	,lof_02_03_occasion varchar(255) NOT NULL
	,lof_03_01_phys_daily_mass_freq int NOT NULL
	,lof_03_02_phys_daily_mass varchar(255) NOT NULL
	,lof_03_03_occasion varchar(255) NOT NULL
	,lof_04_01_ol_daily_mass_freq int NOT NULL
	,lof_04_02_ol_daily_mass varchar(255) NOT NULL
	,lof_04_03_occasion varchar(255) NOT NULL
	,lof_05_01_station_of_the_cross varchar(255) NOT NULL
	,lof_05_02_candle_lighting varchar(255) NOT NULL
	,lof_05_03_procession varchar(255) NOT NULL
	,lof_05_04_penitensya varchar(255) NOT NULL
	,lof_05_05_devotion varchar(255) NOT NULL
	,lof_06_01_rosary varchar(255) NOT NULL
	,lof_06_02_scapular varchar(255) NOT NULL
	,lof_06_03_bvm_image varchar(255) NOT NULL
	,lof_07_01_altar varchar(255) NOT NULL
	,lof_07_02_altar_images varchar(255) NOT NULL
	,lof_08_00_bible varchar(255) NOT NULL
	,lof_09_01_bible_reading int NOT NULL
	,lof_09_02_bible_reading_freq varchar(255) NOT NULL
	,lof_10_01_pray_place varchar(255) NOT NULL
	,lof_10_02_devote_place varchar(255) NOT NULL
	,lof_10_03_mass_place varchar(255) NOT NULL
);

INSERT INTO life_of_faith_table
SELECT 
	id
    ,lof_01_01_phys_sun_mass_freq
	,lof_01_02_phys_sun_mass
	,lof_01_03_occasion
	,lof_02_01_ol_sun_mass_freq
	,lof_02_02_ol_mass
	,lof_02_03_occasion
	,lof_03_01_phys_daily_mass_freq
	,lof_03_02_phys_daily_mass
	,lof_03_03_occasion
	,lof_04_01_ol_daily_mass_freq
	,lof_04_02_ol_daily_mass
	,lof_04_03_occasion
	,lof_05_01_station_of_the_cross
	,lof_05_02_candle_lighting
	,lof_05_03_procession
	,lof_05_04_penitensya
	,lof_05_05_devotion
	,lof_06_01_rosary
	,lof_06_02_scapular
	,lof_06_03_bvm_image
	,lof_07_01_altar
	,lof_07_02_altar_images
	,lof_08_00_bible
	,lof_09_01_bible_reading
	,lof_09_02_bible_reading_freq
	,lof_10_01_pray_place
	,lof_10_02_devote_place
	,lof_10_03_mass_place
FROM research_1_data_copy;

CREATE TABLE church_life_table (
	id int NOT NULL
    ,cl_1_1_0_servant varchar(255) NOT NULL
	,cl_1_2_0_ministry varchar(255) NOT NULL
	,cl_2_1_1_sun_mass_freq int NOT NULL
	,cl_2_1_2_sun_mass_freq varchar(255) NOT NULL
	,cl_2_1_3_sun_mass_mode varchar(255) NOT NULL
	,cl_2_2_1_wkd_mass_freq int NOT NULL
	,cl_2_2_2_wkd_mass_ varchar(255) NOT NULL
	,cl_2_3_1_stations_freq_int int NOT NULL
	,cl_2_3_2_stations_freq varchar(255) NOT NULL
	,cl_2_4_1_rosary_freq int NOT NULL
	,cl_2_4_2_rosary_freq varchar(255) NOT NULL
	,cl_2_5_1_novena_freq int NOT NULL
	,cl_2_5_2_novena_freq varchar(255) NOT NULL
	,cl_2_6_1_confess_freq int NOT NULL
	,cl_2_6_2_confess_freq varchar(255) NOT NULL
	,cl_2_7_1_bibstudy_freq int NOT NULL
	,cl_2_7_2_bibstudy_freq varchar(255) NOT NULL
	,cl_3_3_0_church_visited varchar(255) NOT NULL
);

INSERT INTO church_life_table
SELECT
	id
    ,cl_1_1_0_servant
	,cl_1_2_0_ministry
	,cl_2_1_1_sun_mass_freq
	,cl_2_1_2_sun_mass_freq
	,cl_2_1_3_sun_mass_mode
	,cl_2_2_1_wkd_mass_freq
	,cl_2_2_2_wkd_mass_
	,cl_2_3_1_stations_freq_int
	,cl_2_3_2_stations_freq
	,cl_2_4_1_rosary_freq
	,cl_2_4_2_rosary_freq
	,cl_2_5_1_novena_freq
	,cl_2_5_2_novena_freq
	,cl_2_6_1_confess_freq
	,cl_2_6_2_confess_freq
	,cl_2_7_1_bibstudy_freq
	,cl_2_7_2_bibstudy_freq
	,cl_3_3_0_church_visited
FROM research_1_data_copy;

CREATE TABLE love_language_table (
	id int NOT NULL
    ,ll_1_gg_spr int NOT NULL
	,ll_1_gg_civ int NOT NULL
	,ll_1_wa_spr int NOT NULL
	,ll_1_wa_civ int NOT NULL
	,ll_1_pt_spr int NOT NULL
	,ll_1_pt_civ int NOT NULL
	,ll_1_qt_spr int NOT NULL
	,ll_1_qt_civ int NOT NULL
	,ll_1_as_spr int NOT NULL
	,ll_1_as_civ int NOT NULL
	,ll_2_gg_spr int NOT NULL
	,ll_2_gg_civ int NOT NULL
	,ll_2_wa_spr int NOT NULL
	,ll_2_wa_civ int NOT NULL
	,ll_2_pt_spr int NOT NULL
	,ll_2_pt_civ int NOT NULL
	,ll_2_qt_spr int NOT NULL
	,ll_2_qt_civ int NOT NULL
	,ll_2_as_spr int NOT NULL
	,ll_2_as_civ int NOT NULL
	,ll_3_gg_spr int NOT NULL
	,ll_3_gg_civ int NOT NULL
	,ll_3_wa_spr int NOT NULL
	,ll_3_wa_civ int NOT NULL
	,ll_3_pt_spr int NOT NULL
	,ll_3_pt_civ int NOT NULL
	,ll_3_qt_spr int NOT NULL
	,ll_3_qt_civ int NOT NULL
	,ll_3_as_spr int NOT NULL
	,ll_3_as_civ int NOT NULL
	,ll_4_gg_spr int NOT NULL
	,ll_4_gg_civ int NOT NULL
	,ll_4_wa_spr int NOT NULL
	,ll_4_wa_civ int NOT NULL
	,ll_4_pt_spr int NOT NULL
	,ll_4_pt_civ int NOT NULL
	,ll_4_qt_spr int NOT NULL
	,ll_4_qt_civ int NOT NULL
	,ll_4_as_spr int NOT NULL
	,ll_4_as_civ int NOT NULL
	,ll_5_gg_spr int NOT NULL
	,ll_5_gg_civ int NOT NULL
	,ll_5_wa_spr int NOT NULL
	,ll_5_wa_civ int NOT NULL
	,ll_5_pt_spr int NOT NULL
	,ll_5_pt_civ int NOT NULL
	,ll_5_qt_spr int NOT NULL
	,ll_5_qt_civ int NOT NULL
	,ll_5_as_spr int NOT NULL
	,ll_5_as_civ int NOT NULL
);

INSERT INTO love_language_table
SELECT
	id
	,ll_1_gg_spr
	,ll_1_gg_civ
	,ll_1_wa_spr
	,ll_1_wa_civ
	,ll_1_pt_spr
	,ll_1_pt_civ
	,ll_1_qt_spr
	,ll_1_qt_civ
	,ll_1_as_spr
	,ll_1_as_civ
	,ll_2_gg_spr
	,ll_2_gg_civ
	,ll_2_wa_spr
	,ll_2_wa_civ
	,ll_2_pt_spr
	,ll_2_pt_civ
	,ll_2_qt_spr
	,ll_2_qt_civ
	,ll_2_as_spr
	,ll_2_as_civ
	,ll_3_gg_spr
	,ll_3_gg_civ
	,ll_3_wa_spr
	,ll_3_wa_civ
	,ll_3_pt_spr
	,ll_3_pt_civ
	,ll_3_qt_spr
	,ll_3_qt_civ
	,ll_3_as_spr
	,ll_3_as_civ
	,ll_4_gg_spr
	,ll_4_gg_civ
	,ll_4_wa_spr
	,ll_4_wa_civ
	,ll_4_pt_spr
	,ll_4_pt_civ
	,ll_4_qt_spr
	,ll_4_qt_civ
	,ll_4_as_spr
	,ll_4_as_civ
	,ll_5_gg_spr
	,ll_5_gg_civ
	,ll_5_wa_spr
	,ll_5_wa_civ
	,ll_5_pt_spr
	,ll_5_pt_civ
	,ll_5_qt_spr
	,ll_5_qt_civ
	,ll_5_as_spr
	,ll_5_as_civ
FROM research_1_data_copy;

CREATE TABLE leader_qualities_table (
	id int NOT NULL
	,lq_1_spr int NOT NULL
	,lq_1_civ int NOT NULL
	,lq_2_spr int NOT NULL
	,lq_2_civ int NOT NULL
	,lq_3_spr int NOT NULL
	,lq_3_civ int NOT NULL
	,lq_4_spr int NOT NULL
	,lq_4_civ int NOT NULL
	,lq_5_spr int NOT NULL
	,lq_5_civ int NOT NULL
	,lq_6_spr int NOT NULL
	,lq_6_civ int NOT NULL
	,lq_7_spr int NOT NULL
	,lq_7_civ int NOT NULL
	,lq_8_spr int NOT NULL
	,lq_8_civ int NOT NULL
	,lq_9_spr int NOT NULL
	,lq_9_civ int NOT NULL
	,lq_10_spr int NOT NULL
	,lq_10_civ int NOT NULL
	,lq_11_spr int NOT NULL
	,lq_11_civ int NOT NULL
	,lq_12_spr int NOT NULL
	,lq_12_civ int NOT NULL
	,lq_13_spr int NOT NULL
	,lq_13_civ int NOT NULL
	,lq_14_spr int NOT NULL
	,lq_14_civ int NOT NULL
	,lq_15_spr int NOT NULL
	,lq_15_civ int NOT NULL
	,lq_16_spr int NOT NULL
	,lq_16_civ int NOT NULL
	,lq_17_spr int NOT NULL
	,lq_17_civ int NOT NULL
	,lq_18_spr int NOT NULL
	,lq_18_civ int NOT NULL
	,lq_19_spr int NOT NULL
	,lq_19_civ int NOT NULL
	,lq_20_spr int NOT NULL
	,lq_20_civ int NOT NULL
	,lq_21_spr int NOT NULL
	,lq_21_civ int NOT NULL
	,lq_22_spr int NOT NULL
	,lq_22_civ int NOT NULL
);

INSERT INTO leader_qualities_table
SELECT
	id
    ,lq_1_spr
	,lq_1_civ
	,lq_2_spr
	,lq_2_civ
	,lq_3_spr
	,lq_3_civ
	,lq_4_spr
	,lq_4_civ
	,lq_5_spr
	,lq_5_civ
	,lq_6_spr
	,lq_6_civ
	,lq_7_spr
	,lq_7_civ
	,lq_8_spr
	,lq_8_civ
	,lq_9_spr
	,lq_9_civ
	,lq_10_spr
	,lq_10_civ
	,lq_11_spr
	,lq_11_civ
	,lq_12_spr
	,lq_12_civ
	,lq_13_spr
	,lq_13_civ
	,lq_14_spr
	,lq_14_civ
	,lq_15_spr
	,lq_15_civ
	,lq_16_spr
	,lq_16_civ
	,lq_17_spr
	,lq_17_civ
	,lq_18_spr
	,lq_18_civ
	,lq_19_spr
	,lq_19_civ
	,lq_20_spr
	,lq_20_civ
	,lq_21_spr
	,lq_21_civ
	,lq_22_spr
	,lq_22_civ
FROM research_1_data_copy;

CREATE TABLE satisfaction_table (
	id int NOT NULL
    ,sat_01_awr varchar(255) NOT NULL
	,sat_01_avl int NOT NULL
	,sat_01_a int NOT NULL
	,sat_01_b int NOT NULL
	,sat_01_c int NOT NULL
	,sat_01_d int NOT NULL
	,sat_01_e int NOT NULL
	,sat_01_f int NOT NULL
	,sat_01_g int NOT NULL
	,sat_01_h int NOT NULL
	,sat_02_awr varchar(255) NOT NULL
	,sat_02_avl int NOT NULL
	,sat_02_a int NOT NULL
	,sat_02_b int NOT NULL
	,sat_02_c int NOT NULL
	,sat_03_awr varchar(255) NOT NULL
	,sat_03_avl int NOT NULL
	,sat_03_a int NOT NULL
	,sat_03_b int NOT NULL
	,sat_03_c int NOT NULL
	,sat_04_awr varchar(255) NOT NULL
	,sat_04_avl int NOT NULL
	,sat_04_a int NOT NULL
	,sat_04_b int NOT NULL
	,sat_05_awr varchar(255) NOT NULL
	,sat_05_avl int NOT NULL
	,sat_05_a int NOT NULL
	,sat_05_b int NOT NULL
	,sat_05_c int NOT NULL
	,sat_06_awr varchar(255) NOT NULL
	,sat_06_avl int NOT NULL
	,sat_06_a int NOT NULL
	,sat_06_b int NOT NULL
	,sat_07_awr varchar(255) NOT NULL
	,sat_07_avl int NOT NULL
	,sat_07_a int NOT NULL
	,sat_07_b int NOT NULL
	,sat_07_c int NOT NULL
	,sat_08_awr varchar(255) NOT NULL
	,sat_08_avl int NOT NULL
	,sat_08_a int NOT NULL
	,sat_08_b int NOT NULL
	,sat_08_c int NOT NULL
	,sat_08_d int NOT NULL
	,sat_08_e int NOT NULL
	,sat_08_f int NOT NULL
	,sat_09_awr varchar(255) NOT NULL
	,sat_09_avl int NOT NULL
	,sat_09_a int NOT NULL
	,sat_09_b int NOT NULL
	,sat_09_c int NOT NULL
	,sat_09_d int NOT NULL
	,sat_10_awr varchar(255) NOT NULL
	,sat_10_avl int NOT NULL
	,sat_10_a int NOT NULL
	,sat_10_b int NOT NULL
	,sat_10_c int NOT NULL
	,sat_11_awr varchar(255) NOT NULL
	,sat_11_avl int NOT NULL
	,sat_11_a int NOT NULL
	,sat_11_b int NOT NULL
	,sat_11_c int NOT NULL
	,sat_11_d int NOT NULL
	,sat_11_f int NOT NULL
	,sat_12_awr varchar(255) NOT NULL
	,sat_12_avl int NOT NULL
	,sat_12_a int NOT NULL
	,sat_12_b int NOT NULL
	,sat_12_c int NOT NULL
	,sat_13_awr varchar(255) NOT NULL
	,sat_13_avl int NOT NULL
	,sat_13_a int NOT NULL
	,sat_13_b int NOT NULL
	,sat_13_c int NOT NULL
	,sat_13_d int NOT NULL
	,sat_13_e int NOT NULL
	,sat_14_awr varchar(255) NOT NULL
	,sat_14_avl int NOT NULL
	,sat_14_a int NOT NULL
	,sat_14_b int NOT NULL
	,sat_15_awr varchar(255) NOT NULL
	,sat_15_avl int NOT NULL
	,sat_15_a int NOT NULL
	,sat_15_b int NOT NULL
	,sat_15_c int NOT NULL
	,sat_15_d int NOT NULL
	,sat_15_e int NOT NULL
	,sat_16_awr varchar(255) NOT NULL
	,sat_16_avl int NOT NULL
	,sat_16_a int NOT NULL
	,sat_16_b int NOT NULL
	,sat_16_c int NOT NULL
	,sat_16_d int NOT NULL
	,sat_17_awr varchar(255) NOT NULL
	,sat_17_avl int NOT NULL
	,sat_17_a int NOT NULL
	,sat_17_b int NOT NULL
	,sat_17_c int NOT NULL
	,sat_18_awr varchar(255) NOT NULL
	,sat_18_avl int NOT NULL
	,sat_18_a int NOT NULL
	,sat_18_b int NOT NULL
	,sat_19_awr varchar(255) NOT NULL
	,sat_19_avl int NOT NULL
	,sat_19_a int NOT NULL
	,sat_19_b int NOT NULL
	,sat_19_c int NOT NULL
	,sat_19_d int NOT NULL
	,sat_19_e int NOT NULL
	,sat_20_awr varchar(255) NOT NULL
	,sat_20_avl int NOT NULL
	,sat_20_a int NOT NULL
	,sat_20_b int NOT NULL
	,sat_21_awr varchar(255) NOT NULL
	,sat_21_avl int NOT NULL
	,sat_21_a int NOT NULL
	,sat_21_b int NOT NULL
	,sat_21_c int NOT NULL
	,sat_21_d int NOT NULL
	,sat_21_e int NOT NULL
	,sat_22_awr varchar(255) NOT NULL
	,sat_22_avl int NOT NULL
	,sat_22_a int NOT NULL
	,sat_22_b int NOT NULL
	,sat_22_c int NOT NULL
	,sat_23_awr varchar(255) NOT NULL
	,sat_23_avl int NOT NULL
	,sat_23_a int NOT NULL
	,sat_23_b int NOT NULL
	,sat_23_c int NOT NULL
	,sat_23_d int NOT NULL
	,sat_24_awr varchar(255) NOT NULL
	,sat_24_avl int NOT NULL
	,sat_24_a int NOT NULL
	,sat_24_b int NOT NULL
	,sat_25_awr varchar(255) NOT NULL
	,sat_25_avl int NOT NULL
	,sat_25_a int NOT NULL
	,sat_26_awr varchar(255) NOT NULL
	,sat_26_avl int NOT NULL
	,sat_26_a int NOT NULL
	,sat_26_b int NOT NULL
	,sat_26_c int NOT NULL
	,sat_26_d int NOT NULL
	,sat_26_e int NOT NULL
	,sat_26_f int NOT NULL
	,sat_26_g int NOT NULL
	,sat_26_h int NOT NULL
	,sat_26_i int NOT NULL
);

INSERT INTO satisfaction_table
SELECT
	id
    ,sat_01_awr
	,sat_01_avl
	,sat_01_a
	,sat_01_b
	,sat_01_c
	,sat_01_d
	,sat_01_e
	,sat_01_f
	,sat_01_g
	,sat_01_h
	,sat_02_awr
	,sat_02_avl
	,sat_02_a
	,sat_02_b
	,sat_02_c
	,sat_03_awr
	,sat_03_avl
	,sat_03_a
	,sat_03_b
	,sat_03_c
	,sat_04_awr
	,sat_04_avl
	,sat_04_a
	,sat_04_b
	,sat_05_awr
	,sat_05_avl
	,sat_05_a
	,sat_05_b
	,sat_05_c
	,sat_06_awr
	,sat_06_avl
	,sat_06_a
	,sat_06_b
	,sat_07_awr
	,sat_07_avl
	,sat_07_a
	,sat_07_b
	,sat_07_c
	,sat_08_awr
	,sat_08_avl
	,sat_08_a
	,sat_08_b
	,sat_08_c
	,sat_08_d
	,sat_08_e
	,sat_08_f
	,sat_09_awr
	,sat_09_avl
	,sat_09_a
	,sat_09_b
	,sat_09_c
	,sat_09_d
	,sat_10_awr
	,sat_10_avl
	,sat_10_a
	,sat_10_b
	,sat_10_c
	,sat_11_awr
	,sat_11_avl
	,sat_11_a
	,sat_11_b
	,sat_11_c
	,sat_11_d
	,sat_11_f
	,sat_12_awr
	,sat_12_avl
	,sat_12_a
	,sat_12_b
	,sat_12_c
	,sat_13_awr
	,sat_13_avl
	,sat_13_a
	,sat_13_b
	,sat_13_c
	,sat_13_d
	,sat_13_e
	,sat_14_awr
	,sat_14_avl
	,sat_14_a
	,sat_14_b
	,sat_15_awr
	,sat_15_avl
	,sat_15_a
	,sat_15_b
	,sat_15_c
	,sat_15_d
	,sat_15_e
	,sat_16_awr
	,sat_16_avl
	,sat_16_a
	,sat_16_b
	,sat_16_c
	,sat_16_d
	,sat_17_awr
	,sat_17_avl
	,sat_17_a
	,sat_17_b
	,sat_17_c
	,sat_18_awr
	,sat_18_avl
	,sat_18_a
	,sat_18_b
	,sat_19_awr
	,sat_19_avl
	,sat_19_a
	,sat_19_b
	,sat_19_c
	,sat_19_d
	,sat_19_e
	,sat_20_awr
	,sat_20_avl
	,sat_20_a
	,sat_20_b
	,sat_21_awr
	,sat_21_avl
	,sat_21_a
	,sat_21_b
	,sat_21_c
	,sat_21_d
	,sat_21_e
	,sat_22_awr
	,sat_22_avl
	,sat_22_a
	,sat_22_b
	,sat_22_c
	,sat_23_awr
	,sat_23_avl
	,sat_23_a
	,sat_23_b
	,sat_23_c
	,sat_23_d
	,sat_24_awr
	,sat_24_avl
	,sat_24_a
	,sat_24_b
	,sat_25_awr
	,sat_25_avl
	,sat_25_a
	,sat_26_awr
	,sat_26_avl
	,sat_26_a
	,sat_26_b
	,sat_26_c
	,sat_26_d
	,sat_26_e
	,sat_26_f
	,sat_26_g
	,sat_26_h
	,sat_26_i
FROM research_1_data_copy;


-- After creating tables and copying the data, I want to check if all 720 rows are present in all of the tables.

SELECT 	
	COUNT(*) 
FROM demographics_table;

SELECT 	
	COUNT(*)
FROM life_of_faith_table;

SELECT 	
	COUNT(*)
FROM church_life_table;

SELECT 	
	COUNT(*)
FROM love_language_table;

SELECT 	
	COUNT(*)
FROM leader_qualities_table;

SELECT 	
	COUNT(*)
FROM satisfaction_table;

-- Now that we've confirmed that there are 720 rows in all of the tables we just made, we can now drop the copy table we made earlier to save space.

DROP TABLE research_1_data_copy


