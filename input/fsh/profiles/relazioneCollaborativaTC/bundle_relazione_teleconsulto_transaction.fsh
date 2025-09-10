// AUTO-GENERATED on 2025-09-10T07:56:48
// Transform of document Bundle profile to transaction Bundle profile

Profile: BundleRelazioneCollaborativaTeleconsultoTransaction
Parent: Bundle
Id: BundleRelazioneCollaborativaTeleconsultoTransaction
Description: "Bundle FHIR transaction per la Relazione Collaborativa di Teleconsulto"
* ^status = #draft
* type = #transaction (exactly)

// Slicing su entry come nel profilo document originale
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
  observation 0..* and
  allergyIntolerance 0..* and
  // condition 0..* and
  // diagnosticReport 0..* and
  medicationRequest 0..* and
  medicationStatement 0..* and
  // imagingStudy 0..* and
  familyMemberHistory 0..* and
  encounter 0..* and
  documentReference 0..* and
  procedure 0..* and 
  appointment 0..1
  //deviceUseStatement 0..*

* entry[composition].resource only CompositionRelazioneCollaborativaTeleconsulto
* entry[serviceRequest].resource only ServiceRequestRelazioneCollaborativaTeleconsulto
* entry[patient].resource only PatientTeleconsulto
* entry[practitionerRole].resource only PractitionerRoleTelemedicina
* entry[practitioner].resource only PractitionerTelemedicina
* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3  
* entry[observation].resource only ObservationTeleconsulto
* entry[allergyIntolerance].resource only AllergyIntoleranceTeleconsulto
* entry[medicationRequest].resource only MedicationRequestTeleconsulto
* entry[medicationStatement].resource only MedicationStatementTeleconsulto
* entry[familyMemberHistory].resource only FamilyMemberHistory
* entry[encounter].resource only EncounterTeleconsulto
* entry[documentReference].resource only DocumentReference
* entry[procedure].resource only ProcedureTeleconsulto
* entry[appointment].resource only AppointmentTeleconsulto

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

// Slice: observation
* entry[observation].request.method = #POST (exactly)


// Slice: allergyIntolerance
* entry[allergyIntolerance].request.method = #POST (exactly)


// Slice: medicationRequest
* entry[medicationRequest].request.method = #POST (exactly)


// Slice: medicationStatement
* entry[medicationStatement].request.method = #POST (exactly)


// Slice: familyMemberHistory
* entry[familyMemberHistory].request.method = #POST (exactly)


// Slice: encounter
* entry[encounter].request.method = #PUT (exactly)


// Slice: documentReference
* entry[documentReference].request.method = #POST (exactly)

// Slice: procedure
* entry[procedure].request.method = #POST (exactly)

// Slice: appointment
* entry[appointment].request.method = #PUT (exactly)


// ==============================
//  Invariants
// ==============================

// Invariant: inv-composition-url
// Severity: #error
// Description: "entry[composition].request.url deve essere esattamente 'Composition'"
// Expression: "entry.where($this is Entry and sliceName()='composition').request.url.matches('^Composition$')"

// Invariant: inv-serviceRequest-url
// Severity: #error
// Description: "entry[serviceRequest].request.url deve essere esattamente 'ServiceRequest'"
// Expression: "entry.where($this is Entry and sliceName()='serviceRequest').request.url.matches('^ServiceRequest$')"

// Invariant: inv-patient-url
// Severity: #error
// Description: "entry[patient].request.url deve iniziare con Patient/.+"
// Expression: "entry.where($this is Entry and sliceName()='patient').request.url.matches('^Patient/.+')"

// Invariant: inv-practitionerRole-url
// Severity: #error
// Description: "entry[practitionerRole].request.url deve iniziare con PractitionerRole/.+"
// Expression: "entry.where($this is Entry and sliceName()='practitionerRole').request.url.matches('^PractitionerRole/.+')"

// Invariant: inv-practitioner-url
// Severity: #error
// Description: "entry[practitioner].request.url deve iniziare con Practitioner/.+"
// Expression: "entry.where($this is Entry and sliceName()='practitioner').request.url.matches('^Practitioner/.+')"

// Invariant: inv-organization-url
// Severity: #error
// Description: "entry[organization].request.url deve iniziare con Organization/.+"
// Expression: "entry.where($this is Entry and sliceName()='organization').request.url.matches('^Organization/.+')"

// Invariant: inv-observation-url
// Severity: #error
// Description: "entry[observation].request.url deve essere esattamente 'Observation'"
// Expression: "entry.where($this is Entry and sliceName()='observation').request.url.matches('^Observation$')"

// Invariant: inv-allergyIntolerance-url
// Severity: #error
// Description: "entry[allergyIntolerance].request.url deve essere esattamente 'AllergyIntolerance'"
// Expression: "entry.where($this is Entry and sliceName()='allergyIntolerance').request.url.matches('^AllergyIntolerance$')"

// Invariant: inv-medicationRequest-url
// Severity: #error
// Description: "entry[medicationRequest].request.url deve essere esattamente 'MedicationRequest'"
// Expression: "entry.where($this is Entry and sliceName()='medicationRequest').request.url.matches('^MedicationRequest$')"

// Invariant: inv-medicationStatement-url
// Severity: #error
// Description: "entry[medicationStatement].request.url deve essere esattamente 'MedicationStatement'"
// Expression: "entry.where($this is Entry and sliceName()='medicationStatement').request.url.matches('^MedicationStatement$')"

// Invariant: inv-familyMemberHistory-url
// Severity: #error
// Description: "entry[familyMemberHistory].request.url deve essere esattamente 'FamilyMemberHistory'"
// Expression: "entry.where($this is Entry and sliceName()='familyMemberHistory').request.url.matches('^FamilyMemberHistory$')"

// Invariant: inv-encounter-url
// Severity: #error
// Description: "entry[encounter].request.url deve iniziare con Encounter/.+"
// Expression: "entry.where($this is Entry and sliceName()='encounter').request.url.matches('^Encounter/.+')"

// Invariant: inv-documentReference-url
// Severity: #error
// Description: "entry[documentReference].request.url deve essere esattamente 'DocumentReference'"
// Expression: "entry.where($this is Entry and sliceName()='documentReference').request.url.matches('^DocumentReference$')"

// Invariant: inv-procedure-url
// Severity: #error
// Description: "entry[procedure].request.url deve essere esattamente 'Procedure'"
// Expression: "entry.where($this is Entry and sliceName()='procedure').request.url.matches('^Procedure$')"

// Invariant: inv-appointment-url
// Severity: #error
// Description: "entry[appointment].request.url deve iniziare con Appointment/.+"
// Expression: "entry.where($this is Entry and sliceName()='appointment').request.url.matches('^Appointment/.+')"
