// Profile for MedicationStatement in Telemedicina context
Profile: MedicationStatementTeleconsulto
Parent: MedicationStatement
Id: MedicationStatementTeleconsulto
Title: "MedicationStatement Telemedicina"
Description: "Profilo della MedicationStatement utilizzato nel contesto del Teleconsulto"
* ^status = #draft

// Limit medication to CodeableConcept
* medication[x] only CodeableConcept
* medication[x] ^mustSupport = true

// Subject must be Telemedicina patient
* subject only Reference(PatientTeleconsulto)

// Optional metadata
* effective[x] 0..1
* note 0..1
* dosage 0..*