// AUTO-GENERATED from bundle_richiesta_teleconsulto.fsh on 2025-09-10T08:04:26

Profile: BundleRichiestaTeleconsultoTransaction
Parent: Bundle
Id: BundleRichiestaTeleconsultoTransaction
Description: "Bundle FHIR contenente la richiesta di Teleconsulto e le risorse correlate (TRANSACTION: cliniche in POST, amministrative in PUT)"
* ^status = #draft
* type = #transaction (exactly)

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
  composition 1..1 and
  serviceRequest 1..* and
  patient 1..1 and
  practitionerRole 1..* and
  practitioner 1..* and
  organization 0..* and
  procedure 0..* and  //and
  appointment 1..*

* entry[composition].resource only CompositionRichiestaTeleconsulto
* entry[serviceRequest].resource only ServiceRequestRelazioneCollaborativaTeleconsulto
* entry[patient].resource only PatientTeleconsulto
* entry[practitionerRole].resource only PractitionerRoleTeleconsulto
* entry[practitioner].resource only PractitionerTeleconsulto
* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3 
* entry[appointment].resource only AppointmentTeleconsulto

// ==============================
//  Vincoli transaction per slice
// ==============================

// Slice: composition
* entry[composition].request.method = #POST (exactly)

// Slice: serviceRequest
* entry[serviceRequest].request.url 1..1

// Slice: patient
* entry[patient].request.method = #PUT (exactly)

// Slice: practitionerRole
* entry[practitionerRole].request.method = #PUT (exactly)

// Slice: practitioner
* entry[practitioner].request.method = #PUT (exactly)

// Slice: organization
* entry[organization].request.method = #PUT (exactly)

// Slice: appointment
* entry[appointment].request.method = #PUT (exactly)




