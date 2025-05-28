Profile: BundleRelazioneCollaborativaTeleconsulto
Parent: Bundle
Id: BundleRelazioneCollaborativaTeleconsulto
Title: "Bundle Relazione Collaborativa Teleconsulto"
Description: "Bundle FHIR contenente la Relazione Collaborativa di Teleconsulto e le risorse correlate"
* ^status = #draft
* type = #document (exactly)

// Slicing su entry secondo profili usati
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open

* entry contains
  composition 1..1 and
  serviceRequest 1..1 and
  patient 1..1 and
  practitionerRole 0..* and
  practitioner 0..* and
  organization 0..* and
  observation 0..* and
  allergyIntolerance 0..* and
  condition 0..* and
  diagnosticReport 0..* and
  medicationRequest 0..* and
  medicationStatement 0..* and
  imagingStudy 0..* and
  familyMemberHistory 0..* and
  encounter 0..* and
  procedure 0..* and
  deviceUseStatement 0..*

// Entry slice: composition
* entry[composition].resource only CompositionRelazioneCollaborativaTeleconsulto

// Entry slice: serviceRequest
* entry[serviceRequest].resource only ServiceRequestTC

// Entry slice: patient
* entry[patient].resource only PatientTelemedicina

// Entry slice: practitionerRole
* entry[practitionerRole].resource only PractitionerRoleTelemedicina

// Entry slice: practitioner
* entry[practitioner].resource only PractitionerTelemedicina

// Entry slice: organization
* entry[organization].resource only OrganizationTelemedicina

// Entry slice: observation
* entry[observation].resource only ObservationTelemedicina

// Entry slice: allergyIntolerance
* entry[allergyIntolerance].resource only AllergyIntoleranceTelemedicina

// Entry slice: condition
* entry[condition].resource only ConditionTelemedicina

// Entry slice: diagnosticReport
* entry[diagnosticReport].resource only DiagnosticReportTelemedicina

// Entry slice: medicationRequest
* entry[medicationRequest].resource only MedicationRequestTelemedicina

// Entry slice: medicationStatement
* entry[medicationStatement].resource only MedicationStatementTelemedicina

// Entry slice: imagingStudy
* entry[imagingStudy].resource only ImagingStudy

// Entry slice: familyMemberHistory
* entry[familyMemberHistory].resource only FamilyMemberHistory

// Entry slice: encounter
* entry[encounter].resource only EncounterTelemedicina

// Entry slice: procedure
* entry[procedure].resource only ProcedureTelemedicina

// Entry slice: deviceUseStatement
* entry[deviceUseStatement].resource only DeviceUseStatementTelemedicina
