// Appointment Relazione TC ----------------------------------------------------
Instance: AppointmentRelazioneTC
InstanceOf: AppointmentTeleconsulto
Title: "Appointment - Relazione di Teleconsulto"
Description: "Profilo utilizzato nell'ambito della relazione collaborativa di teleconsulto per indicare la data di presa in carico e di pianificazione della consulenza."
Usage: #example
* id = "938977bc-b40e-4f2f-b0c7-9c98b3141d54"
* status = #fulfilled 
* basedOn = Reference(ServiceRequestRelazioneTCexample) 
* participant[0].actor = Reference(PractitionerRoleConsultato)
* participant[0].status = #accepted
* participant[1].actor = Reference(PractitionerRoleRichiedente)
* participant[1].status = #accepted
* priority = 5
* created = "2026-06-16T10:30:00+02:00"
* start = "2026-06-17T09:30:00+02:00"
* end = "2026-06-17T09:51:00+02:00"

// Encounter
Instance: EncounterExample
InstanceOf: EncounterTeleconsulto
Title: "Encounter - Relazione collaborativa di teleconsulto"
Description: "Profilo utilizzato nella relazione collaborativa di teleconsulto per indicare codice nosologico, provenienza e disciplina"
Usage: #example
* id = "938977bc-b40e-4f2f-b0c7-9c98b3141d54"
* status = #finished
* class = #IMP
* type = CodeSystem_specialita_PractitionerRole#68 "Pneumologia"
* subject = Reference(PatientExample)
* basedOn = Reference(ServiceRequestRelazioneTCexample)
* appointment = Reference(AppointmentRelazioneTC)
* period.start = "2026-06-17T09:30:00+02:00"
* period.end = "2026-06-17T09:51:00+02:00"
* identifier[+].system = "http://hl7.it/fhir/televisita/sid/codiceNosologico"
* identifier[=].value = "ID-NOSOLOGICO-2025-06-16-001"
* serviceProvider = Reference(AslRoma1)


// ServiceRequest Relazione TC ----------------------------------------------------
Instance: ServiceRequestRelazioneTCexample
InstanceOf: ServiceRequestRelazioneCollaborativaTeleconsulto
Title: "Service Request - Relazione Collaborativa di Teleconsulto"
Description: "ServiceRequest nell'ambito della relazione collaborativa di teleconsulto per il paziente Giovanni Bianchi."
Usage: #example
* id = "f486aac2-d97d-459b-9389-43e24de96d58"
* requisition.value = "RQO-2026-06-16-002"
* priority = #routine
* intent = #order
* status = #completed
* category = BrancaPrestazione#22 "Pneumologia"
* code.text = "Teleconsulto (codice da catalogo)"
* subject = Reference(PatientExample)
* authoredOn = "2026-06-16T10:30:00+02:00"
* occurrenceDateTime = "2026-06-17T09:30:00+02:00"
* requester = Reference(PractitionerRoleRichiedente)
* performer = Reference(PractitionerRoleConsultato)
* note.text = "Il paziente presenta sintomi di peggioramento della sua condizione respiratoria, con aumento della tosse e difficoltà respiratoria. Si richiede un consulto per valutare la necessità di modificare il trattamento farmacologico e considerare eventuali esami diagnostici aggiuntivi."

// Observation anamnesi ----------------------------------------------------
Instance: ObservationAnamnesi
InstanceOf: ObservationTeleconsultoNarrative
Title: "Anamnesi - Paziente con bronchite cronica in peggioramento"
Description: "Observation anamnestica del paziente Giovanni Bianchi, eseguita dal medico richiedente nell'ambito della relazione collaborativa di teleconsulto."
Usage: #example
* id = "f141f3d5-4019-4955-8f15-8205728bf6a9"
* status = #final
* code = $loinc#11329-0
* valueString = "Paziente di 67 anni, ex fumatore, affetto da bronchite cronica. Da circa dieci giorni riferisce peggioramento della tosse e della dispnea durante le attività quotidiane."
* effectiveDateTime = "2026-06-16T08:30:00+02:00"
* performer = Reference(PractitionerRoleRichiedente)
* subject = Reference(PatientExample)

