Alias: $loinc = http://loinc.org
Alias: $Condition = https://agenas.gov.it/fhir/StructureDefinition/Condition
Alias: $Procedure = https://agenas.gov.it/fhir/StructureDefinition/Procedure

Profile: CompositionTesserinoDispositiviTM
Parent: CompositionTelemedicina
Id: CompositionTesserinoDispositiviTM
Description: "Profilo della Composition utilizzata nel contesto del Tesserino Dispositivi"
* ^status = #draft
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains informazioniDevice 0..1
* section[informazioniDevice] ^sliceName = "informazioniDevice"
* section[informazioniDevice].code = $loinc#104972-5 (exactly)
* section[informazioniDevice].entry only Reference(DeviceUseStatementTelemedicina)


//TODO: make another file
Profile: DeviceUseStatementTelemedicina
Parent: DeviceUseStatement
Id: DeviceUseStatementTelemedicina
Description: "Profilo della DeviceUseStatement che identifica il legame tra l'assistito e il device"
* ^status = #draft
* status = #active
* subject only Reference(PatientTelemedicina)
* timing[x] ^short = "Data di assegnazione del dispositivo al paziente"
* timing[x] only dateTime 
* device only Reference(DeviceTelemedicina)
* reasonReference only Reference(Condition)
