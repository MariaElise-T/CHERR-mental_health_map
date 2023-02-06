# CHERR Mental Health MAP README

## RELEASE 2.1 CHANGES

Version 2 introduces new data that may be longitudinal, at a granularity other than county-level, or both.

There are now 3 different datafiles feeding the dashboard that are defined by their granuality and temporality.

**longitudinal_county_data** contains metrics at the county level that are tracked for at least two seperate points in time.
**longitudinal_statewide_data** contains metrics at the state level that are tracked for at least two seperate points in time.
**snapshot_county_data** contains metrics at the county level that are only available for one point in time.  In version 1, this was the default dataset.

### Variables

#### longitudinal_county_data

- **Added the fiscal year of the measurement.**
- **Added the name of the county.**
- **Added the number of confirmed victims in Child Protective Serivces (CPS) investigations per county per year, meaning the number of children who were eith er the subject of a substantiated or indicted maltreatment report or children who were identified as victims in an alternate response process.**, *CPI_3.8_Abuse_Neglect_Investigations_-_Alleged_and_Confirmed_Victims_By_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/CPI-3-8-Abuse-Neglect-Investigations-Alleged-and-C/v63e-6dss
- **Added the number of unconfirmed victims in (CPS) investigations per county per year, meaning the number of children who were the subjects of maltreatment reports that have either been dismissed or not yet substantiated.**, *CPI_3.8_Abuse_Neglect_Investigations_-_Alleged_and_Confirmed_Victims_By_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/CPI-3-8-Abuse-Neglect-Investigations-Alleged-and-C/v63e-6dss
- **Added the number of CPS removals in the family preservation stage per county per year.**, *CPS_2.1_Removals_-_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/CPS-2-1-Removals-by-County-FY2012-2021/xmtn-e5c8
- **Added the number of CPS removals in the investigation stage per county per year.**, *CPS_2.1_Removals_-_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/CPS-2-1-Removals-by-County-FY2012-2021/xmtn-e5c8
- **Added the total number of children in DFPS responsibility per county per year.**, *CPS_2.3_Children_In_DFPS_Legal_Responsibility_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/CPS-2-3-Children-In-DFPS-Legal-Responsibility-by-C/929f-jvud
- **Added the total population of adults with qualifying disabilities between ages 18 and 64 per county.**, *APS_1.1_Texas_Adult_Populations_at_Risk_by_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/APS-1-1-Texas-Adult-Populations-at-Risk-by-County-/qjby-4sji
- **Added the percentage of adults with qualifying disabilities between ages 18 and 64 per county.**, *APS_1.1_Texas_Adult_Populations_at_Risk_by_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/APS-1-1-Texas-Adult-Populations-at-Risk-by-County-/qjby-4sji
- **Added the total number of adults over age 65 per county.**, *APS_1.1_Texas_Adult_Populations_at_Risk_by_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/APS-1-1-Texas-Adult-Populations-at-Risk-by-County-/qjby-4sji
- **Added the percentage of adults over age 65 per county.**, *APS_1.1_Texas_Adult_Populations_at_Risk_by_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/APS-1-1-Texas-Adult-Populations-at-Risk-by-County-/qjby-4sji
- **Added the total population of the county, as reported by Adult Protective Services per county.**, *APS_1.1_Texas_Adult_Populations_at_Risk_by_County_FY2012-FY2021.csv*, source: https://data.texas.gov/dataset/APS-1-1-Texas-Adult-Populations-at-Risk-by-County-/qjby-4sji
- **Added the total number of Adult Protective Services clients per county.**, *APS_4.1_Services__Activity_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/APS-4-1-Services-Activity-by-County-FY2012-2021/jrvj-r5qx
- **Added the total number of Adult Protective Services service stages per county.**, *APS_4.1_Services__Activity_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/APS-4-1-Services-Activity-by-County-FY2012-2021/jrvj-r5qx
- **Added the total number of repeat alleged victims in Adult Protective Services investigations.**, *APS_5.2_Outcomes__Recidivism_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/APS-5-2-Outcomes-Recidivism-by-County-FY2012-2021/fhx8-fyu2
- **Added the total number of initial alleged victims in Adult Protective Services investigations.**, *APS_5.2_Outcomes__Recidivism_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/APS-5-2-Outcomes-Recidivism-by-County-FY2012-2021/fhx8-fyu2
- **Added the Adult Protective Services recidivism rate.**, *APS_5.2_Outcomes__Recidivism_by_County_FY2012-2021.csv*, source: https://data.texas.gov/dataset/APS-5-2-Outcomes-Recidivism-by-County-FY2012-2021/fhx8-fyu2

