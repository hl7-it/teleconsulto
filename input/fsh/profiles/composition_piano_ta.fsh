Alias: $loinc = http://loinc.org
Alias: $CarePlan_PianoDiCura_TM = https://agenas.gov.it/fhir/StructureDefinition/CarePlan_PianoDiCura_TM
Alias: $Observation = https://agenas.gov.it/fhir/StructureDefinition/Observation

Profile: CompositionPianoTA
Parent: CompositionTelemedicina
Id: CompositionPianoTA
Description: "Profilo della Composition utilizzata nel contesto della Piano di Teleassistenza"
* ^status = #draft
* type ^definition = "Campo che specifica il particolare tipo di Composition."
* subject ^definition = "Il soggetto a cui si riferisce la Composition, ad esempio un paziente sottoposto a monitoraggio remoto"
* author ^definition = "Identifica chi è responsabile delle informazioni nella Composition, non necessariamente chi le ha inserite."
* title = "Piano di Telemonitoraggio" (exactly)
* title ^definition = "Titolo human-readable ufficiale per la Composition."

//Section

* section
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.section"
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.entry"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* section contains
    pianoDiCura 0..1 and
    diagnosi 0..1
* section[pianoDiCura] ^sliceName = "pianoDiCura"
* section[pianoDiCura].code = $loinc#18776-5 (exactly)
* section[pianoDiCura].entry only Reference(CarePlanPianoDiCuraTA)
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5 (exactly)
* section[diagnosi].entry only Reference(ObservationTelemedicina)