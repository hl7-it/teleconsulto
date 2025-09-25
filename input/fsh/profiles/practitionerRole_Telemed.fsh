
Alias: $Organization_T1 = http://hl7.it/fhir/teleconsulto/StructureDefinition/Organization_T1
Alias: $Organization_T2 = http://hl7.it/fhir/teleconsulto/StructureDefinition/Organization_T2
Alias: $Organization_T3 = http://hl7.it/fhir/teleconsulto/StructureDefinition/Organization_T3
Alias: $specialityPractitionerRole = https://terminology.agenas.gov.it/ValueSet/specialityPractitionerRole

Profile: PractitionerRoleTeleconsulto
Parent: PractitionerRole
Id: PractitionerRoleTeleconsulto
Title: "PractitionerRoleTeleconsulto"
Description: "Profilo del PractitionerRole utilizzato nel contesto del Teleconsulto"
* ^version = "0.1.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#IT
* period ^short = "Il periodo durante il quale il professionista è autorizzato a svolgere questi ruoli"

* practitioner 1..
* practitioner only Reference(PractitionerTeleconsulto)
* practitioner ^short = "Dettagli dell'operatore"

* organization 1..
* organization only Reference(OrganizationT1)
* organization ^short = "Organizzazione di Appartenenza"

* code ^short = "Ruoli che questo professionista può svolgere"

* specialty 1..
* specialty from vsspecialityPractitionerRole (required)