#### longitudinal_statewide_data

- **Added the calendar year of the measurement.**
- **Added the calendar month of the measurement, if available.  If not available (i.e., a yearly measurement), the month is set to January.**
- **Added the state the school-related measurement was taken from (in this dataset, this is always Texas.  This variable will be removed in a later version).**, *STATE_summary_XX.txt/csv*, source: https://tea.texas.gov/reports-and-data/student-data/discipline-data-products/discipline-reports
- **Added the number of NICS firearm background checks per measurement interval in Texas.**, *Federal_firearms_bans_Dec21.xlsx*, source: https://www.fbi.gov/file-repository/nics_firearm_checks_-_month_year_by_state.pdf
- **Added the school year corresponding to the measurement interval.**, *STATE_summary_XX.txt/csv*, source: https://tea.texas.gov/reports-and-data/student-data/discipline-data-products/discipline-reports
- **Added the number of infractions across all public and charter schools in Texas for the offenses listed below.**, *STATE_summary_XX.txt/csv*, source: https://tea.texas.gov/reports-and-data/student-data/discipline-data-products/discipline-reports
	- A01 - STATE CUMULATIVE YEAR END ENROLLMENT
	- A02 - STATE DISCIPLINE POPULATION
	- A03 - STATE DISCIPLINE RECORD COUNT
	- G02 - CONDUCT PUNISHABLE AS A FELONY
	- G04 - CONTROLLED SUBSTANCE/DRUGS
	- G05 - ALCOHOL VIOLATION
	- G11 - FIREARM OR HANDGUN VIOLATION
	- G27 - ASSAULT-DISTRICT EMPLOYEE
	- G28 - ASSAULT-NONDISTRICT EMPLOYEE
	- G29 - AGG ASSAULT-DISTRICT EMPLOYEE
	- G30 - AGG ASSAULT-NONDIST EMPLOYEE
	- G32 - SEXUAL ASSAULT-NONDIST EMPLOYEE
	- G34 - SCHOOL-RELATED GANG VIOLENCE
	- G36 - FELONY CONTROLLED SUBS VIOLAT
	- G41 - FIGHTING/MUTUAL COMBAT
- **Added the percent of drug samples seized in Texas and tested by federal, state, or local laboratories that tested positive for a specific substance in the given year (see METADATA for full list of identified substances).**, *nflis-export_texas_20XX.csv*, source: https://www.nflis.deadiversion.usdoj.gov/publicDQSinfo.xhtml?jfwid=YZHGF-fFaYiVmtIY6YpG_ZtcnAd-BkyzL8EjxnoW:3
- **Added the state the 988-related measurement was taken from (in this dataset, this is always Texas.  This variable will be removed in a later version).**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the number of routed calls to 988 for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the number of received calls from 988 for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the number of calls receivied from 988 answered in-state for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the number of calls to 988 that were abandoned in-state for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the number of calls to 988 thats flowed out to backup out-of-state call centers for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the ASA_in_state for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics
- **Added the average call length for answered 988 calls in Texas for the given time period.**, *988_national_reports.xlsx*, source: https://www.samhsa.gov/find-help/988/performance-metrics

#### snapshot_county_data

