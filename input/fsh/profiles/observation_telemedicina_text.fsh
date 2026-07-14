Profile: ObservationTeleconsultoNarrative
Parent: Observation
Id: ObservationTeleconsultoNarrative
Description: "Profilo base di Observation per osservazioni testuali"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* effective[x] ^short = "Data di rilevazione"
* value[x] 1..
* value[x] ^short = "Informazione testuale riportata"
* value[x] only string
* performer ^short = "Professionista che ha eseguito la rilevazione."
* performer only Reference(PractitionerRoleTeleconsulto) 