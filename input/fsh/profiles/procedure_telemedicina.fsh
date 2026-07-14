Profile: ProcedureTeleconsulto
Parent: Procedure
Id: ProcedureTeleconsulto
Description:  "Profilo della Procedure utilizzata nel contesto del Teleconsulto"

* ^status = #draft
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-method named ModalitaEsecuzionePrestazione 0..1
* extension[ModalitaEsecuzionePrestazione] ^short = "Modalità esecuzione prestazione: descrive se il teleconsulto è avvenuto in modalità sincrona o asincrona e se in presenza dell'assistito/in assenza dell'assistito"
* extension[ModalitaEsecuzionePrestazione].valueCodeableConcept from vs-modalita-TC (preferred)

* basedOn ^short = "La richiesta su cui si basa questa procedura"
* basedOn ^definition = "Riferimento alla risorsa ServiceRequest che contiene i dettagli della richiesta su cui si basa questa procedura di erogazione."
* basedOn only Reference(ServiceRequestRelazioneCollaborativaTeleconsulto)

* status ^definition = "Elemento di tipo code che contiene un codice che specifica lo stato della procedura. Campo required: http://hl7.org/fhir/event-status"
* status ^comment = "Il codice \"unknown\" non deve essere utilizzato per comunicare altri stati.  Il codice \"unknown\" deve essere usato quando si applica uno degli stati, ma il sistema autore non conosce lo stato attuale della procedura.\n\nQuesto elemento è etichettato come modificatore perché lo stato contiene codici che contrassegnano la risorsa come non valida al momento."

* code ^short = "Prestazione eseguita"
* code ^definition = "CodeableConcept che contiene il codice identificativo e la descrizione della prestazione eseguita"
* code from VsCatalogoNazionalePrestazioni (preferred)
* code.text MS
* code.text ^short = "Descrizione della prestazione eseguita"
* code.coding MS
* code.coding ^short = "Codice della prestazione eseguita"

* subject only Reference(PatientTeleconsulto)
* subject ^short = "Paziente coinvolto nella prestazione"

* performed[x] only Period
* performed[x] ^short = "Data e ora di inizio e fine di erogazione della prestazione"
* performed[x] ^definition = "Contiene la data di esecuzione della prestazione"

* recorder ^short = "Chi ha registrato la procedura"
* recorder ^definition = "Persona che ha registrato la registrazione e si assume la responsabilità del suo contenuto."

* performer ^short = "Professionista sanitario consultato"
* performer.actor only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)

* note ^short = "Note"