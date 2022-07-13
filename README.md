# CHERR-mental_health_data_processing

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

The data are merged on FIPS code with *health_workers_merge.R* generating &data_intermediate/TX_health_workers_2020.csv*, *social_medical_format.R* generating *social_medical.csv*, and *data_merge.R* combining the prior two files to create *dashboard_data_v_1_1.csv*.

### Static Data Exploration

*scripts/EDA* contains an exploratory script on the association between healthcare personel and urbanicity in Texas counties.  

### Dynamic Data Exploration

*visualizations-dynamic* contains an R Shiny interactive data exploration tool for *dashboard_data_v_1_1.csv*.  Note that county shape files must first be downloaded from https://www.census.gov/geographies/mapping-files/time-series/geo/carto-boundary-file.html before the script will run.
