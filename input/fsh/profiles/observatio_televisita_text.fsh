Profile: ObservationTelevisitaNarrative
Parent: Observation
Id: ObservationTelevisitaNarrative
Description: "Profilo base di Observation per osservazioni testuali"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* effective[x] ^short = "Data di rilevazione del parametro."
* value[x] 1..
* value[x] only string