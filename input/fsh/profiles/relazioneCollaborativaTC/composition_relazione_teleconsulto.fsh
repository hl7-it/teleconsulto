Alias: $loinc = http://loinc.org

Profile: CompositionRelazioneCollaborativaTeleconsulto
Parent: Composition
Id: CompositionRelazioneCollaborativaTeleconsulto
Description: "Profilo della Composition utilizzata nel contesto della Relazione Collaborativa di Teleconsulto"
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = true
* identifier ^short = "Identificatore indipendente dalla versione."
* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
* status ^definition = "Lo stato della Composition si sviluppa generalmente solo attraverso questo elenco: passa da preliminary a final e poi può passare a amended (ovvero modificato)."
* type from vsTipologiaDocumentale (required)
* type ^short = "Tipo di Composition."

* subject only Reference(PatientTeleconsulto)
* encounter only Reference(EncounterTeleconsulto)
* encounter ^short = "Contesto in cui è stato generato il documento."
* date ^short = "Data di modifica della risorsa da parte del firmatario."

* author only Reference(PractitionerRoleTelemedicina or OrganizationTeleconsulto)
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

* event.code ^short = "Tipologia di accesso"
 // TODO: aggiungi il binding alla tipologia di accesso (programmata / ad accesso diretto) 

* section 1..
* section.title ^short = "Titolo della sezione."
* section.code ^short = "Codice della sezione."


* status 1..1
* status = #final (exactly)

* type = http://loinc.org#85208-7 (exactly)

* title 1..1
* title = "Relazione Collaborativa di Teleconsulto" (exactly)

* date 1..1

// * subject ^short = "Soggetto del documento."
// * subject 1..1
// * subject only Reference(PatientTeleconsulto)

// * encounter 1..1
// * encounter only Reference(EncounterTeleconsulto)

// Slicing delle sezioni interne
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section contains
    // terapiaFarmacologica 0..1 and
    questitoDiagnostico 0..1 and
    InquadramentoClinicoIniziale 0..1 and
    precedentiEsamiEseguiti 0..1 and
    confrontoPrecedentiEsamiEseguiti 0..1 and
    referto 0..1 and
    diagnosi 0..1 and
    conclusioni 0..1 and
    suggerimentiPerMedicoPrescrittore 0..1 and
    accertamentiControlliConsigliati 0..1 and
    terapiaFarmacologicaConsigliata 0..1 and
    allegati 0..1 and
    prestazioni 0..*

// Slice: terapiaFarmacologica
// * section[terapiaFarmacologica] ^sliceName = "terapiaFarmacologica"
// * section[terapiaFarmacologica].entry only Reference(MedicationRequestTeleconsulto)
// * section[terapiaFarmacologica].code = $loinc#30954-2 (exactly)

// Slice: questitoDiagnostico
* section[questitoDiagnostico] ^sliceName = "questitoDiagnostico"
* section[questitoDiagnostico].entry only Reference(ObservationTeleconsulto)
* section[questitoDiagnostico].code = $loinc#29299-5 (exactly)

// Slice: InquadramentoClinicoIniziale e sottosezioni
* section[InquadramentoClinicoIniziale] ^sliceName = "InquadramentoClinicoIniziale"
* section[InquadramentoClinicoIniziale].code = $loinc#11329-0 (exactly)
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.type = #value
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.path = "code"
* section[InquadramentoClinicoIniziale].section ^slicing.rules = #open
* section[InquadramentoClinicoIniziale].section contains
    anamnesi 0..1 and
    allergie 0..* and
    terapiaFarmacologicaInAtto 0..* and
    esameObiettivo 0..1

* section[InquadramentoClinicoIniziale].section[anamnesi] ^sliceName = "anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0 (exactly)
* section[InquadramentoClinicoIniziale].section[anamnesi].entry only Reference(ObservationTeleconsulto)

* section[InquadramentoClinicoIniziale].section[allergie] ^sliceName = "allergie"
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2 (exactly)
* section[InquadramentoClinicoIniziale].section[allergie].entry only Reference(AllergyIntoleranceTeleconsulto)

* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^sliceName = "terapiaFarmacologicaInAtto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0 (exactly)
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry only Reference(MedicationStatementTeleconsulto)

* section[InquadramentoClinicoIniziale].section[esameObiettivo] ^sliceName = "esameObiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1 (exactly)
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry only Reference(ObservationTeleconsulto)

// Slice: precedentiEsamiEseguiti
* section[precedentiEsamiEseguiti] ^sliceName = "precedentiEsamiEseguiti"
* section[precedentiEsamiEseguiti].code = $loinc#30954-2 (exactly)
* section[precedentiEsamiEseguiti].entry only Reference(ObservationTeleconsulto)

// Slice: prestazioni
// * section[prestazioni] ^sliceName = "prestazioni"
// * section[prestazioni].code = $loinc#62387-6 (exactly)
// * section[prestazioni].entry only Reference(EncounterTeleconsulto)

// Slice: confrontoPrecedentiEsamiEseguiti
* section[confrontoPrecedentiEsamiEseguiti] ^sliceName = "confrontoPrecedentiEsamiEseguiti"
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1 (exactly)
* section[confrontoPrecedentiEsamiEseguiti].entry only Reference(ObservationTeleconsulto)

// Slice: referto
* section[referto] ^sliceName = "referto"
* section[referto].entry only Reference(ObservationTeleconsulto)
* section[referto].code = $loinc#47045-0 (exactly)

// Slice: diagnosi
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5 (exactly)
* section[diagnosi].entry only Reference(ObservationTeleconsulto)


// Slice: conclusioni
* section[conclusioni] ^sliceName = "conclusioni"
* section[conclusioni].entry only Reference(ObservationTeleconsulto)
* section[conclusioni].code = $loinc#55110-1 (exactly)

// Slice: suggerimentiPerMedicoPrescrittore
* section[suggerimentiPerMedicoPrescrittore] ^sliceName = "suggerimentiPerMedicoPrescrittore"
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0 (exactly)
* section[suggerimentiPerMedicoPrescrittore].entry only Reference(ObservationTeleconsulto)

// Slice: accertamentiControlliConsigliati
* section[accertamentiControlliConsigliati] ^sliceName = "accertamentiControlliConsigliati"
* section[accertamentiControlliConsigliati].code = $loinc#80615-8 (exactly)
* section[accertamentiControlliConsigliati].entry only Reference(ObservationTeleconsulto)

// Slice: terapiaFarmacologicaConsigliata
* section[terapiaFarmacologicaConsigliata] ^sliceName = "terapiaFarmacologicaConsigliata"
* section[terapiaFarmacologicaConsigliata].entry only Reference(MedicationRequestTeleconsulto)
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6 (exactly)


* section[allegati] ^sliceName = "allegati"
* section[allegati].entry only Reference(DocumentReference or Binary or Media)
* section[allegati].code = $loinc#77599-9  

* section[prestazioni] ^sliceName = "prestazioni"
* section[prestazioni].entry only Reference(ProcedureTeleconsulto)
* section[prestazioni].code = $loinc#62387-6
