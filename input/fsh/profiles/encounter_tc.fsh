Profile: EncounterTeleconsulto
Parent: Encounter
Id: EncounterTeleconsulto
Description: "Profilo dell'Encounter utilizzato nel contesto del Teleconsulto"
* ^status = #draft
/*
    OSSERVAZIONE: ci sono sltri tipi di indentifier? non penso che abbia troppo senso restringere il system
*/
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier contains codiceNosologico 0..*
// * identifier[codiceNosologico].system = "http://agenas.gov.it/sid/codiceNosologico" (exactly)
* identifier ^short = "Identificativo dell'incontro."

* class ^short = "Classificazione dell'incontro con il paziente."
* class ^definition = "Concetti che rappresentano la classificazione dell'incontro con il paziente, come ad esempio ambulatorio (paziente esterno), ricovero, emergenza, assistenza sanitaria a domicilio o altri, a causa delle variazioni locali."
* class ^comment = "Classificazione della risorsa. Nel caso della televisita, utilizza\n\n* VR: La vista avvine ein modalità tele"
* class from VSActEncounterCodeExtended

* priority ^short = "Priorità della richiesta."
* priority ^definition = "Indica la priorità della richiesta."

* subject ^short = "Paziente coinvolto nell'incontro."
* subject only Reference(PatientTeleconsulto)

* basedOn only Reference(ServiceRequestRelazioneCollaborativaTeleconsulto) 
* basedOn ^short = "Richiesta che ha avviato la visita."
* basedOn ^definition = "La richiesta che questa visita soddisfa."

* type ^short = "Disciplina"
* type from ValueSet_specialita_PractitionerRole (required)

* participant ^short = "Professionisti coinvolti nel teleconsulto."
* participant.individual only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)

* appointment only Reference(AppointmentTeleconsulto)
* appointment ^short = "L'appuntamento da cui è scaturito l'incontro."

* period ^short = "Data di inizio e di fine dell'incontro."
* period ^comment = "Se non è (ancora) nota, la fine del Periodo può essere omessa."

* reasonReference ^short = "Motivo scatenante l'incontro."
//* reasonReference only Reference(ConditionTelemedicina or ProcedureTeleconsulto)
* reasonReference only Reference(ProcedureTeleconsulto)

* serviceProvider ^short = "Organizzazione che eroga il il servizio."
* serviceProvider ^definition = "Elemento reference che contiene il riferimento alla struttura che eroga la visita, intesa come poliambulatorio"
* serviceProvider only Reference(OrganizationT1)
