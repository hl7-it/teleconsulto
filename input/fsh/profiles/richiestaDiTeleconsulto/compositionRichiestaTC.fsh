Alias: $loinc = http://loinc.org

Profile: CompositionRichiestaTeleconsulto
Parent: Composition
Id: CompositionRichiestaTeleconsulto
Description: "Profilo della Composition utilizzata nel contesto della Relazione Collaborativa di Teleconsulto"
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = true
* identifier ^short = "Identificatore indipendente dalla versione."
* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
* status ^definition = "Lo stato della Composition si sviluppa generalmente solo attraverso questo elenco: passa da preliminary a final e poi può passare a amended (ovvero modificato)."
* type from vsTipologiaDocumentale (required)
* type ^short = "Tipo di Composition."

//* subject only Reference(PatientTelemedicina)
//* encounter only Reference(EncounterTeleconsulto)
// * encounter ^short = "Contesto in cui è stato generato il documento."
* date ^short = "Data di modifica della risorsa da parte del firmatario."

* author only Reference(PractitionerRoleTelemedicina or OrganizationTelemedicina)
* author ^short = "Autore della Composition (Medico Refertante)."

* title ^short = "Titolo del documento"

// * confidentiality ^short = "Codice di confidenzialità della Composition."
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^short = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
* attester contains legalAuthenticator 1..1
* attester[legalAuthenticator].mode = #legal (exactly)
* attester[legalAuthenticator].time 1..
* attester[legalAuthenticator].party 1..
* attester[legalAuthenticator].party only Reference(PractitionerRoleTelemedicina)

* relatesTo ^short = "Ulteriori documenti correlati"

//* event.code ^short = "Tipologia di accesso"
 // TODO: aggiungi il binding alla tipologia di accesso (programmata / ad accesso diretto) 

* section 1..
* section.title ^short = "Titolo della sezione."
* section.code ^short = "Codice della sezione."

* status 1..1
* status = #final (exactly)

* type = http://loinc.org#85208-7 (exactly)

* title 1..1
* title = "Richiesta di Teleconsulto" (exactly)

* date 1..1

// * subject ^short = "Soggetto del documento."
// * subject 1..1
// * subject only Reference(PatientTelemedicina)

// * encounter 1..1
// * encounter only Reference(EncounterTeleconsulto)

// Slicing delle sezioni interne
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section contains
    richiestaTeleconsulto 1..1 and
    prestazioni 0..*

* section[richiestaTeleconsulto] ^sliceName = "richiestaTeleconsulto"
* section[richiestaTeleconsulto].entry only Reference(ServiceRequestRichiestaTC)
* section[richiestaTeleconsulto].code = $loinc#11488-4

* section[prestazioni] ^sliceName = "prestazioni"
* section[prestazioni].entry only Reference(ProcedureTelemedicina)
* section[prestazioni].code = $loinc#62387-6