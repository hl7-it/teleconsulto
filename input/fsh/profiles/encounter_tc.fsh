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
* identifier[codiceNosologico].system 1..1
* identifier[codiceNosologico].value 1..1
* identifier[codiceNosologico].system = "http://hl7.it/fhir/televisita/sid/codiceNosologico" (exactly)


* class ^short = "Classe assistenziale dell'incontro."
* class ^definition = "Classificazione dell'incontro con il paziente., come ad esempio ambulatorio (paziente esterno), ricovero, emergenza, assistenza sanitaria a domicilio o altri, a causa delle variazioni locali."
* class from VSActEncounterCodeExtended //TODO: Verificare se è necessario aggiungere ulteriori codici specifici per il contesto del teleconsulto

* priority ^short = "Priorità dell'incontro di teleconsulto."
* priority ^definition = "Indica la priorità della richiesta."

* subject ^short = "Paziente coinvolto nell'incontro."
* subject only Reference(PatientTeleconsulto)

* basedOn only Reference(ServiceRequestRichiestaTeleconsulto) 
* basedOn ^short = "Richiesta che ha avviato il teleconsulto."
* basedOn ^definition = "La richiesta che questa prestazione soddisfa."

* type ^short = "Disciplina"
* type ^definition = "Disciplina specialistica ambulatoriale."
* type from ValueSet_specialita_PractitionerRole (required)

* participant ^short = "Altri professionisti coinvolti nel teleconsulto."
* participant.type ^short = "Ruolo del partecipante nell'incontro."
* participant.individual only Reference(PractitionerTeleconsulto or PractitionerRoleTeleconsulto)

// da mantenere opzionale nel caso di teleconsulto estemporaneo
* appointment only Reference(AppointmentTeleconsulto)
* appointment ^short = "L'appuntamento da cui è scaturito l'incontro, da non valorizzare in caso di teleconsulto estemporaneo."

* period ^short = "Data di inizio e di fine dell'incontro."
* period ^comment = "Se non è (ancora) nota, la fine del Periodo può essere omessa."

* reasonReference ^short = "Motivo scatenante l'incontro."
* reasonReference only Reference(ObservationTeleconsulto or ProcedureTeleconsulto)

* serviceProvider ^short = "Organizzazione che eroga il il servizio."
* serviceProvider ^definition = "Elemento reference che contiene il riferimento alla struttura che eroga la visita, intesa come poliambulatorio"
* serviceProvider only Reference(OrganizationT1)
