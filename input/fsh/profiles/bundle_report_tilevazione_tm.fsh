Profile: BundleReportRilevazioniTM
Parent: Bundle
Id: BundleReportRilevazioniTM
Description: "Profilo Bundle utilizzato per il documento di Report Rilevazione di Telemonitoraggio"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry contains
    composition 0..* and
    patient 0..* and
    carePlan 0..* and
    observation 0..*
* entry[composition].resource only CompositionReportRilevazioneTM
* entry[carePlan].resource only CarePlanReportRilevazioneTM
* entry[observation].resource only ObservationTelemedicina