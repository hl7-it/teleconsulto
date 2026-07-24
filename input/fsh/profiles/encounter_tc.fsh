Profile: EncounterTeleconsulto
Parent: Encounter
Id: EncounterTeleconsulto
Description: "Profilo dell'Encounter utilizzato nel contesto del Teleconsulto"
* ^status = #draft

* identifier ^short = "Identificativo dell'incontro."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains codiceNosologico 0..1
* identifier[codiceNosologico] ^short = "Codice nosologico dell'incontro."
* identifier[codiceNosologico] ^definition = "Identificativo univoco dell'incontro di telemedicina nel sistema informativo della struttura erogante (numero di accettazione, codice nosologico)."
* identifier[codiceNosologico].system = "http://hl7.it/fhir/televisita/sid/codiceNosologico" (exactly)


* class ^short = "Provenienza del paziente (PS, reparto, ...)"
* class ^definition = "Classificazione dell'incontro con il paziente., come ad esempio ambulatorio (paziente esterno), ricovero, emergenza, assistenza sanitaria a domicilio o altri, a causa delle variazioni locali."
* class from VSActEncounterCodeExtended

* priority ^short = "Priorità della richiesta."
* priority ^definition = "Indica la priorità della richiesta."

* subject ^short = "Paziente coinvolto nell'incontro."
* subject only Reference(PatientTeleconsulto)

* basedOn only Reference(ServiceRequestRelazioneCollaborativaTeleconsulto) 
* basedOn ^short = "Richiesta che ha avviato il teleconsulto."
* basedOn ^definition = "La richiesta che questa prestazione soddisfa."

* type MS
* type ^short = "Disciplina"
* type ^definition = "Disciplina specialistica ambulatoriale."
* type from ValueSet_specialita_PractitionerRole (required)

* participant ^short = "Altri professionisti coinvolti nel teleconsulto."
* participant.individual only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)

* appointment only Reference(AppointmentTeleconsulto)
* appointment ^short = "L'appuntamento da cui è scaturito l'incontro."

* period ^short = "Data di inizio e di fine dell'incontro."
* period ^comment = "Se non è (ancora) nota, la fine del Periodo può essere omessa."

* reasonReference ^short = "Motivo scatenante l'incontro."
* reasonReference only Reference(ProcedureTeleconsulto)

* serviceProvider ^short = "Organizzazione che eroga il il servizio."
* serviceProvider ^definition = "Elemento reference che contiene il riferimento alla struttura che eroga la visita, intesa come poliambulatorio"
* serviceProvider only Reference(OrganizationT1)
