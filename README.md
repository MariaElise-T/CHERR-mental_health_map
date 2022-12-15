# CHERR-mental_health_data_processing

CURRENT DASHBOARD: https://prod-useast-a.online.tableau.com/t/cherrmentalhealthmap/views/CHERRMentalHealthMapV1_31/Homepage

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
