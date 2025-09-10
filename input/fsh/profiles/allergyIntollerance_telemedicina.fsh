Profile: AllergyIntoleranceTeleconsulto
Parent: AllergyIntolerance
Id: AllergyIntoleranceTeleconsulto
Title: "AllergyIntolerance telemedicina"
Description: "Profilo di AllergyIntolerance utilizzata nel contesto del Teleconsulto"
* code 1..1
* code ^short = "Codice dell'allergia o intolleranza"
* code ^definition = "Codice dell'allergia o intolleranza"
* criticality ^short = "Criticità"
* patient only Reference(PatientTeleconsulto)
* reaction.severity ^short = "Gravità della reazione"