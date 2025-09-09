Profile: ObservationTelemedicina
Parent: Observation
Id: ObservationTelemedicina
Description: "Profilo base di Observation condiviso in tutti i documenti di Telemedicina"
* ^url = "http://hl7.it/fhir/teleconsulto/StructureDefinition/ObservationTelemedicina"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* code MS
* note MS
* effective[x] ^short = "Data di rilevazione del parametro"

* performer ^short = "Medico consultato"
* performer only Reference(PractitionerRoleTelemedicina) 
* performer 1..1