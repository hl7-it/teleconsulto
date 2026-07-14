Profile: ServiceRequestRichiestaTeleconsulto
Parent: ServiceRequest
Id: ServiceRequestRichiestaTeleconsulto
Description: "Profilo della ServiceRequest utilizzata per la Richiesta di Teleconsulto"
* ^status = #draft

* extension contains http://hl7.org/fhir/StructureDefinition/procedure-method named ModalitaEsecuzionePrestazione 0..1 and OscuramentoDati named oscuramentoDati 0..1 and medicoSostituto named medicoSostituto 0..1
* extension[oscuramentoDati] ^short = "Campo che identifica la volontà del paziente nell'oscurare i propri dati."
* extension[medicoSostituto] ^short = "Campo che identifica il medico sostituto."
* extension[ModalitaEsecuzionePrestazione] ^short = "Modalità esecuzione prestazione: descrive se il teleconsulto è avvenuto in modalità sincrona o asincrona e se in presenza dell'assistito/in assenza dell'assistito"
* extension[ModalitaEsecuzionePrestazione].valueCodeableConcept from vs-modalita-TC (preferred)

* requisition 1..
* requisition ^short = "IdRichiesta: codice Identificativo della richiesta"
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

* priority 1..
* priority ^short = "Classe di priorità della richiesta"

* code ^short = "Codice della prestazione richiesta."
* code ^definition = "Elemento di tipo CodeableConcept che contiene il codice identificativo della prestazione richiesta."

* orderDetail ^short = "Informazioni aggiuntive sulla richiesta."
* orderDetail ^definition = "Ulteriori dettagli e istruzioni sulla servizi da erogare."
* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "coding.system"
* orderDetail ^slicing.description = "Slice based on the coding system"
* orderDetail ^slicing.rules = #open
* orderDetail contains raggioDiErogazione 0..1
* orderDetail[raggioDiErogazione] ^short = "Raggio di erogazione della prestazione"
* orderDetail[raggioDiErogazione].coding 1..1
* orderDetail[raggioDiErogazione].coding.system 1..1
* orderDetail[raggioDiErogazione].coding.system = $csRaggioErogazione (exactly)
* orderDetail[raggioDiErogazione] from vs-raggio-erogazione (required)

* quantity[x] ^short = "Quantità prestazione."
* quantity[x] ^definition = "Contiene la molteplicità della prestazione."

* subject only Reference(PatientTeleconsulto)
* subject ^short = "Reference a Patient"
* subject ^definition = "Elemento di tipo Reference che contiene il riferimento alla risorsa Patient oggetto della richiesta."
* subject ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."

* encounter ^short = "Riferimento all'evento del teleconsulto."
* encounter ^definition = "Elemento di tipo Reference che contiene il riferimento alla risorsa Encounter."
* encounter ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
* encounter only Reference(EncounterTeleconsulto)

* occurrence[x] ^short = "Proposta di slot temporale per la presa in carico del teleconsulto."

* authoredOn ^short = "Data compilazione della ricetta da parte del medico."

* requester 1..
* requester only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)
* requester ^short = "Medico prescrittore (definito anche medico titolare della richiesta)"
* requester ^definition = "Elemento di tipo Reference che contiene il riferimento al medico prescrittore."

* performer 1..
* performer only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)
* performer ^short = "Medico richiesto per la consulenza."
* performer ^definition = "Dati del medico richiesto per la consulenza se espressamente richiesto uno specifico specialista disponibile su piattaforme regionali di telemedicina"
* performer ^comment = "*La reference ad HealthcareService fornirà indicazioni sulla tipologia di servizio di telemedicina da erogare\n\n*La reference ad Organization fornirà indicazioni sull'asl che erogherà la richiesta\n\n*La reference al Practitioner e PractitioneRole fornirà indicazioni sul medico/operatore erogatore ed il rispettivo ruolo"

* reasonCode ^short = "Codice diagnosi/Quesito diagnostico."
* reasonCode ^definition = "Una spiegazione o giustificazione del motivo per cui viene richiesto il servizio, in forma codificata o testuale."
* reasonCode from diagnosi-icd9cm

* note ^short = "Uleriori note e indicazioni della prescrizione"
* note ^definition = "Note o commenti relative alla richiesta."

* insurance ^short = "Assicurazione / Esenzioni."
* insurance only Reference(CoverageTeleconsulto)


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
