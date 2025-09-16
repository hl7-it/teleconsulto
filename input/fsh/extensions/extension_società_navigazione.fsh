Extension: ItSocietaNavigazione
Id: it-societa-navigazione
Title: "Società di Navigazione"
Description: "Extension per indicare la Società di Navigazione."
Context: Patient
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only Reference(Organization)
* valueReference 1..1
