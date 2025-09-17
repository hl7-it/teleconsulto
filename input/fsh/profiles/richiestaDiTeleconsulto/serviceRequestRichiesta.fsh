Alias: $extension_serviceRequest_codeCodingType = http://hl7.it/fhir/teleconsulto/StructureDefinition/extension_serviceRequest_codeCodingType
Alias: $catalogoRegionalePrestazioni = https://terminology.agenas.gov.it/ValueSet/catalogoRegionalePrestazioni

Profile: ServiceRequestRichiestaTeleconsulto
Parent: ServiceRequest
Id: ServiceRequestRichiestaTeleconsulto
Description: "Profilo della ServiceRequest utilizzata per la Richiesta di Teleconsulto"
* ^status = #draft

* extension contains OscuramentoDati named oscuramentoDati 0..1
* extension[oscuramentoDati] ^short = "Campo che identifica la volontà del paziente nell'oscurare i propri dati."
//* extension[oscuramentoDati] only boolean

* identifier ^short = "Identifiicativi associati alle singole istanze della richiesta (Numero ricetta medica)."
* identifier ^definition = "Identifiicativi associati alla singole istanze della richiesta."

* requisition 1..
* requisition ^short = "Codice Identificativo della richiesta"
* requisition ^definition = "Un identificativo condiviso comune a tutte le singole istanze della richiesta, generate contemporaneamente da un singolo autore: rappresenta l'identificativo composito o di gruppo.\n\nPer i casi di richieste di prescrizione rappresenterà l'NRE oppure il numero di ricetta cartacea."
* requisition.type ^short = "Descrizione della tipologia di identificativo"
* requisition.type ^definition = "Codice che specifica come l'identificativo può essere usato."
* requisition.type from vs-tipo-ricetta (required)

* status ^short = "Stato della richiesta."
* status ^comment = "Lo stato è in genere completamente sotto il controllo del richiedente, che determina se l'ordine è in bozza o attivo e, dopo che è stato attivato, in gara, annullato o sospeso. Gli stati relativi alle attività dell'esecutore si riflettono nell'evento corrispondente (si veda [Event Pattern](event.html) per una discussione generale) o utilizzando la risorsa [Task](task.html)."

* intent ^short = "Intento della richiesta."
* intent ^definition = "Indica l'intento della richiesta, ovvero se si tratta di una proposta, un piano, un ordine originale o un ordine riflesso.\n\nPer i casi d'uso gestiti dell'ambito di questa IG deve essere valorizzato fisso ad order."
* intent ^comment = "Questo elemento è etichettato come modificatore perché l'intento altera quando e come la risorsa è effettivamente applicabile."

* category 1..
* category ^short = "Branca medico consulente."
* category ^definition = "Un codice che classifica il servizio"
* category from specialita-mediche (preferred)

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

* occurrence[x] ^short = "Slot temporale per la presa in carico della teleconsulenza."
* occurrence[x] ^definition = "Data di erogazione/erogazione desiderata\nTiming: Estensione per la definizione di un timing specifico ad uno specifico orario del giorno/settimana"

* authoredOn ^short = "Data compilazione della ricetta da parte del medico."
* authoredOn ^definition = "Nei casi di prescrizione, corrisponde alla data di compilazione della prescrizione."

* requester only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)
* requester ^short = "Medico richiedente il teleconsulto."
* requester ^definition = "Elemento di tipo Reference che contiene il riferimento alla asl e medico richiedente."

* performer only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)
* performer ^short = "Medici consultati."
* performer ^definition = "Elemento di tipo Reference che contiene il riferimento alle risorse Organization, Practitioner, PractitionerRole e HealthCareService."
* performer ^comment = "*La reference ad HealthcareService fornirà indicazioni sulla tipologia di servizio di telemedicina da erogare\n\n*La reference ad Organization fornirà indicazioni sull'asl che erogherà la richiesta\n\n*La reference al Practitioner e PractitioneRole fornirà indicazioni sul medico/operatore erogatore ed il rispettivo ruolo"

* reasonCode ^short = "Codice diagnosi/Quesito diagnostico."
* reasonCode ^definition = "Una spiegazione o giustificazione del motivo per cui viene richiesto il servizio, in forma codificata o testuale."
* reasonCode from diagnosi-icd9cm

* note ^short = "Uleriori note e indicazioni della prscrizione"
* note ^definition = "Note o commenti relative alla richiesta."
* note ^comment = "Per i sistemi che non dispongono di annotazioni strutturate, possono semplicemente comunicare una singola annotazione senza autore o tempo.  Questo elemento potrebbe dover essere incluso nella narrativa a causa del potenziale di modifica delle informazioni.  *Le annotazioni NON DEVONO* essere usate per comunicare informazioni \"modificanti\" che potrebbero essere calcolate. (Questo è un DOVERE perché far rispettare il comportamento dell'utente è quasi impossibile)."

* insurance ^short = "Istituzione competente del soggetto assicurato da istituzioni estere."

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "extension.value"
* code.coding ^slicing.rules = #open
* code.coding contains codiceCatalogoRegionalePrestazione 0..1 and codiceCatalogoNazionalePrestazione 0..1
* code.coding[codiceCatalogoRegionalePrestazione].system ^short = "Identifica il sistema di terminologia"
* code.coding[codiceCatalogoRegionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoRegionalePrestazioni"
* code.coding[codiceCatalogoRegionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
* code.coding[codiceCatalogoRegionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
* code.coding[codiceCatalogoNazionalePrestazione].code from VsCatalogoNazionalePrestazioni (preferred)
* code.coding[codiceCatalogoNazionalePrestazione].system ^short = "Identifica il sistema di terminologia"
* code.coding[codiceCatalogoNazionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
* code.coding[codiceCatalogoNazionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
* code.coding[codiceCatalogoNazionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
