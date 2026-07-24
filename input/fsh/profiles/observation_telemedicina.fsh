Profile: ObservationTeleconsulto
Parent: Observation
Id: ObservationTeleconsulto
Description: "Profilo di Observation utilizzato nel contesto di Teleconsulto"
* ^url = "http://hl7.it/fhir/teleconsulto/StructureDefinition/ObservationTeleconsulto"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* code MS
* code ^short = "Codice che identifica l'osservazione"
* note MS
* effective[x] ^short = "Data e ora nella quale è stata eseguita l'osservazione o rilevato il parametro"

* performer ^short = "Professionista che ha eseguito l'osservazione o rilevato il parametro."
* performer only Reference(PractitionerRoleTeleconsulto) 

* value[x] ^short = "Valore misurato o rilevato."
* value[x] ^definition = "Risultato dell'osservazione espresso come quantità, codice, stringa o altro tipo."
