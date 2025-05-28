Profile: BundlePianoTeleassistenza
Parent: Bundle
Id: BundlePianoTeleassistenza
Description: "Profilo del Bundle utilizzato nel contesto della Piano di Teleassistenza"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/BundlePianoTeleassistenza"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    carePlan 0..* and
    patient 1..1 and
    practitionerRole 0..* and
    organization 0..* and
    practitioner 0..* and
    activityDefinition 0..*
* entry[composition].resource only CompositionPianoTA
* entry[carePlan].resource only CarePlanPianoDiCuraTA
* entry[patient].resource only PatientTelemedicina
* entry[patient].resource.address 1..
* entry[patient].resource.address ^slicing.discriminator.type = #value
* entry[patient].resource.address ^slicing.discriminator.path = "use"
* entry[patient].resource.address ^slicing.rules = #open
* entry[practitionerRole].resource only PractitionerRoleTelemedicina
* entry[organization].resource only OrganizationTelemedicina
* entry[practitioner].resource only PractitionerTelemedicina
* entry[practitioner].resource.identifier ^slicing.discriminator.type = #pattern
* entry[practitioner].resource.identifier ^slicing.discriminator.path = "$this"
* entry[practitioner].resource.identifier ^slicing.description = "Slice based on the identifier pattern"
* entry[practitioner].resource.identifier ^slicing.rules = #open
//TODO: define a new ActivityDefinition
* entry[activityDefinition].resource only ActivityDefinition