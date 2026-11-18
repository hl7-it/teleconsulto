// AUTO-GENERATED from bundle_richiesta_teleconsulto.fsh on 2025-09-10T08:04:26

Profile: BundleRichiestaTeleconsultoTransaction
Parent: Bundle
Id: BundleRichiestaTeleconsultoTransaction
Description: "Bundle FHIR contenente la richiesta di Teleconsulto e le risorse correlate (TRANSACTION: cliniche in POST, amministrative in PUT)"
* ^status = #draft
* type = #transaction (exactly)
* type ^short = "Tipo del Bundle: transaction."
* type ^definition = "Il Bundle è di tipo transaction: ogni entry contiene un elemento request con method e url per l'operazione da eseguire sul server FHIR."

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
  appointment 1..*

* entry[composition].resource only CompositionRichiestaTeleconsulto
* entry[serviceRequest].resource only ServiceRequestRichiestaTeleconsulto
* entry[patient].resource only PatientTeleconsulto
* entry[patient].resource 1..
* entry[practitionerRole].resource only PractitionerRoleTeleconsulto
* entry[practitionerRole].resource 1..
* entry[practitioner].resource only PractitionerTeleconsulto
* entry[practitioner].resource 1..
* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3 
* entry[organization].resource 1..
* entry[appointment].resource only AppointmentTeleconsulto
* entry[appointment].resource 1..

// ==============================
//  Vincoli transaction per slice
// ==============================

// Slice: composition
* entry[composition].request.method = #POST (exactly)

// Slice: serviceRequest
* entry[serviceRequest].request.method = #POST (exactly)

// Slice: patient
* entry[patient].request.method = #PUT (exactly)

// Slice: practitionerRole
* entry[practitionerRole].request.method = #PUT (exactly)

// Slice: practitioner
* entry[practitioner].request.method = #PUT (exactly)

// Slice: organization
* entry[organization].request.method = #PUT (exactly)