// AllergyIntolerance ----------------------------------------------------
Instance: AllergyIntolerancePenicillina
InstanceOf: AllergyIntoleranceTeleconsulto
Title: "Allergie - Allergia alla penicillina"
Description: "Esempio di AllergyIntolerance"
Usage: #example
* id = "987d1265-614b-44a8-9372-a6371590511b"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#91936005 "Penicillin allergy"
* patient = Reference(PatientExample)


// MedicationStatement ----------------------------------------------------
Instance: MedicationStatementTerapiaFarmacologicaInAtto
InstanceOf: MedicationStatementTeleconsulto
Title: "Terapia farmacologica in atto - Tiotropium 18 mcg"
Description: "Esempio di MedicationStatement"
Usage: #example
* id = "c7d6c5a8-4660-4496-9919-d9fa11a9a709"
* status = #active
* subject = Reference(PatientExample)
* medicationCodeableConcept = $sct#409169006 "Tiotropium"
* effectivePeriod.start = "2024-11-10"
* dosage.text = "Tiotropium 18 mcg, 1 volta al giorno"
* dosage.doseAndRate.doseQuantity.value = 18
* dosage.doseAndRate.doseQuantity.unit = "mcg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d


// Observation Precedente Esame Eseguito ----------------------------------------------------
Instance: ObservationPrecedenteEsameEseguito
InstanceOf: ObservationTeleconsulto
Title: "Precedente Esame Eseguito - Esame ematochimico del 10/06/2026, Proteina C Reattiva (PCR)"
Description: "Observation relativa a un precedente esame ematochimico del paziente Giovanni Bianchi."
Usage: #example
* id = "03cb6066-afd1-4c28-a0b0-c2f273ed08b9"
* status = #final
* code = $loinc#1988-5
* valueQuantity.value = 12
* valueQuantity.unit = "mg/L"
* effectiveDateTime = "2026-06-10T08:30:00+02:00"
* subject = Reference(PatientExample)
* interpretation = #H
* referenceRange.high.value = 5
* referenceRange.high.unit = "mg/L"

// Observation referto ----------------------------------------------------
Instance: ObservationReferto
InstanceOf: ObservationTeleconsultoNarrative
Title: "Referto - Refertazione del teleconsulto"
Description: "Observation che riporta la refertazione del teleconsulto."
Usage: #example
* id = "a4599b02-8230-4d9b-b6a8-5b959b001737"
* status = #final
* code = $loinc#47045-0
* valueString = "Il caso clinico del sig. Giovanni Bianchi, 67 anni, con anamnesi positiva per bronchite cronica ed ex fumatore, è stato discusso sulla base della documentazione clinica condivisa (anamnesi, terapia in corso, esami di laboratorio e documentazione pneumologica disponibile). Il paziente riferisce peggioramento della tosse produttiva e della dispnea durante le attività quotidiane nelle ultime settimane, nonostante terapia inalatoria in corso con Tiotropio bromuro 18 microgrammi una volta al giorno. Dalla valutazione della documentazione disponibile emerge un quadro compatibile con riacutizzazione di bronchite cronica ostruttiva, senza elementi indicativi di una situazione di urgenza."
* effectiveDateTime = "2026-06-17T10:30:00+02:00"
* subject = Reference(PatientExample)


// Observation Diagnosi ----------------------------------------------------
Instance: ObservationDiagnosi
InstanceOf: ObservationTeleconsulto
Title: "Quesito Diagnostico - Bronchite cronica ostruttiva con esacerbazione acuta"
Description: "Observation che descrive la motivazione per la quale viene richiesto il teleconsulto per il paziente Giovanni Bianchi"
Usage: #example
* id = "769b88be-f738-48c6-be79-b565852397ab"
* status = #final
* code = $loinc#29299-5
* valueCodeableConcept = CodeSystem_DiagnosiICD9CM#491.21 "BRONCHITE CRONICA OSTRUTTIVA,CON ESACERBAZIONE (ACUTA)"
* effectiveDateTime = "2026-06-16T09:50:00+02:00"
* performer = Reference(PractitionerRoleConsultato)
* subject = Reference(PatientExample)


