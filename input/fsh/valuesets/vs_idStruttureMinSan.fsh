Alias: $minsan-hsp = http://hl7.it/fhir/lab-report/CodeSystem/minsan-hsp

ValueSet: VsMinisteroSaluteIdStrutture
Id: minsan-idStrutture
Title: "MDS - ID Strutture Ricovero"
Description: "MDS - Identificativi Strutture Ricovero (HSP11)"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Italia"
* ^contact[0].name = "HL7 Italia"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://hl7.it"
* ^contact[+].name = "HL7 Italia"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://hl7.it"
* ^jurisdiction = urn:iso:std:iso:3166#IT "Italy"
* include codes from system $minsan-hsp