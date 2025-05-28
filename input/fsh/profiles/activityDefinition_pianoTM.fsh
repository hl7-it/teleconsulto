//Alias: $Timing = https://agenas.gov.it/fhir/StructureDefinition/Timing
//Alias: $ObservationDefinition_PianoTM = https://agenas.gov.it/fhir/StructureDefinition/ObservationDefinition_PianoTM
//Alias: $catalogoNazionalePrestazioni = https://terminology.agenas.gov.it/ValueSet/catalogoNazionalePrestazioni

Profile: ActivityDefinitionPianoTM
Parent: ActivityDefinition
Id: ActivityDefinitionPianoTM
Description: "Profilo dell'ActivityDefinition utilizzato nel contesto di Telemonitoraggio"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/ActivityDefinitionPianoTM"
* ^status = #draft
* description ^short = "Descrizione attività"
* description ^definition = "Descrizione attività"
* code from ValueSetCatalogoNazionalePrestazioni (example)
* code ^short = "Codice della prestazione pianificata"
* code ^definition = "Codice della prestazione pianificata"
* timing[x] only TimingTelemedicina or dateTime or Age or Period or Range or Duration
* observationRequirement only Reference(ObservationDefinitionPianoTM)
* observationRequirement ^short = "Parametri da rilevare"
* observationRequirement ^definition = "Elenco di parametri da rilevare durante il telemonitoraggio."