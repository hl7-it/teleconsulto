Alias: $brancaPrestazione = https://terminology.agenas.gov.it/ValueSet/brancaPrestazione

Profile: ServiceRequestTelemedicina
Parent: ServiceRequest
Id: ServiceRequestTelemedicina
Description: "Profilo base della ServiceRequest condiviso in tutti i documenti di Telemedicina"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/ServiceRequestTelemedicina"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-04-29T16:08:42+02:00"
* id ^short = "ID logico della risorsa"
* id ^definition = "ID logico della risorsa, come utilizzato nell'URL della risorsa. Una volta assegnato, questo valore non cambia mai."
* id ^comment = "Il valore associato al campo deve rispettare il seguente formalismo:\nPOD.GUID\ndove POD= point of delivery identification"
* identifier ^short = "Identifiicativi associati alle singole istanze della richiesta (Numero ricetta medica)."
* identifier ^definition = "Identifiicativi associati alla singole istanze della richiesta."
* requisition ^short = "Identificativo univoco della richiesta composita"
* requisition ^definition = "Un identificativo condiviso comune a tutte le singole istanze della richiesta, generate contemporaneamente da un singolo autore: rappresenta l'identificativo composito o di gruppo.\n\nPer i casi di richieste di prescrizione rappresenterà l'NRE oppure il numero di ricetta cartacea."
* requisition.type ^short = "Descrizione della tipologia di identificativo"
* requisition.type ^definition = "Codice che specifica come l'identificativo può essere usato."
* requisition.type.coding ^slicing.discriminator.type = #value
* requisition.type.coding ^slicing.discriminator.path = "system"
* requisition.type.coding ^slicing.rules = #open
* requisition.type.coding ^short = "Codice che identifica la tipologia di identificativo"
* requisition.type.coding ^definition = "Codice che identifica la tipologia di identificativo, all'interno del sistema terminologico di riferimento"
* requisition.type.coding contains tipoRicetta 0..1
* requisition.type.coding[tipoRicetta] ^short = "Codice che identifica la tipologia di identificativo, nel caso di prescrizioni"
* requisition.type.coding[tipoRicetta] ^definition = "Codice che identifica la tipologia di identificativo, nel caso di una prescrizione per soggetti stranieri o naviganti"
* requisition.type.coding[tipoRicetta].system = "https://terminology.agenas.gov.it/CodeSystem/tipoRicetta" (exactly)
* requisition.type.coding[tipoRicetta].system ^short = "Identifica il sistema terminologico"
* requisition.type.coding[tipoRicetta].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
* requisition.type.coding[tipoRicetta].code 1..
* requisition.type.coding[tipoRicetta].code from vs-tipo-ricetta (required)
* requisition.type.coding[tipoRicetta].code ^short = "Codice valido per il sistema terminologico di riferimento"
* requisition.type.coding[tipoRicetta].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono disponibili consultando il ValueSet dedicato."
* requisition.system obeys requisition-system
* requisition.system ^short = "Lo spazio dei nomi per il valore dell'identificatore"
* requisition.system ^definition = "Definisce il sistema di codifica in cui i codici sono validi."
* requisition.system ^comment = "Identifier.system è sempre sensibile alle maiuscole e alle minuscole."
* requisition.system ^example.label = "esempio di system"
* requisition.system ^example.valueUri = "http://www.nomeProdottoOFornitore.it/identifiers/requisition"
* requisition.value ^short = "Il valore che è unico"
* requisition.value ^definition = "La parte dell'identificatore tipicamente rilevante per l'utente e che è unica nel contesto del sistema."
* requisition.value ^comment = "Se il valore è un URI completo, il sistema DEVE essere urn:ietf:rfc:3986.  Lo scopo principale del valore è la mappatura computazionale.  Un valore formattato per la visualizzazione umana può essere trasmesso utilizzando l'estensione [Rendered Value] (extension-rendered-value.html). Identifier.value deve essere trattato come sensibile alle maiuscole e alle minuscole, a meno che la conoscenza del sistema di Identifier.non consenta all'elaboratore di essere sicuro che l'elaborazione non sensibile alle maiuscole sia sicura."
* status ^definition = "Stato della richiesta."
* status ^comment = "Lo stato è in genere completamente sotto il controllo del richiedente, che determina se l'ordine è in bozza o attivo e, dopo che è stato attivato, in gara, annullato o sospeso. Gli stati relativi alle attività dell'esecutore si riflettono nell'evento corrispondente (si veda [Event Pattern](event.html) per una discussione generale) o utilizzando la risorsa [Task](task.html)."
* intent ^definition = "Indica l'intento della richiesta, ovvero se si tratta di una proposta, un piano, un ordine originale o un ordine riflesso.\n\nPer i casi d'uso gestiti dell'ambito di questa IG deve essere valorizzato fisso ad order."
* intent ^comment = "Questo elemento è etichettato come modificatore perché l'intento altera quando e come la risorsa è effettivamente applicabile."
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^short = "Classificazione del servizio"
* category ^definition = "Un codice che classifica il servizio"
* category contains brancaPrestazione 0..*
* category[brancaPrestazione].coding ..1
* category[brancaPrestazione].coding from specialita-mediche (preferred)
* category[brancaPrestazione].coding ^short = "Codice definito da un sistema terminologico"
* category[brancaPrestazione].coding ^definition = "Un riferimento a un codice definito da un sistema terminologico"
* category[brancaPrestazione].coding.system = "https://terminology.agenas.gov.it/CodeSystem/brancaPrestazione" (exactly)
* category[brancaPrestazione].coding.system ^short = "Identifica il sistema di terminologia"
* category[brancaPrestazione].coding.system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
* category[brancaPrestazione].coding.code from specialita-mediche (preferred)
* category[brancaPrestazione].coding.code ^short = "Codice valido per il sistema terminologico di riferimento"
* category[brancaPrestazione].coding.code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
* priority ^short = "priorità della richiesta"
* priority ^definition = "Indica la priorità della richiesta."
* priority ^comment = "Si noti che le stringhe FHIR NON devono superare la dimensione di 1MB."
* code ^short = "Cosa viene richiesto/ordinato"
* code ^definition = "Indica cosa è stato richiesto, ovvero il codice della prestazione quando prevista"
* code ^comment = "Molti codici di procedure di laboratorio e radiologiche incorporano il sistema campione/organo nel nome dell'ordine del test, ad esempio il glucosio da siero o da siero/plasma, o una radiografia del torace. Il campione potrebbe non essere registrato separatamente dal codice dell'esame."
* code.coding ^short = "Codice definito da un sistema terminologico"
* code.coding ^definition = "Un riferimento a un codice definito da un sistema terminologico."
* code.coding ^comment = "I codici possono essere definiti in modo molto casuale in enumerazioni o elenchi di codici, fino a definizioni molto formali come SNOMED CT - si vedano i Core Principles di HL7 v3 per maggiori informazioni.  L'ordine dei codici non è definito e NON DEVE essere utilizzato per dedurre il significato. In generale, al massimo uno solo dei valori di codifica sarà etichettato come UserSelected = true."
* orderDetail ^short = "Informazioni aggiuntive sulla richiesta"
* orderDetail ^definition = "Ulteriori dettagli e istruzioni sulla servizi da erogare"
* quantity[x] ^short = "Quantità prestazione"
* quantity[x] ^definition = "Contiene la molteplicità della prestazione."
* subject only Reference(PatientTelemedicina)
* subject ^short = "Reference a Patient"
* subject ^definition = "Elemento di tipo Reference che contiene il riferimento alla risorsa Patient oggetto della richiesta."
* subject ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
* subject.display ^definition = "descrizione della reference"
* encounter ^short = "reference ad Encounter"
* encounter ^definition = "Elemento di tipo Reference che contiene il riferimento alla risorsa Encounter."
* encounter ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
* encounter.display ^definition = "descrizione della reference"
* occurrence[x] ^short = "Quando la richiesta deve essere erogata"
* occurrence[x] ^definition = "Data di erogazione/erogazione desiderata\nTiming: Estensione per la definizione di un timing specifico ad uno specifico orario del giorno/settimana"
* authoredOn ^short = "Data di invio della richiesta."
* authoredOn ^definition = "Nei casi di prescrizione, corrisponde alla data di compilazione della prescrizione."
* requester only Reference(PractitionerRoleTelemedicina)
* requester ^short = "Medico prescrittore."
* requester ^short = "Richiedente richiesta"
* requester ^definition = "Elemento di tipo Reference che contiene il riferimento alla asl e medico richiedente."
* performer ^short = "Esecutori della richiesta"
* performer ^definition = "Elemento di tipo Reference che contiene il riferimento alle risorse Organization, Practitioner, PractitionerRole e HealthCareService."
* performer ^comment = "*La reference ad HealthcareService fornirà indicazioni sulla tipologia di servizio di telemedicina da erogare\n\n*La reference ad Organization fornirà indicazioni sull'asl che erogherà la richiesta\n\n*La reference al Practitioner e PractitioneRole fornirà indicazioni sul medico/operatore erogatore ed il rispettivo ruolo"
* reasonCode ^short = "Codice diagnosi/Quesito diagnostico"
* reasonCode ^definition = "Una spiegazione o giustificazione del motivo per cui viene richiesto il servizio, in forma codificata o testuale."
* reasonCode.coding ^short = "Codifica associata al quesito diagnostico"
* reasonCode.coding ^definition = "Riferimento ad un codice definito in uno specifico sistema terminologico."
* reasonReference only Reference(DiagnosticReportTelemedicina)
* insurance ^short = "Copertura assicurativa associata"
* insurance ^definition = "Elemento di tipo reference utilizzato per indicare il codice esenzione associato alla richiesta.\n\n*Se la reference non riusulta valorizzata, la posizione dell'assistito è da intendersi come NON ESENTE."
* specimen ^short = "Reference usata solo se il campione cui punta la richiesta è già stato prelevato ed esiste."
* note ^short = "Uleriori note"
* note ^definition = "Note o commenti relative alla richiesta."
* note ^comment = "Per i sistemi che non dispongono di annotazioni strutturate, possono semplicemente comunicare una singola annotazione senza autore o tempo.  Questo elemento potrebbe dover essere incluso nella narrativa a causa del potenziale di modifica delle informazioni.  *Le annotazioni NON DEVONO* essere usate per comunicare informazioni \"modificanti\" che potrebbero essere calcolate. (Questo è un DOVERE perché far rispettare il comportamento dell'utente è quasi impossibile)."
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "extension.value"
* code.coding ^slicing.rules = #open
// * code.coding contains
//     codiceNomenclatoreTariffario 0..1 and
//     codiceCatalogoRegionalePrestazione 0..1
// * code.coding[codiceNomenclatoreTariffario] from $catalogoNazionalePrestazioni (preferred)
// * code.coding[codiceNomenclatoreTariffario].extension 1..
// * code.coding[codiceNomenclatoreTariffario].extension contains $extension_serviceRequest_codeCodingType named tipologiaCodificaServizio 1..1
// * code.coding[codiceNomenclatoreTariffario].extension[tipologiaCodificaServizio] ^isModifier = false
// * code.coding[codiceNomenclatoreTariffario].extension[tipologiaCodificaServizio].value[x] = "codiceNomenclatoreTariffario" (exactly)
// * code.coding[codiceNomenclatoreTariffario].system ^short = "Identifica il sistema di terminologia"
// * code.coding[codiceNomenclatoreTariffario].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoNazionalePrestazioni"
// * code.coding[codiceNomenclatoreTariffario].code ^short = "Codice valido per il sistema terminologico di riferimento"
// * code.coding[codiceNomenclatoreTariffario].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
// * code.coding[codiceCatalogoRegionalePrestazione] from $catalogoRegionalePrestazioni (preferred)
// * code.coding[codiceCatalogoRegionalePrestazione].extension 1..
// * code.coding[codiceCatalogoRegionalePrestazione].extension contains $extension_serviceRequest_codeCodingType named tipologiaCodificaServizio 1..1
// * code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio] ^isModifier = false
// * code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio].value[x] = "codiceCatalogoRegionalePrestazione" (exactly)
// * code.coding[codiceCatalogoRegionalePrestazione].system ^short = "Identifica il sistema di terminologia"
// * code.coding[codiceCatalogoRegionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoRegionalePrestazioni"
// * code.coding[codiceCatalogoRegionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
// * code.coding[codiceCatalogoRegionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"


Invariant: requisition-system
Description: "il system deve seguire questa struttura: \"http://www.[nome prodotto o fornitore].it/identifiers/requisition\""
* severity = #error
* expression = "startsWith('http://www') and endsWith('.it/identifiers/requisition')"