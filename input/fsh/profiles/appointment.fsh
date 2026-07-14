//Alias: $serviceRequest_tm = http://hl7.it/fhir/teleconsulto/StructureDefinition/ServiceRequestTV

Profile: AppointmentTeleconsulto
Parent: Appointment
Id: AppointmentTeleconsulto
Description: "Profilo di Appointment utilizzato nel contesto del Teleconsulto"
* ^status = #draft
* ^date = "2023-10-18T12:01:35+02:00"
* identifier ^short = "Codice CUP della prenotazione"
* identifier ^definition = "Elemento di tipo identifier contenente gli identificativi univoci della risorsa."

* serviceCategory ^definition = "Categorizzazione del servizio erogato durante l'appuntamento."

* reasonCode ^short = "Motivo codificato per cui è stato fissato l'appuntamento"
* reasonCode ^definition = "Elemento di tipo CodableConcept che contiene l'informazione per cui nasce l'Appointment."

* start ^short = "Data di pianificazione della consulenza"
* start ^definition = "Contiene la data nella quale è pianificato l'appuntamento."
* start ^comment = "Nota: questa opzione è destinata ai casi in cui è necessario osservare con precisione gli orari, tipicamente i log di sistema e così via, e non gli orari riferiti dall'uomo; per questi ultimi, vedere date e dateTime (che può essere preciso come un istante, ma non è necessario che lo sia). Il fuso orario è sempre richiesto"

* end ^short = "Data e ora in cui si conclude l'appuntamento"
* end ^definition = "Data/ora in cui l'appuntamento si conclude.  Le date possono essere omesse in caso di status proposed o cancelled."
* end ^comment = "Nota: questa opzione è destinata ai casi in cui è necessario osservare con precisione gli orari, tipicamente i log di sistema e così via, e non gli orari riferiti dall'uomo; per questi ultimi, vedere date e dateTime (che può essere preciso come un istante, ma non è necessario che lo sia). Il fuso orario è sempre richiesto"

* created ^short = "Data della presa in carico della consulenza"
* created ^definition = "Elemento di tipo dateTime che contiene la data di presa in carico della consulenza"
* created ^comment = "Questa proprietà è necessaria per molti casi d'uso in cui l'età di un appuntamento viene considerata nell'elaborazione dei flussi di lavoro per la programmazione e la fatturazione degli appuntamenti."

* basedOn 1..
* basedOn only Reference(ServiceRequestRichiestaTeleconsulto)

* priority ^short = "Richiesta disponibilità immediata"
* priority ^definition = "Richiesta di disponibilità immediata dell'attivazione della consulenza (compatibile solo con urgenza alta)"

* basedOn ^short = "Richiesta che ha avviato il teleconsulto."
* basedOn ^definition = "La richiesta che questa prestazione soddisfa."
* basedOn ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la temporanea indisponibilità, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."

* participant ^short = "Partecipanti coinvolti nell'appuntamento"
* participant ^definition = "BackboneElement contenente la lista dei coinvolti nella visita (Patient e PractitionerRole)."
* participant.actor ^short = "Reference a partecipante coinvolto nell'appuntamento"
