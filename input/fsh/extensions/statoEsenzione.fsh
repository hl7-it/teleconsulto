Alias: $statoEsenzione = https://www.hl7.it/fhir/terminology/ValueSet/statoEsenzione

Extension: StatoEsenzioneCoverage
Id: coverage-exceptionStatus
Title: "Stato Esenzione"
Description: "Estensione per gestire lo stato di una esenzione"
* ^version = "0.1.0"
* ^date = "2020-06-30T18:23:29+02:00"
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $statoEsenzione (required)