Alias: $extension_serviceRequest_codeCodingType = http://hl7.it/fhir/teleconsulto/StructureDefinition/extension_serviceRequest_codeCodingType
Alias: $catalogoRegionalePrestazioni = https://terminology.agenas.gov.it/ValueSet/catalogoRegionalePrestazioni

Profile: ServiceRequestRelazioneCollaborativaTeleconsulto
Parent: ServiceRequest
Id: ServiceRequestRelazioneCollaborativaTeleconsulto
Description: "Profilo della ServiceRequest utilizzata per la relazione finale di Teleconsulto"
* ^status = #draft

* identifier ^short = "Identifiicativi associati alle singole istanze della richiesta (Numero ricetta medica)."
* identifier ^definition = "Identifiicativi associati alla singole istanze della richiesta."

* requisition 1..
* requisition ^short = "Identificativo univoco della richiesta composita"
* requisition ^definition = "Un identificativo condiviso comune a tutte le singole istanze della richiesta, generate contemporaneamente da un singolo autore: rappresenta l'identificativo composito o di gruppo.\n\nPer i casi di richieste di prescrizione rappresenterà l'NRE oppure il numero di ricetta cartacea."
* requisition.type ^short = "Descrizione della tipologia di identificativo"
* requisition.type ^definition = "Codice che specifica come l'identificativo può essere usato."
* requisition.type from vs-tipo-ricetta (required)

/*
    OSSERVAZIONE: non penso ci sia bisogno dio fare una slice per un solo elemento
*/
// * requisition.type.coding ^slicing.discriminator.type = #value
// * requisition.type.coding ^slicing.discriminator.path = "system"
// * requisition.type.coding ^slicing.rules = #open
// * requisition.type.coding ^short = "Codice che identifica la tipologia di identificativo"
// * requisition.type.coding ^definition = "Codice che identifica la tipologia di identificativo, all'interno del sistema terminologico di riferimento"
// * requisition.type.coding contains tipoRicetta 0..1
// * requisition.type.coding[tipoRicetta] ^short = "Codice che identifica la tipologia di identificativo, nel caso di prescrizioni"
// * requisition.type.coding[tipoRicetta] ^definition = "Codice che identifica la tipologia di identificativo, nel caso di una prescrizione per soggetti stranieri o naviganti"
// * requisition.type.coding[tipoRicetta].system = "https://terminology.agenas.gov.it/CodeSystem/tipoRicetta" (exactly)
// * requisition.type.coding[tipoRicetta].system ^short = "Identifica il sistema terminologico"
// * requisition.type.coding[tipoRicetta].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
// * requisition.type.coding[tipoRicetta].code 1..
// * requisition.type.coding[tipoRicetta].code from vs-tipo-ricetta (required)
// * requisition.type.coding[tipoRicetta].code ^short = "Codice valido per il sistema terminologico di riferimento"
// * requisition.type.coding[tipoRicetta].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono disponibili consultando il ValueSet dedicato."

/*
    OSSERVAZIONE: NON PENSO SIA NECESSARIO ANDARE A DEFINIRE UNA RULE PER IL SYSTEM
*/
//* requisition.system obeys requisition-system

* status ^short = "Stato della richiesta."
* status ^comment = "Lo stato è in genere completamente sotto il controllo del richiedente, che determina se l'ordine è in bozza o attivo e, dopo che è stato attivato, in gara, annullato o sospeso. Gli stati relativi alle attività dell'esecutore si riflettono nell'evento corrispondente (si veda [Event Pattern](event.html) per una discussione generale) o utilizzando la risorsa [Task](task.html)."

* intent ^short = "Intento della richiesta."
* intent ^definition = "Indica l'intento della richiesta, ovvero se si tratta di una proposta, un piano, un ordine originale o un ordine riflesso.\n\nPer i casi d'uso gestiti dell'ambito di questa IG deve essere valorizzato fisso ad order."
* intent ^comment = "Questo elemento è etichettato come modificatore perché l'intento altera quando e come la risorsa è effettivamente applicabile."

/*
    OSSERVAZIONE: anche in questo caso non vedo la necessità di una slice
*/
// * category ^slicing.discriminator.type = #value
// * category ^slicing.discriminator.path = "coding.system"
// * category ^slicing.rules = #open
* category ^short = "Classificazione del servizio."
* category ^definition = "Un codice che classifica il servizio"
* category from specialita-mediche (preferred)
// * category contains brancaPrestazione 0..*
// * category[brancaPrestazione].coding ..1
// * category[brancaPrestazione].coding from specialita-mediche (preferred)
// * category[brancaPrestazione].coding ^short = "Codice definito da un sistema terminologico"
// * category[brancaPrestazione].coding ^definition = "Un riferimento a un codice definito da un sistema terminologico"
// * category[brancaPrestazione].coding.system = "https://terminology.agenas.gov.it/CodeSystem/brancaPrestazione" (exactly)
// * category[brancaPrestazione].coding.system ^short = "Identifica il sistema di terminologia"
// * category[brancaPrestazione].coding.system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
// * category[brancaPrestazione].coding.code from specialita-mediche (preferred)
// * category[brancaPrestazione].coding.code ^short = "Codice valido per il sistema terminologico di riferimento"
// * category[brancaPrestazione].coding.code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"