- **Added the total number of waivered buprenorphine providers per county (2018).**, *Buprenorphine-Waivered Providers.csv*, source: https://oig.hhs.gov/oei/maps/waivered-providers/index.html
- **Added the patient capacity for buprenorphine treatment per county (2018).**, *Buprenorphine-Waivered Providers.csv*, source: https://oig.hhs.gov/oei/maps/waivered-providers/index.html
- **Added the "high need for buprenorphine treatment services" indicator per county (2018).**, *Buprenorphine-Waivered Providers.csv*, source: https://oig.hhs.gov/oei/maps/waivered-providers/index.html
- **Added the "low to no patient capacity for buprenorphine treatment services" indicator per county (2018).**, *Buprenorphine-Waivered Providers.csv*, source: https://oig.hhs.gov/oei/maps/waivered-providers/index.html

## RELEASE 1.3 CHANGES

### Variables

- **Added the number of new applications for temporary mental health services per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for extended mental health services per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for modifications to prior mental health court orders per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for authorization of mental health medications per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for temporary mental health services per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for extended mental health services per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for modifications to prior mental health court orders per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for authorization of mental health medications per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for temporary mental health services per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for extended mental health services per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for modifications to prior mental health court orders per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of new applications for authorization of mental health medications per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for temporary mental health services per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for extended mental health services per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for modifications to prior mental health court orders per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of hearings held for authorization of mental health medications per 100k population per county (2020)**, *Mental_Health_Court_Cases.csv*, source: https://card.txcourts.gov/ReportSelection.aspx, Probate and Mental Health -> Mental Health Activity by County
- **Added the number of licensed psychiatrists per county  and ratio of licensed psychiatrists per county per 100k population (2020) **, *texas_psychiatrists_2020.csv*, source: https://www.dshs.texas.gov/health-professions-resource-center-hprc/health-professions/county-supply-distribution-tables-41/psychiatrists-2020
- **Added total traffic fatalities, traffic fatalities involing a driver with a BAC over 0.08, the percent of traffic fatalities involving a driver with a BAC over 0.08, and the ratio of traffic fatalities per 100k population (2019) **, *Texas_DUI_fatalities_2019.csv*, source: NHTSA FARS query, https://cdan.dot.gov/query

### Static Data Exploration

- Modified *TX_health_workers_EDA.R* to work with *dashboard_data_v_1_3.csv*
- Added *mental_health_court_plots.R* to display yearly counts from 2017 to 2021 for the MH court variables

### Dynamic Data Exploration

- Modified *tableau_shiny_alt.R* to work with *dashboard_data_v_1_3.csv*

## RELEASE 1.2 CHANGES

### Variables

- Removed ", County" from all county names
- Removed a duplicate county name column
- Removed the "povery rate under 5" column because Texas does not collect this data
- Added a binary variable representing membership in the I-35 Innovation Corridor (Bexar, Comal, Hays, Travis, Williamson, Bastrop, Caldwell, Guadalupe, Kendall, Blanco, and Burnet counties).
- **Added the number of opioid prescriptions per 100 people (2020)**, *opioids_per_100_2020.csv*, source: https://www.cdc.gov/drugoverdose/rxrate-maps/county2020.html
- **Added the number of primarily alcohol serving establishments per capita (2020)**, *CBP_alcohol_establishments.csv*, source: https://www.census.gov/programs-surveys/cbp.html
- **Added the percentage of people who are veterans by county based on the Veteran Population Model (2020)**, *9L_VetPop2018_County.csv*, source: https://www.va.gov/vetdata/veteran_population.asp 
- **Added the percent of people without health insurance by county (2019)**, *aspe-uninsured-estimates-by-county.csv*, source: https://aspe.hhs.gov/reports/state-county-local-estimates-uninsured-population-prevalence-key-demographic-features

### Dataframe Creation

- Combined *health_workers_merge.R*, *social_medical_format.R*, and *data_merge.R* into a single file *data_merge_combined.R*
- The intermediate dataframes *TX_health_workers_2020.csv* and *social_medical.csv* are no longer saved.  The *data_merge_combined.R* script goes right from raw data to *dashboard_data_v_1_2.csv*

