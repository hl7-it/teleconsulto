Profile: MedicationRequestTeleconsulto
Parent: MedicationRequest
Id: MedicationRequestTeleconsulto
Description: "Profilo base della MedicationRequest utilizzato nel contesto del Teleconsulto" 
* ^status = #draft
* status ^definition = "Codice che descrive lo stato della request"
* intent = #proposal
* intent ^definition = "Scopo della request"

* medicationCodeableConcept from VsAic (required)
* medicationReference only Reference(MedicationTeleconsulto)

* subject only Reference(PatientTeleconsulto)
* subject ^short = "Soggetto per cui è richiesto il farmaco"

* requester 1..1
* requester ^short = "Professionista sanitario che ha richiesto il farmaco"
* requester ^definition = "Professionista sanitario che ha richiesto il farmaco"

* dosageInstruction ^short = "Istruzioni di dosaggio e somministrazione"
* dosageInstruction ^definition = "Istruzioni di dosaggio e somministrazione"
* dosageInstruction.timing ^short = "Tempistiche di somministrazione del farmaco"
* dosageInstruction.timing ^definition = "Tempistiche di somministrazione del farmaco"
* dosageInstruction.timing.repeat.bounds[x] only Period
* dosageInstruction.timing.repeat.bounds[x] ^short = "Range temporale nel quale è valida la posologia."
* dosageInstruction.timing.repeat.bounds[x] ^definition = "Range temporale nel quale è valida la posologia."
* dosageInstruction.site ^short = "Sito di somministrazione"
* dosageInstruction.site ^definition = "Sito di somministrazione"
* dosageInstruction.route ^short = "Via di somministrazione"
* dosageInstruction.route ^definition = "Via di somministrazione"
* dosageInstruction.doseAndRate ^short = "Dosaggio e frequenza del farmaco"
* dosageInstruction.doseAndRate ^definition = "Dosaggio e frequenza del farmaco"