// Observation conclusioni ----------------------------------------------------
Instance: ObservationConclusioni
InstanceOf: ObservationTeleconsultoNarrative
Title: "Conclusioni - Conclusioni del teleconsulto"
Description: "Observation che riporta le conclusioni tratte dal consulto medico."
Usage: #example
* id = "61f946a5-5872-4689-b4e9-1603a32420a0"
* status = #final
* code = $loinc#47045-0
* valueString = "Alla luce del peggioramento della sintomatologia respiratoria, si propone ottimizzazione della terapia inalatoria mediante modifica del trattamento con Tiotropio bromuro in formulazione Respimat 2,5 microgrammi/erogazione, con posologia di 2 inalazioni una volta al giorno (dose totale giornaliera 5 microgrammi), e attento monitoraggio della risposta clinica. Si raccomanda rivalutazione pneumologica programmata e nuovo controllo della sintomatologia respiratoria in relazione alla risposta al trattamento."
* effectiveDateTime = "2026-06-17T09:50:00+02:00"
* subject = Reference(PatientExample)


// Observation Accertamenti suggeriti ----------------------------------------------------
Instance: ObservationAccertamenti
InstanceOf: ObservationTeleconsulto
Title: "Accertamenti suggeriti - Visita pneumologica di controllo"
Description: "Observation che riporta gli accertamenti consigliati a seguito del teleconsulto."
Usage: #example
* id = "1f0c9a0f-7659-44f7-8f39-65ecb2d7cf9b"
* status = #final
* code = $loinc#80615-8
* valueCodeableConcept = CodesystemCatalogoNazionalePrestazioni#89.01.L	"VISITA PNEUMOLOGICA DI CONTROLLO. Incluso: eventuale rilevazione incruenta della saturazione arteriosa"
* effectiveDateTime = "2026-06-17T09:50:00+02:00"
* subject = Reference(PatientExample)
* performer = Reference(PractitionerRoleConsultato)


// MedicationRequest ----------------------------------------------------
Instance: MedicationRequestTerapiaConsigliata
InstanceOf: MedicationRequestTeleconsulto
Title: "Terapia farmacologica consigliata - Tiotropium 18 mcg"
Description: "Esempio di MedicationRequest"
Usage: #example
* id = "b9c3233e-e045-4825-854b-00b5238a1709"
* status = #active
* requester = Reference(PractitionerRoleConsultato)
* subject = Reference(PatientExample)
* authoredOn = "2026-06-17T09:50:00+02:00"
* medicationCodeableConcept = $sct#409169006 "Tiotropium"
* dosageInstruction.text = "Tiotropium per inalazione 2,5 mcg per inalazione, 2 inalazioni al giorno"
* dosageInstruction.doseAndRate.doseQuantity.value = 2.5
* dosageInstruction.doseAndRate.doseQuantity.unit = "mcg"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.method = #421134003	"Inhale"


// DocumentReference Allegati ----------------------------------------------------
Instance: DocumentReferenceAllegato
InstanceOf: DocumentReference
Title: "Allegato - TC Torace"
Description: "Esempio di allegati nel contesto della teleconsulto"
Usage: #example
* status = #current
* type = $loinc#55107-7 "Addendum Document"
* subject = Reference(PatientExample)
* content[0].attachment.title = "TC Torace 15/06/2026"
* date = "2025-06-15T10:00:00+02:00"
* id = "5ac4bdff-a87e-4efe-b0d6-85af60444f5f"
* content[0].attachment.contentType = $mimeType#"application/pdf"
* content[0].attachment.data = "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"


