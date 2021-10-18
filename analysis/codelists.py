from cohortextractor import codelist_from_csv

# Asthma Diagnosis code
ast = codelist_from_csv(
    "codelists/primis-covid19-vacc-uptake-bmi_stage.csv",
    system="snomed",
    column="code",
)
