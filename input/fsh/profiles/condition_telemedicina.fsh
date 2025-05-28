Alias: $Patient = https://agenas.gov.it/fhir/StructureDefinition/Patient

Profile: ConditionTelemedicina
Parent: Condition
Id: ConditionTelemedicina
Description: "Profilo base della Condition condiviso in tutti i documenti di Telemedicina"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/ConditionTelemedicina"
* ^status = #draft
* ^date = "2024-04-29T16:08:42+02:00"
* meta ^short = "Metadati della risorsa"
* meta ^definition = "Metadati della risorsa"
* identifier ^short = "Identificativo business della risorsa"
* identifier ^definition = "Identificativo business della risorsa"
* clinicalStatus ^definition = "Stato clinico della condition"
* verificationStatus ^definition = "Stato di verifica della condition"
* code ^short = "Codice della diagnosi"
* code ^definition = "Codice della diagnosi"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains codificaICD9cm 0..1  
* code.coding[codificaICD9cm] ^sliceName = "codificaICD9cm"
* code.coding[codificaICD9cm] ^short = "Codifica associata al quesito diagnostico"
* code.coding[codificaICD9cm] ^definition = "Riferimento ad un codice definito nel sistema terminologico ICD9cm."
* code.coding[codificaICD9cm].system = "http://terminology.hl7.org/CodeSystem/icd9cm" (exactly)
* code.coding[codificaICD9cm].code ^definition = "Codice che identifica il quesito diagnostico valido all'interno della codifica ICD9cm"
* subject only Reference(PatientTelemedicina)
* subject ^short = "Soggetto della diagnosi"
* subject ^definition = "Indica il soggetto della diagnosi"
* encounter only Reference(EncounterTelemedicina)