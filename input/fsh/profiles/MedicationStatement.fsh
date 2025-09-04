// Profile for MedicationStatement in Telemedicina context
Profile: MedicationStatementTelemedicina
Parent: MedicationStatement
Id: MedicationStatementTelemedicina
Title: "MedicationStatement Telemedicina"
Description: "Profilo base della MedicationStatement condiviso in tutti i documenti di Telemedicina"
* ^status = #draft

// Limit medication to CodeableConcept
* medication[x] only CodeableConcept
* medication[x] ^mustSupport = true

// Subject must be Telemedicina patient
* subject only Reference(PatientTelemedicina)

// Optional metadata
* effective[x] 0..1
* note 0..1
* dosage 0..*