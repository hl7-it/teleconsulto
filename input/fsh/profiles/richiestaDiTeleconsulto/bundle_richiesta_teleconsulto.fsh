Profile: BundleRichiestaTeleconsulto
Parent: Bundle
Id: BundleRichiestaTeleconsulto
Title: "Bundle Richiesta di Teleconsulto"
Description: "Bundle FHIR contenente la richiesta di Teleconsulto e le risorse correlate"
* ^status = #draft
* type = #document (exactly)

// Slicing su entry secondo profili usati
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
  composition 1..1 and
  serviceRequest 1..1 and
  patient 1..1 and
  practitionerRole 0..* and
  practitioner 0..* and
  organization 0..* and
  procedure 0..* //and 
  // appointment 0..1
  //deviceUseStatement 0..*

// Entry slice: composition
* entry[composition].resource only CompositionRichiestaTeleconsulto

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

// Entry slice: procedure
* entry[procedure].resource only ProcedureTelemedicina

// // Entry slice: deviceUseStatement
// * entry[appointment].resource only AppointmentTelemedicina
