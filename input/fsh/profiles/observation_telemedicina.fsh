Profile: ObservationTeleconsulto
Parent: Observation
Id: ObservationTeleconsulto
Description: "Profilo di Observation utilizzato nel contesto di Teleconsulto"
* ^url = "http://hl7.it/fhir/teleconsulto/StructureDefinition/ObservationTeleconsulto"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* code MS
* note MS
* effective[x] ^short = "Data di rilevazione del parametro"

* performer ^short = "Medico consultato"
* performer only Reference(PractitionerRoleTelemedicina) 
* performer 1..1