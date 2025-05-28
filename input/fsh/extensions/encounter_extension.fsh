Extension: ActualPeriod
Id: actual-period
Title: "Periodo Effettivo"
Description: "Data e ora di inizio e fine effettiva dell'incontro (Encounter)."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only Period

Extension: PlannedStartDate
Id: planned-start-date
Title: "Data Inizio Pianificata"
Description: "Data e ora di inizio pianificata (o data di ammissione) dell'incontro (Encounter)."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only dateTime

Extension: PlannedEndDate
Id: planned-end-date
Title: "Data Fine Pianificata"
Description: "Data e ora di fine pianificata (o data di dimissione) dell'incontro (Encounter)."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only dateTime