Instance: ProcedurePrestazione
InstanceOf: ProcedureTeleconsulto
Title: "Prestazione erogata"
Description: "Esempio di istanza ProcedureTeleconsulto per un teleconsulto pneumologico."
Usage: #example
* id = "a283da7c-933b-45ef-9f09-6287c787a980"
* status = #completed
* code.text = "Teleconsulto (codice da catalogo)"
* subject = Reference(PatientExample)
* performedPeriod.start = "2026-06-17T09:30:00+02:00"
* performedPeriod.end = "2026-06-17T09:51:00+02:00"
* performer[+].actor = Reference(PractitionerRoleConsultato)
* performer[+].actor = Reference(PractitionerRoleRichiedente)
* extension[ModalitaEsecuzionePrestazione].valueCodeableConcept = CodeSystem_modalitaTC#SINC_ABS "Sincrona, in assenza dell'assistito"


// Composition Relazione TC ----------------------------------------------------
Instance: CompositionRelazioneTCexample
InstanceOf: CompositionRelazioneCollaborativaTeleconsulto
Title: "Relazione Collaborativa di Teleconsulto - Composition"  
Description: "Relazione collaborativa di teleconsulto per il paziente Giovanni Bianchi, prodotta il 17/06/2026."
Usage: #example
* id = "45cd16ea-d29f-46b2-b473-669bb9f79cff"
* status = #final
* type = http://loinc.org#85208-7
* date = "2026-06-17T10:30:00+02:00"
* author = Reference(PractitionerRoleConsultato)
* subject = Reference(PatientExample)
* title = "Relazione Collaborativa di Teleconsulto"
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2026-06-17T10:30:00+02:00"
* attester[legalAuthenticator].party = Reference(PractitionerRoleConsultato)
* section[questitoDiagnostico].code = $loinc#29299-5
* section[questitoDiagnostico].title = "Quesito Diagnostico"
* section[questitoDiagnostico].entry[0] = Reference(ObservationQuesitoDiagnostico)
* section[InquadramentoClinicoIniziale].title = "Inquadramento Clinico Iniziale"
* section[InquadramentoClinicoIniziale].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section[anamnesi].title = "Anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].entry = Reference(ObservationAnamnesi)
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2
* section[InquadramentoClinicoIniziale].section[allergie].title = "Allergie"
* section[InquadramentoClinicoIniziale].section[allergie].entry = Reference(AllergyIntolerancePenicillina)
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].title = "Terapia farmacologica in atto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry = Reference(MedicationStatementTerapiaFarmacologicaInAtto)
* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].title = "Precedenti esami eseguiti"
* section[precedentiEsamiEseguiti].entry[0] = Reference(ObservationPrecedenteEsameEseguito)
* section[referto].code = $loinc#47045-0
* section[referto].title = "Referto"
* section[referto].entry[0] = Reference(ObservationReferto)
* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].title = "Diagnosi"
* section[diagnosi].entry[0] = Reference(ObservationDiagnosi)
* section[conclusioni].code = $loinc#55110-1
* section[conclusioni].title = "Conclusioni"
* section[conclusioni].entry[0] = Reference(ObservationConclusioni)
* section[accertamentiControlliConsigliati].code = $loinc#80615-8
* section[accertamentiControlliConsigliati].title = "Accertamenti/controlli consigliati"
* section[accertamentiControlliConsigliati].entry[0] = Reference(ObservationAccertamenti)
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6
* section[terapiaFarmacologicaConsigliata].title = "Terapia farmacologica consigliata"
* section[terapiaFarmacologicaConsigliata].entry[0] = Reference(MedicationRequestTerapiaConsigliata)
* section[prestazioni].code = $loinc#62387-6 
* section[prestazioni].title = "Prestazioni"
* section[prestazioni].entry[0] = Reference(ProcedurePrestazione)

