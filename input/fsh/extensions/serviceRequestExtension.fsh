Extension: OscuramentoDati
Id: oscuramentodati
Title: "Extension Oscuramento Dati"
Description: "Extension per esprimere la volontà dell'assistito di oscurare i dati."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only boolean


Extension: MedicoTitolare
Id: medicoTitolare
Title: "Extension Medico Titolare"
Description: "Extension per identificare i dati del medico titolare."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only Reference