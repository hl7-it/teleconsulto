// Profile for MedicationStatement in Telemedicina context
Profile: MedicationStatementTeleconsulto
Parent: MedicationStatement
Id: MedicationStatementTeleconsulto
Title: "MedicationStatement Telemedicina"
Description: "Profilo della MedicationStatement utilizzato nel contesto del Teleconsulto"
* ^status = #draft

// Limit medication to CodeableConcept
* medication[x] only CodeableConcept
* medication[x] ^short = "Definizione farmaco"
* medication[x] ^definition = "Identifica il farmaco oggetto delle medication request."
* medication[x] from https://www.hl7.it/fhir/terminology/ValueSet/aifa-aic (required)
* medication[x] ^binding.strength = #preferred

// Subject must be Telemedicina patient
* subject only Reference(PatientTeleconsulto)

// Optional metadata
* effective[x] 0..1
* note 0..1
* dosage 0..*