### Static Data Exploration

- Modified *TX_health_workers_EDA.R* to work with *dashboard_data_v_1_2.csv*

### Dynamic Data Exploration

- Modified *tableau_shiny_alt.R* to work with *dashboard_data_v_1_2.csv*

## RELEASE 1.1

This is the initial public release for the CHERR Mental Health Map project.  We aggregate open-source data on mental health at the county level and present it in a dashboard developed in Tableau.  

### Variables

The merged dataset (dashboard_data_v_1_1.csv) aggregates the following county-level data:

- **The number of people held in jail and the number of people help in jail pretrial (2018)**, *incarceration_trends/incarceration_trends_texas_2018.csv*, source: https://github.com/vera-institute/incarceration-trends (Texas and most recent year only)
- **The prevelance of alcohol abuse, drug abuse, depression, autism, and schizophrenia diagnosis among Medicare/Medicaid beneficiaries (2018)**, *County_Table_Chronic_Conditions_Prevalence_by_Age_2018.xlsx*, source: https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Chronic-Conditions/CCDashboard
- **The number of licensed chemical dependency counselors (LCDCs) and ratio of LCDCs to population (2020)**, *LCDCs_2020.csv*, source: https://www.dshs.texas.gov/chs/hprc/tables/2020/LCDC20.aspx
- **The county urbanization classification under the Rural Urban Continuum Code (RUCC), National Center for Health Statistics (NCHS), Urban Influence Code (UIC), core-based statistical area metrics (CBSA), and metripolitan statistical area (MSA) type.**  *all_urban_scores_by_FIPS.csv*
- **Poverty estimate and poverty, 0-17 estimate (2020)**, *est20all.xls*, source: https://www2.census.gov/programs-surveys/saipe/datasets/2020/2020-state-and-county/
- **March 2021 unemployment data**. *laucntycur14.txt*, source: https://www.bls.gov/web/metro/laucntycur14.txt
- **The number of licensed clinical social workers and ratio of licensed clinical social workers to population (2020)**, *licensed_clinical_SWs_2020.csv*, source: https://www.dshs.texas.gov/chs/hprc/tables/2020/LCSW20.aspx
- **The number of licensed professional counselors and ratio of licensed professional counselors to population (2020)**, *licensed_counselors_2020.csv*, source: https://www.dshs.texas.gov/chs/hprc/tables/2020/LPC20.aspx 
- **The number of licensed bachelor-level social workers and ratio of licensed bachelor-level social workers to population (2020)**, *social_workers_bach_2020.csv*, source: https://www.dshs.texas.gov/chs/hprc/tables/2020/lbsw20.aspx
- **The number of licensed masters-level social workers and ratio of licensed masters-level social workers to population (2020)**, *social_workers_masters_2020.csv*, source: https://www.dshs.texas.gov/chs/hprc/tables/2020/LMSW20.aspx
- **The number of primary care physicians (PCPs) and ratio of PCPs to population (2020)** *texas_PCPs_per_capita.csv*, source: https://www.dshs.texas.gov/chs/hprc/tables/2020/pc20.aspx

### Dataframe Creation

The data are merged on FIPS code with *health_workers_merge.R* generating *data_intermediate/TX_health_workers_2020.csv*, *data_intermediate/social_medical_format.R* generating *social_medical.csv*, and *data_merge.R* combining the prior two files to create *dashboard_data_v_1_1.csv*.

### Static Data Exploration

*scripts/EDA* contains an exploratory script on the association between healthcare personel and urbanicity in Texas counties.  

### Dynamic Data Exploration

*visualizations-dynamic* contains an R Shiny interactive data exploration tool for *dashboard_data_v_1_1.csv*.  Note that county shape files must first be downloaded from https://www.census.gov/geographies/mapping-files/time-series/geo/carto-boundary-file.html before the script will run.
