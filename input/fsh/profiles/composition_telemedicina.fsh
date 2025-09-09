// Profile: CompositionTelemedicina
// Parent: Composition
// Id: CompositionTelemedicina
// Description: "Profilo base della Composition condiviso in tutti i documenti di Telemedicina"
// * ^version = "1.0.0"
// * ^status = #draft
// * ^experimental = true
// * identifier ^short = "Identificatore indipendente dalla versione."
// * status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
// * status ^definition = "Lo stato della Composition si sviluppa generalmente solo attraverso questo elenco: passa da preliminary a final e poi può passare a amended (ovvero modificato)."
// * type from vsTipologiaDocumentale (required)
// * type ^short = "Tipo di Composition."

// * subject only Reference(PatientTeleconsulto)
// * encounter only Reference(EncounterTeleconsulto)
// * encounter ^short = "Contesto in cui è stato generato il documento."
// * date ^short = "Data di modifica della risorsa da parte del firmatario."

// * author only Reference(PractitionerRoleTelemedicina or OrganizationTeleconsulto)
// * author ^short = "Autore della Composition (Medico Refertante)."

// * title ^short = "Titolo del documento"

// // * confidentiality ^short = "Codice di confidenzialità della Composition."
// * attester ^slicing.discriminator.type = #value
// * attester ^slicing.discriminator.path = "mode"
// * attester ^slicing.rules = #open
// * attester ^short = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
// * attester contains legalAuthenticator 1..1
// * attester[legalAuthenticator].mode = #legal (exactly)
// * attester[legalAuthenticator].time 1..
// * attester[legalAuthenticator].party 1..
// * attester[legalAuthenticator].party only Reference(PractitionerRoleTelemedicina)

// * relatesTo ^short = "Ulteriori documenti correlati"

// * event.code ^short = "Tipologia di accesso"
//  // TODO: aggiungi il binding alla tipologia di accesso (programmata / ad accesso diretto) 

// * section 1..
// * section.title ^short = "Titolo della sezione."
// * section.code ^short = "Codice della sezione."
