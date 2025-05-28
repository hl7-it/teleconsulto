Alias: $loinc = http://loinc.org
// Alias: $CarePlan_Report_Rilevazione_TM = https://agenas.gov.it/fhir/StructureDefinition/CarePlan_ReportRilevazioneTM

Profile: CompositionReportRilevazioneTM
Parent: CompositionTelemedicina
Id: CompositionReportRilevazioneTM
Description: "Profilo della Composition utilizzata nel contesto del Report Rilevazione di Telemonitoraggio"
* ^status = #draft
* type = $loinc#64296-7 (exactly)
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    pianoDiCura 0..1   
* section[pianoDiCura] ^sliceName = "pianoDiCura"
* section[pianoDiCura].code = $loinc#18776-5 (exactly)
* section[pianoDiCura].entry only Reference(CarePlanReportRilevazioneTM)