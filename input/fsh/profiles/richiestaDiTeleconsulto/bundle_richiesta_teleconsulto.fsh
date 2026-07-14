Profile: BundleRichiestaTeleconsulto
Parent: Bundle
Id: BundleRichiestaTeleconsulto
Description: "Bundle FHIR contenente la richiesta di Teleconsulto e le risorse correlate"
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
  serviceRequest 1..* and
  patient 1..1 and
  practitionerRole 0..* and
  practitioner 0..* and
  organization 0..* and
  observation 0..* and
  appointment 1..*
  //deviceUseStatement 0..*

// Entry slice: composition
* entry[composition].resource only CompositionRichiestaTeleconsulto

// Entry slice: serviceRequest
* entry[serviceRequest].resource only ServiceRequestRelazioneCollaborativaTeleconsulto

// Entry slice: patient
* entry[patient].resource only PatientTeleconsulto

// Entry slice: practitionerRole
* entry[practitionerRole].resource only PractitionerRoleTeleconsulto

// Entry slice: practitioner
* entry[practitioner].resource only PractitionerTeleconsulto

// Entry slice: organization
* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3 

// Entry slice: organization
* entry[observation].resource only ObservationTeleconsulto 

// Entry slice: deviceUseStatement
* entry[appointment].resource only AppointmentTeleconsulto