// Bundle Document Relazione TC ----------------------------------------------------
Instance: RelazioneDiTeleconsulto
InstanceOf: BundleRelazioneCollaborativaTeleconsulto
Title: "Bundle - Relazione di Teleconsulto"
Description: "Bundle di tipo document contenente la relazione collaborativa di teleconsulto per il paziente Giovanni Bianchi, prodotta il 17/06/2026"
* type = #document
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d28s"
* timestamp = "2026-06-17T10:30:00+02:00"
* entry[0].fullUrl = "http://example/Composition/45cd16ea-d29f-46b2-b473-669bb9f79cff"
* entry[0].resource = CompositionRelazioneTCexample

* entry[1].fullUrl = "http://example/ServiceRequest/f486aac2-d97d-459b-9389-43e24de96d58"
* entry[1].resource = ServiceRequestRelazioneTCexample

* entry[2].fullUrl = "http://example/Observation/c87002c4-ff22-43f0-ba0d-85f0cd91c070"
* entry[2].resource = ObservationQuesitoDiagnostico

* entry[+].fullUrl = "http://example/Observation/f141f3d5-4019-4955-8f15-8205728bf6a9"
* entry[=].resource = ObservationAnamnesi

* entry[+].fullUrl = "http://example/AllergyIntolerance/987d1265-614b-44a8-9372-a6371590511b"
* entry[=].resource = AllergyIntolerancePenicillina

* entry[+].fullUrl = "http://example/MedicationStatement/c7d6c5a8-4660-4496-9919-d9fa11a9a709"
* entry[=].resource = MedicationStatementTerapiaFarmacologicaInAtto

* entry[+].fullUrl = "http://example/Observation/03cb6066-afd1-4c28-a0b0-c2f273ed08b9"
* entry[=].resource = ObservationPrecedenteEsameEseguito

* entry[+].fullUrl = "http://example/Observation/a4599b02-8230-4d9b-b6a8-5b959b001737"
* entry[=].resource = ObservationReferto

* entry[+].fullUrl = "http://example/Observation/769b88be-f738-48c6-be79-b565852397ab"
* entry[=].resource = ObservationDiagnosi

* entry[+].fullUrl = "http://example/Observation/61f946a5-5872-4689-b4e9-1603a32420a0"
* entry[=].resource = ObservationConclusioni

* entry[+].fullUrl = "http://example/Observation/1f0c9a0f-7659-44f7-8f39-65ecb2d7cf9b"
* entry[=].resource = ObservationAccertamenti

* entry[+].fullUrl = "http://example/MedicationRequest/b9c3233e-e045-4825-854b-00b5238a1709"
* entry[=].resource = MedicationRequestTerapiaConsigliata

* entry[+].fullUrl = "http://example/DocumentReference/5ac4bdff-a87e-4efe-b0d6-85af60444f5f"
* entry[=].resource = DocumentReferenceAllegato

* entry[+].fullUrl = "http://example/Procedure/a283da7c-933b-45ef-9f09-6287c787a980"
* entry[=].resource = ProcedurePrestazione

* entry[+].fullUrl = "http://example/Appointment/938977bc-b40e-4f2f-b0c7-9c98b3141d54"
* entry[=].resource = AppointmentRelazioneTC

* entry[+].fullUrl = "http://example/Encounter/938977bc-b40e-4f2f-b0c7-9c98b3141d54"
* entry[=].resource = EncounterExample

* entry[+].fullUrl = "http://example/PractitionerRole/0cad5e0f-5386-43b8-af1d-d2402d6dde8a"
* entry[=].resource = PractitionerRoleConsultato

* entry[+].fullUrl = "http://example/Practitioner/ad98bbb3-0317-4c8d-8ed7-8ac76d5ecfe0"
* entry[=].resource = PractitionerConsultato

* entry[+].fullUrl = "http://example/PractitionerRole/82c6c0d0-3035-4e51-8275-76fc9e83a3be"
* entry[=].resource = PractitionerRoleRichiedente

