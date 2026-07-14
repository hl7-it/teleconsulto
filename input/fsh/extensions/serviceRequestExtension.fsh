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