Alias: $loinc = http://loinc.org

Profile: CompositionRelazioneCollaborativaTeleconsulto
Parent: CompositionTelemedicina
Id: CompositionRelazioneCollaborativaTeleconsulto
Description: "Profilo della Composition utilizzata nel contesto della Relazione Collaborativa di Teleconsulto"
* ^status = #draft

* status 1..1
* status = #final (exactly)

* type = http://loinc.org#85208-7 (exactly)

* title 1..1
* title = "Relazione Collaborativa di Teleconsulto" (exactly)

* date 1..1

* subject ^short = "Soggetto del documento."
* subject 1..1
* subject only Reference(PatientTelemedicina)

* event.code ^short = "Tipologia di accesso"
 // TODO: aggiungi il binding alla tipologia di accesso (programmata / ad accesso diretto) 

// TODO: eliminare l'encounter
* encounter 1..1
* encounter only Reference(EncounterTelemedicina)

// Slicing delle sezioni interne
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    terapiaFarmacologica 0..1 and
    questitoDiagnostico 0..1 and
    InquadramentoClinicoIniziale 0..1 and
    precedentiEsamiEseguiti 0..1 and
    prestazioni 0..1 and
    confrontoPrecedentiEsamiEseguiti 0..1 and
    referto 0..1 and
    diagnosi 0..1 and
    conclusioni 0..1 and
    suggerimentiPerMedicoPrescrittore 0..1 and
    accertamentiControlliConsigliati 0..1 and
    terapiaFarmacologicaConsigliata 0..1 and
    oggettiCorrelati 0..*

// Slice: terapiaFarmacologica
* section[terapiaFarmacologica] ^sliceName = "terapiaFarmacologica"
* section[terapiaFarmacologica].entry only Reference(MedicationRequestTelemedicina)

// Slice: questitoDiagnostico
* section[questitoDiagnostico] ^sliceName = "questitoDiagnostico"
* section[questitoDiagnostico].entry only Reference(ObservationTelemedicina)

// Slice: InquadramentoClinicoIniziale e sottosezioni
* section[InquadramentoClinicoIniziale] ^sliceName = "InquadramentoClinicoIniziale"
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.type = #value
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.path = "code"
* section[InquadramentoClinicoIniziale].section ^slicing.rules = #open
* section[InquadramentoClinicoIniziale].section contains
    anamnesi 0..1 and
    allergie 0..* and
    terapiaFarmacologicaInAtto 0..* and
    esameObbiettivo 0..1

* section[InquadramentoClinicoIniziale].section[anamnesi] ^sliceName = "anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0 (exactly)
* section[InquadramentoClinicoIniziale].section[anamnesi].entry only Reference(ObservationTelemedicina)

* section[InquadramentoClinicoIniziale].section[allergie] ^sliceName = "allergie"
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2 (exactly)
* section[InquadramentoClinicoIniziale].section[allergie].entry only Reference(AllergyIntoleranceTelemedicina)

* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^sliceName = "terapiaFarmacologicaInAtto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0 (exactly)
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry only Reference(MedicationRequestTelemedicina)

* section[InquadramentoClinicoIniziale].section[esameObbiettivo] ^sliceName = "esameObbiettivo"
* section[InquadramentoClinicoIniziale].section[esameObbiettivo].code = $loinc#29545-1 (exactly)
* section[InquadramentoClinicoIniziale].section[esameObbiettivo].entry only Reference(ObservationTelemedicina)

// Slice: precedentiEsamiEseguiti
* section[precedentiEsamiEseguiti] ^sliceName = "precedentiEsamiEseguiti"
* section[precedentiEsamiEseguiti].code = $loinc#30954-2 (exactly)
* section[precedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)

// Slice: prestazioni
// TODO: eliminare l'encounter
* section[prestazioni] ^sliceName = "prestazioni"
* section[prestazioni].code = $loinc#62387-6 (exactly)
* section[prestazioni].entry only Reference(EncounterTelemedicina)

// Slice: confrontoPrecedentiEsamiEseguiti
* section[confrontoPrecedentiEsamiEseguiti] ^sliceName = "confrontoPrecedentiEsamiEseguiti"
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1 (exactly)
* section[confrontoPrecedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)

// Slice: referto
* section[referto] ^sliceName = "referto"
* section[referto].entry only Reference(ObservationTelemedicina)

// Slice: diagnosi
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5 (exactly)
* section[diagnosi].entry only Reference(ObservationTelemedicina)

// Slice: conclusioni
* section[conclusioni] ^sliceName = "conclusioni"
* section[conclusioni].entry only Reference(ObservationTelemedicina)

// Slice: suggerimentiPerMedicoPrescrittore
* section[suggerimentiPerMedicoPrescrittore] ^sliceName = "suggerimentiPerMedicoPrescrittore"
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0 (exactly)
* section[suggerimentiPerMedicoPrescrittore].entry only Reference(ObservationTelemedicina)

// Slice: accertamentiControlliConsigliati
* section[accertamentiControlliConsigliati] ^sliceName = "accertamentiControlliConsigliati"
* section[accertamentiControlliConsigliati].code = $loinc#80615-8 (exactly)
* section[accertamentiControlliConsigliati].entry only Reference(ObservationTelemedicina)

// Slice: terapiaFarmacologicaConsigliata
* section[terapiaFarmacologicaConsigliata] ^sliceName = "terapiaFarmacologicaConsigliata"
* section[terapiaFarmacologicaConsigliata].entry only Reference(MedicationRequestTelemedicina)

// Slice: oggettiCorrelati
* section[oggettiCorrelati] ^sliceName = "oggettiCorrelati"
* section[oggettiCorrelati].code = $loinc#77599-9 (exactly)
* section[oggettiCorrelati].entry only Reference(ImagingStudy or DocumentReference or Media or Binary)
