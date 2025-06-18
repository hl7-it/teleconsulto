Alias: $ServiceRequest = https://agenas.gov.it/fhir/StructureDefinition/ServiceRequestTelemedicina
Alias: $extension_serviceRequest_codeCodingType = https://agenas.gov.it/fhir/StructureDefinition/extension_serviceRequest_codeCodingType
Alias: $catalogoRegionalePrestazioni = https://terminology.agenas.gov.it/ValueSet/catalogoRegionalePrestazioni

Profile: ServiceRequestTC
Parent: ServiceRequest
Id: ServiceRequestTC
Description: "Profilo  della ServiceRequest utilizzata per la relazione finale di Teleconsulto"
* ^status = #draft
* identifier ^short = "Identificativo della richiesta di teleconsulto."

* identifier ^short = "Numero ricetta medica (NRE)"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "extension.value"
* code.coding ^slicing.rules = #open
* code.coding contains codiceCatalogoRegionalePrestazione 0..1 // and codiceCatalogoNazionalePrestazione 0..1
* code.coding[codiceCatalogoRegionalePrestazione].extension 1..
* code.coding[codiceCatalogoRegionalePrestazione].extension contains $extension_serviceRequest_codeCodingType named tipologiaCodificaServizio 1..1
* code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio] ^isModifier = false
* code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio].value[x] = "codiceCatalogoRegionalePrestazione" (exactly)
* code.coding[codiceCatalogoRegionalePrestazione].system ^short = "Identifica il sistema di terminologia"
* code.coding[codiceCatalogoRegionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoRegionalePrestazioni"
* code.coding[codiceCatalogoRegionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
* code.coding[codiceCatalogoRegionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"

* requester ^short = "Medico richiedente" 
* requester only Reference(PractitionerTelemedicina)

* performer ^short = "Medico consultato" 
* performer only Reference(PractitionerTelemedicina)

* authoredOn ^short = "Data di ricezione della richiesta di teleconsulto"

// * code.coding[codiceCatalogoNazionalePrestazione] from VsCatalogoNazionalePrestazioni (preferred)
// * code.coding[codiceCatalogoNazionalePrestazione].system ^short = "Identifica il sistema di terminologia"
// * code.coding[codiceCatalogoNazionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
// * code.coding[codiceCatalogoNazionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
// * code.coding[codiceCatalogoNazionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
