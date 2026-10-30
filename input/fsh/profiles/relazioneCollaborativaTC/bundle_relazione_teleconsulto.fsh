Profile: BundleRelazioneCollaborativaTeleconsulto
Parent: Bundle
Id: BundleRelazioneCollaborativaTeleconsulto
Description: "Bundle FHIR contenente la Relazione Collaborativa di Teleconsulto e le risorse correlate"
* ^status = #draft
* type = #document (exactly)
* type ^short = "Tipologia del Bundle."
* type ^definition = "Indica la tipologia del Bundle. Nel contesto del referto di televisita identifica un Bundle di tipo document."

// Slicing su entry secondo profili usati
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
  composition 1..1 and
  serviceRequest 1..1 and
  patient 1..1 and
  practitionerRole 1..* and
  practitioner 1..* and
  organization 1..* and
  observation 0..* and
  allergyIntolerance 0..* and
  medicationRequest 0..* and
  medicationStatement 0..* and
  encounter 1..1 and
  documentReference 0..* and
  procedure 0..* and 
  appointment 1..1

// Entry slice: composition
* entry[composition].resource only CompositionRelazioneCollaborativaTeleconsulto
* entry[composition].resource 1..

// Entry slice: serviceRequest
* entry[serviceRequest].resource only ServiceRequestRelazioneCollaborativaTeleconsulto
* entry[serviceRequest].resource 1..

// Entry slice: patient
* entry[patient].resource only PatientTeleconsulto
* entry[patient].resource 1..

// Entry slice: practitionerRole
* entry[practitionerRole].resource only PractitionerRoleTeleconsulto
* entry[practitionerRole].resource 1..

// Entry slice: practitioner
* entry[practitioner].resource only PractitionerTeleconsulto
* entry[practitioner].resource 1..

// Entry slice: organization
* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3  
* entry[organization].resource 1..

// Entry slice: observation
* entry[observation].resource only ObservationTeleconsulto
* entry[observation].resource 1..

// Entry slice: allergyIntolerance
* entry[allergyIntolerance].resource only AllergyIntoleranceTeleconsulto
* entry[allergyIntolerance].resource 1..

// Entry slice: medicationRequest
* entry[medicationRequest].resource only MedicationRequestTeleconsulto
* entry[medicationRequest].resource 1..

// Entry slice: medicationStatement
* entry[medicationStatement].resource only MedicationStatementTeleconsulto
* entry[medicationStatement].resource 1..

// Entry slice: encounter
* entry[encounter].resource only EncounterTeleconsulto
* entry[encounter].resource 1..

// Entry slice: encounter
* entry[documentReference].resource only DocumentReference
* entry[documentReference].resource 1..

// Entry slice: procedure
* entry[procedure].resource only ProcedureTeleconsulto
* entry[procedure].resource 1..

// Entry slice: appointment
* entry[appointment].resource only AppointmentTeleconsulto
* entry[appointment].resource 1..
