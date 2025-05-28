Profile: BundleTesserinoDispositiviTM
Parent: Bundle
Id: BundleTesserinoDispositiviTM
Description: "Profilo del Bundle utilizzato nel contesto del Tesserino Dispositivi"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    device 0..* and
    patietn 1..1 and
    condition 0..* and
    procedure 0..* and
    organization 0..*
* entry[composition].resource only CompositionTesserinoDispositiviTM
* entry[device].resource only DeviceTelemedicina
* entry[patietn].resource only PatientTelemedicina
* entry[patietn].resource.address 1..
* entry[patietn].resource.address ^slicing.discriminator.type = #value
* entry[patietn].resource.address ^slicing.discriminator.path = "use"
* entry[patietn].resource.address ^slicing.rules = #open
* entry[procedure].resource only ProcedureTelemedicina
* entry[organization].resource only OrganizationTelemedicina