* priority ^short = "priorità della richiesta"
* priority ^definition = "Indica la priorità della richiesta."
* priority ^comment = "Si noti che le stringhe FHIR NON devono superare la dimensione di 1MB."

* code ^short = "Cosa viene richiesto/ordinato."
* code ^definition = "Indica cosa è stato richiesto, ovvero il codice della prestazione quando prevista"
* code ^comment = "Molti codici di procedure di laboratorio e radiologiche incorporano il sistema campione/organo nel nome dell'ordine del test, ad esempio il glucosio da siero o da siero/plasma, o una radiografia del torace. Il campione potrebbe non essere registrato separatamente dal codice dell'esame."

* orderDetail ^short = "Informazioni aggiuntive sulla richiesta."
* orderDetail ^definition = "Ulteriori dettagli e istruzioni sulla servizi da erogare."

* quantity[x] ^short = "Quantità prestazione."
* quantity[x] ^definition = "Contiene la molteplicità della prestazione."

* subject only Reference(PatientTeleconsulto)
* subject ^short = "Reference a Patient"
* subject ^definition = "Elemento di tipo Reference che contiene il riferimento alla risorsa Patient oggetto della richiesta."
* subject ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."

* encounter ^short = "Riferimento all'evento del teleconsulto (teleconsulto sincrono)."
* encounter ^definition = "Elemento di tipo Reference che contiene il riferimento alla risorsa Encounter."
* encounter ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
* encounter only Reference(EncounterTeleconsulto)

* occurrence[x] ^short = "Momento della ricezione della richiesta di teleconsulto."
* occurrence[x] ^definition = "Data di erogazione/erogazione desiderata\nTiming: Estensione per la definizione di un timing specifico ad uno specifico orario del giorno/settimana"

* authoredOn ^short = "Data di invio della richiesta."
* authoredOn ^definition = "Nei casi di prescrizione, corrisponde alla data di compilazione della prescrizione."

* requester only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)
* requester ^short = "Medico richiedente."
* requester ^definition = "Elemento di tipo Reference che contiene il riferimento alla asl e medico richiedente."

* performer only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)
* performer ^short = "Esecutori della richiesta."
* performer ^definition = "Elemento di tipo Reference che contiene il riferimento alle risorse Organization, Practitioner, PractitionerRole e HealthCareService."
* performer ^comment = "*La reference ad HealthcareService fornirà indicazioni sulla tipologia di servizio di telemedicina da erogare\n\n*La reference ad Organization fornirà indicazioni sull'asl che erogherà la richiesta\n\n*La reference al Practitioner e PractitioneRole fornirà indicazioni sul medico/operatore erogatore ed il rispettivo ruolo"

* reasonCode ^short = "Codice diagnosi/Quesito diagnostico."
* reasonCode ^definition = "Una spiegazione o giustificazione del motivo per cui viene richiesto il servizio, in forma codificata o testuale."

//* reasonReference only Reference(DiagnosticReportTelemedicina)
// * insurance ^short = "Copertura assicurativa associata"
// * insurance ^definition = "Elemento di tipo reference utilizzato per indicare il codice esenzione associato alla richiesta.\n\n*Se la reference non riusulta valorizzata, la posizione dell'assistito è da intendersi come NON ESENTE."

* note ^short = "Uleriori note"
* note ^definition = "Note o commenti relative alla richiesta."
* note ^comment = "Per i sistemi che non dispongono di annotazioni strutturate, possono semplicemente comunicare una singola annotazione senza autore o tempo.  Questo elemento potrebbe dover essere incluso nella narrativa a causa del potenziale di modifica delle informazioni.  *Le annotazioni NON DEVONO* essere usate per comunicare informazioni \"modificanti\" che potrebbero essere calcolate. (Questo è un DOVERE perché far rispettare il comportamento dell'utente è quasi impossibile)."


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "extension.value"
* code.coding ^slicing.rules = #open
// OSSERVAZIONE: non penso abbia senso l'extension
* code.coding contains codiceCatalogoRegionalePrestazione 0..1 and codiceCatalogoNazionalePrestazione 0..1
// * code.coding[codiceCatalogoRegionalePrestazione].extension 1..
// * code.coding[codiceCatalogoRegionalePrestazione].extension contains $extension_serviceRequest_codeCodingType named tipologiaCodificaServizio 1..1
// * code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio] ^isModifier = false
// * code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio].value[x] = "codiceCatalogoRegionalePrestazione" (exactly)
//TODO: che binding per il catalogo Regionale??
* code.coding[codiceCatalogoRegionalePrestazione].system ^short = "Identifica il sistema di terminologia"
* code.coding[codiceCatalogoRegionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoRegionalePrestazioni"
* code.coding[codiceCatalogoRegionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
* code.coding[codiceCatalogoRegionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
* code.coding[codiceCatalogoNazionalePrestazione].code from VsCatalogoNazionalePrestazioni (preferred)
* code.coding[codiceCatalogoNazionalePrestazione].system ^short = "Identifica il sistema di terminologia"
* code.coding[codiceCatalogoNazionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
* code.coding[codiceCatalogoNazionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
* code.coding[codiceCatalogoNazionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"



Invariant: requisition-system
Description: "il system deve seguire questa struttura: \"http://www.[nome prodotto o fornitore].it/identifiers/requisition\""
* severity = #error
* expression = "startsWith('http://www') and endsWith('.it/identifiers/requisition')"
