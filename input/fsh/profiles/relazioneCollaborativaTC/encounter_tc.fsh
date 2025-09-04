Profile: EncounterTeleconsulto
Parent: Encounter
Id: EncounterTeleconsulto
Description: "Profilo dell'Encounter nel contesto del teleconsulto"
* ^status = #draft
/*
    OSSERVAZIONE: ci sono sltri tipi di indentifier? non penso che abbia troppo senso restringere il system
*/
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier contains codiceNosologico 0..*
// * identifier[codiceNosologico].system = "http://agenas.gov.it/sid/codiceNosologico" (exactly)
* identifier ^short = "Identificativo dell'invonto (es. codice nosologico)."

* status ^short = "Stato attuale dell'incontro."
* status ^definition = "Descrizione attributo: Stato attuale dell'incontro. Possibili valori: planned | arrived | triaged | in-progress | onleave | finished | cancelled"

* class ^short = "Classificazione dell'incontro con il paziente."
* class ^definition = "Concetti che rappresentano la classificazione dell'incontro con il paziente, come ad esempio ambulatorio (paziente esterno), ricovero, emergenza, assistenza sanitaria a domicilio o altri, a causa delle variazioni locali."
* class ^comment = "Classificazione della risorsa. Nel caso della televisita, utilizza\n\n* VR: La vista avvine ein modalità tele"
* class from VSActEncounterCodeExtended

* priority ^short = "Priorità della richiesta."
* priority ^definition = "Indica la priorità della richiesta."

* subject ^short = "Paziente coinvolto nell'incontro."
* subject only Reference(PatientTelemedicina)

* basedOn only Reference(ServiceRequestTC) 
* basedOn ^short = "Richiesta che ha avviato la visita."
* basedOn ^definition = "La richiesta che questa visita soddisfa."

* participant ^short = "Altre figura tecnica coinvolte."
* participant ^definition = "BackboneElement contenente la lista dei coinvolti nella visita oltre al Patient."
* participant ^comment = "In partecipat.individual può essere inserito il riferimento al Practitioner o al PractitionerRole che prende in carico la visita."
* participant.individual only Reference(PractitionerTelemedicina or PractitionerRoleTelemedicina)

* appointment only Reference(AppointmentTelemedicina)
* appointment ^short = "L'appuntamento da cui è partita l'incontro."
* appointment ^definition = "L'appuntamento da cui è partita l'incontro"

* period ^short = "Data di inizio e di fine dell'incontro."
* period ^comment = "Se non è (ancora) nota, la fine del Periodo può essere omessa."

* reasonReference ^short = "Motivo scatenante l'incontro."
//* reasonReference only Reference(ConditionTelemedicina or ProcedureTelemedicina)
* reasonReference only Reference(ProcedureTelemedicina)

* serviceProvider ^short = "Organizzazione che eroga il il servizio."
* serviceProvider ^definition = "Elemento reference che contiene il riferimento alla struttura che eroga la visita, intesa come poliambulatorio"
* serviceProvider only Reference(OrganizationTelemedicina)