* entry[+].fullUrl = "http://example/Practitioner/1ad53a39-b844-4d12-aefb-6f9b4fff1dce"
* entry[=].resource = PractitionerRichiedente

* entry[+].fullUrl = "http://example/Organization/uo-medicinainterna-pertini"
* entry[=].resource = UOMedicinaInternaPertini

* entry[+].fullUrl = "http://example/Organization/uo-pneumologia-pertini"
* entry[=].resource = UOPneumologiaPertini

* entry[+].fullUrl = "http://example/Organization/osp-pertini"
* entry[=].resource = PresidioSandroPertini

* entry[+].fullUrl = "http://example/Organization/asl-roma-1"
* entry[=].resource = AslRoma1

* entry[+].fullUrl = "http://example/Patient/64ab76df-be66-4f3e-b733-8a0437dc188d"
* entry[=].resource = PatientExample



// Bundle Transaction Relazione TC ----------------------------------------------------
Instance: RelazioneDiTeleconsultoTransaction
InstanceOf: BundleRelazioneCollaborativaTeleconsultoTransaction
Title: "Bundle transaction - Relazione di Teleconsulto"
Description: "Bundle di tipo transaction contenente la relazione collaborativa di teleconsulto per il paziente Giovanni Bianchi. Le risorse amministrative (Patient, Practitioner, PractitionerRole, Organization) sono inviate con PUT e identifier-based URL per garantire idempotenza; le risorse cliniche (Composition, Observation, Coverage, ServiceRequest, Appointment) sono inviate con POST."
Usage: #example
* type = #transaction

// -------------------------------------------------------
// RISORSE AMMINISTRATIVE - PUT (idempotenti)
// -------------------------------------------------------

* entry[0].fullUrl = "http://example/Patient/64ab76df-be66-4f3e-b733-8a0437dc188d"
* entry[0].resource = PatientExample
* entry[0].request.method = #PUT
* entry[0].request.url = "Patient?identifier=http://hl7.it/sid/codiceFiscale|BNCGNN59A15H501Z"

* entry[1].fullUrl = "http://example/PractitionerRole/82c6c0d0-3035-4e51-8275-76fc9e83a3be"
* entry[1].resource = PractitionerRoleRichiedente
* entry[1].request.method = #PUT
* entry[1].request.url = "PractitionerRole?identifier=http://hl7.it/sid/codiceFiscale|RSSMRC89D12E472X"

* entry[2].fullUrl = "http://example/Practitioner/1ad53a39-b844-4d12-aefb-6f9b4fff1dce"
* entry[2].resource = PractitionerRichiedente
* entry[2].request.method = #PUT
* entry[2].request.url = "Practitioner?identifier=http://hl7.it/sid/codiceFiscale|RSSMRC89D12E472X"

* entry[3].fullUrl = "http://example/PractitionerRole/0cad5e0f-5386-43b8-af1d-d2402d6dde8a"
* entry[3].resource = PractitionerRoleConsultato
* entry[3].request.method = #PUT
* entry[3].request.url = "PractitionerRole?identifier=http://hl7.it/sid/codiceFiscale|TRVLRA78P68A703X"

* entry[4].fullUrl = "http://example/Practitioner/ad98bbb3-0317-4c8d-8ed7-8ac76d5ecfe0"
* entry[4].resource = PractitionerConsultato
* entry[4].request.method = #PUT
* entry[4].request.url = "Practitioner?identifier=http://hl7.it/sid/codiceFiscale|TRVLRA78P68A703X"

* entry[5].fullUrl = "http://example/Organization/asl-roma-1"
* entry[5].resource = AslRoma1
* entry[5].request.method = #PUT
* entry[5].request.url = "Organization?identifier=http://hl7.it/sid/fls|120201"

* entry[6].fullUrl = "http://example/Organization/osp-pertini"
* entry[6].resource = PresidioSandroPertini
* entry[6].request.method = #PUT
* entry[6].request.url = "Organization?identifier=http://hl7.it/sid/hsp|120201-OSP-001"

