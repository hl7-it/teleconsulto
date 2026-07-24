Extension: ModalitaEsecPrestazione
Id: modalitaEsecPrestazione
Title: "Extension Modalità di Esecuzione della Prestazione"
Description: "Extension per specificare la modalità di esecuzione della prestazione, nella Richiesta di Teleconsulto."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only CodeableConcept

Extension: OscuramentoDati
Id: oscuramentodati
Title: "Extension Oscuramento Dati"
Description: "Extension per esprimere la volontà dell'assistito di oscurare i dati."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only boolean


Extension: MedicoSostituto
Id: medicoSostituto
Title: "Extension Medico Sostituto"
Description: "Extension per identificare i dati del medico sostituto."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)