* entry[7].fullUrl = "http://example/Organization/uo-medicinainterna-pertini"
* entry[7].resource = UOMedicinaInternaPertini
* entry[7].request.method = #PUT
* entry[7].request.url = "Organization?identifier=http://hl7.it/sid/hsp|uo-medicinainterna-pertini"

* entry[8].fullUrl = "http://example/Organization/uo-pneumologia-pertini"
* entry[8].resource = UOPneumologiaPertini
* entry[8].request.method = #PUT
* entry[8].request.url = "Organization?identifier=http://hl7.it/sid/hsp|uo-pneumologia-pertini"

// -------------------------------------------------------
// RISORSE CLINICHE - POST
// -------------------------------------------------------

* entry[9].fullUrl = "http://example/Encounter/938977bc-b40e-4f2f-b0c7-9c98b3141d54"
* entry[9].resource = EncounterExample
* entry[9].request.method = #POST
* entry[9].request.url = "Encounter"

* entry[10].fullUrl = "http://example/Appointment/938977bc-b40e-4f2f-b0c7-9c98b3141d54"
* entry[10].resource = AppointmentRelazioneTC
* entry[10].request.method = #POST
* entry[10].request.url = "Appointment"

* entry[11].fullUrl = "http://example/Observation/c87002c4-ff22-43f0-ba0d-85f0cd91c070"
* entry[11].resource = ObservationQuesitoDiagnostico
* entry[11].request.method = #POST
* entry[11].request.url = "Observation"

* entry[+].fullUrl = "http://example/Observation/f141f3d5-4019-4955-8f15-8205728bf6a9"
* entry[=].resource = ObservationAnamnesi
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://example/AllergyIntolerance/987d1265-614b-44a8-9372-a6371590511b"
* entry[=].resource = AllergyIntolerancePenicillina
* entry[=].request.method = #POST
* entry[=].request.url = "AllergyIntolerance"

* entry[+].fullUrl = "http://example/MedicationStatement/c7d6c5a8-4660-4496-9919-d9fa11a9a709"
* entry[=].resource = MedicationStatementTerapiaFarmacologicaInAtto
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"

* entry[+].fullUrl = "http://example/Observation/03cb6066-afd1-4c28-a0b0-c2f273ed08b9"
* entry[=].resource = ObservationPrecedenteEsameEseguito
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://example/Observation/a4599b02-8230-4d9b-b6a8-5b959b001737"
* entry[=].resource = ObservationReferto
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://example/Observation/769b88be-f738-48c6-be79-b565852397ab"
* entry[=].resource = ObservationDiagnosi
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://example/Observation/61f946a5-5872-4689-b4e9-1603a32420a0"
* entry[=].resource = ObservationConclusioni
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://example/Observation/1f0c9a0f-7659-44f7-8f39-65ecb2d7cf9b"
* entry[=].resource = ObservationAccertamenti
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://example/MedicationRequest/b9c3233e-e045-4825-854b-00b5238a1709"
* entry[=].resource = MedicationRequestTerapiaConsigliata
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationRequest"

* entry[+].fullUrl = "http://example/DocumentReference/5ac4bdff-a87e-4efe-b0d6-85af60444f5f"
* entry[=].resource = DocumentReferenceAllegato
* entry[=].request.method = #POST
* entry[=].request.url = "DocumentReference"

* entry[+].fullUrl = "http://example/Procedure/a283da7c-933b-45ef-9f09-6287c787a980"
* entry[=].resource = ProcedurePrestazione
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "http://example/ServiceRequest/f486aac2-d97d-459b-9389-43e24de96d58"
* entry[=].resource = ServiceRequestRelazioneTCexample
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"

* entry[+].fullUrl = "http://example/Composition/45cd16ea-d29f-46b2-b473-669bb9f79cff"
* entry[=].resource = CompositionRelazioneTCexample
* entry[=].request.method = #POST
* entry[=].request.url = "Composition"