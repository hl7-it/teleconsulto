// Patient ----------------------------------------------------

Instance: PatientExample
InstanceOf: PatientTeleconsulto
Title: "Paziente - Giovanni Bianchi"
Description: "Giovanni Bianchi, paziente di sesso maschile nato il 15/01/1959, residente a Roma (CF: BNCGNN59A15H501Z). Affetto da bronchite cronica nota, ex fumatore e allergia alla penicillina. Soggetto del teleconsulto del 16/06/2026."
Usage: #example
* id = "64ab76df-be66-4f3e-b733-8a0437dc188d"
* extension[luogoNascita].valueAddress.city = "Roma"
* extension[luogoNascita].valueAddress.state = "Lazio"
* extension[luogoNascita].valueAddress.country = "IT"
* identifier[codiceFiscale]
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "BNCGNN59A15H501Z" 
* name.family = "Bianchi"
* name.given = "Giovanni"
* telecom[0].system = #phone
* telecom[0].value = "3331245679"
* telecom[1].system = #email
* telecom[1].value = "giovanni.bianchi@mail.com"
* birthDate = "1959-01-15"
* gender = #male
* address.city = "Roma"
* address.country = "IT"
* address.postalCode = "00155"
* address.line = "Via delle Acacie, 25"
* address.use = #billing
* address.state = "Lazio"
* address.extension[residenza].valueBoolean = true
* address.extension[certificazioneIndirizzo].extension[who].valueCodeableConcept = http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#gov
* address.line.extension[dugCode].valueCodeableConcept  = $istat-DUG-CS#67 "via"
* contact[0].name.family = "Rossi"
* contact[0].name.given = "Alice"
* contact[0].relationship.coding.code = #C
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship.coding.display = "Emergency Contact"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "3312345867"
* generalPractitioner = Reference(AslRoma1)

// Organizations ----------------------------------------------------
Instance: AslRoma1
InstanceOf: OrganizationT1
Title: "ASL Roma 1"
Description: "Esempio di Azienda Sanitaria Locale (ASL)"
Usage: #example

* id = "asl-roma-1"
* name = "ASL Roma 1"
* identifier[asl].system = "http://hl7.it/sid/fls"
* identifier[asl].value = "120201"

Instance: PresidioSandroPertini
InstanceOf: OrganizationT2
Title: "Presidio Sandro Pertini"
Description: "Presidio ospedaliero facente parte di ASL Roma 1"
Usage: #example
* id = "osp-pertini"
* name = "Ospedale Sandro Pertini"
* partOf = Reference(AslRoma1)
* identifier.value = "120201-OSP-001"

Instance: UOMedicinaInternaPertini
InstanceOf: OrganizationT3
Title: "U.O. Medicina Interna - Ospedale Pertini"
Description: "Unità Operativa di Medicina Interna afferente all'Ospedale Pertini"
Usage: #example
* id = "uo-medicinainterna-pertini"
* name = "U.O. Medicina Interna"
* partOf = Reference(PresidioSandroPertini)
* identifier.value = "uo-medicinainterna-pertini"

Instance: UOPneumologiaPertini
InstanceOf: OrganizationT3
Title: "U.O. Pneumologia - Ospedale Pertini"
Description: "Unità Operativa di Pneumologia afferente all'Ospedale Pertini"
Usage: #example
* id = "uo-pneumologia-pertini"
* name = "U.O. Pneumologia"
* partOf = Reference(PresidioSandroPertini)
* identifier.value = "uo-pneumologia-pertini"

// Medico Richiedente ----------------------------------------------------

Instance: PractitionerRoleRichiedente
InstanceOf: PractitionerRoleTeleconsulto
Title: "Ruolo Richiedente - Dott. Mario Rossi"
Description: "Ruolo professionale del Dott.Giovanni Bianchi, medico richiedente del teleconsulto"
Usage: #example
* id = "82c6c0d0-3035-4e51-8275-76fc9e83a3be"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRC89D12E472X" 
* organization = Reference(UOMedicinaInternaPertini)
* practitioner = Reference(PractitionerRichiedente)
* specialty = CodeSystem_specialita_PractitionerRole#26 "Medicina generale"

Instance: PractitionerRichiedente
InstanceOf: PractitionerTeleconsulto
Title: "Richiedente - Dott. Mario Rossi"
Description: "Dott. Mario Rossi, richiedente del teleconsulto, medico di medicina interna afferente all'Ospedale Pertini dell'ASL Roma 1"
Usage: #example
* id = "1ad53a39-b844-4d12-aefb-6f9b4fff1dce"
* name.given = "Mario"
* name.family = "Rossi"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRC89D12E472X" 


// Medico Consultato ----------------------------------------------------

Instance: PractitionerRoleConsultato
InstanceOf: PractitionerRoleTeleconsulto
Title: "Ruolo Consultato - Dott.ssa Laura Trevisan"
Description: "Ruolo professionale della Dott.ssa Laura Trevisan, medico consultato nel teleconsulto"
Usage: #example
* id = "0cad5e0f-5386-43b8-af1d-d2402d6dde8a"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "TRVLRA78P68A703X"
* organization = Reference(UOPneumologiaPertini)
* practitioner = Reference(PractitionerConsultato)
* specialty = CodeSystem_specialita_PractitionerRole#68 "Pneumologia"

Instance: PractitionerConsultato
InstanceOf: PractitionerTeleconsulto
Title: "Consultato - Dott.ssa Laura Trevisan"
Description: "Dott.ssa Laura Trevisan, medico consultato del teleconsulto, medico di pneumologia afferente all'Ospedale Pertini dell'ASL Roma 1"
Usage: #example
* id = "ad98bbb3-0317-4c8d-8ed7-8ac76d5ecfe0"
* name.given = "Laura"
* name.family = "Trevisan"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "TRVLRA78P68A703X" 

// Esenzione ----------------------------------------------------
Instance: EsenzionePaziente
InstanceOf: CoverageTeleconsulto
Title: "Esenzione - 057 (Broncopneumopatia cronica ostruttiva (BPCO))"
Description: "Esenzione per la patologia di broncopneumopatia cronica ostruttiva (BPCO), associata al paziente Giovanni Bianchi"
Usage: #example
* id = "c468dfb9-a117-4c8f-9ac5-df0eef954d7e"
* status = #active
* beneficiary = Reference(PatientExample)
* payor = Reference(AslRoma1)
* costToBeneficiary[0].valueMoney.value = 0
* costToBeneficiary[0].valueMoney.currency = #EUR
* costToBeneficiary.exception.type = CodesystemMinisteroSaluteEsenzioni#057 "BRONCOPNEUMOPATIA CRONICA OSTRUTTIVA (BPCO) NEGLI STADI CLINICI 'MODERATA','GRAVE' E 'MOLTO GRAVE'"

// Appointment Richiesta TC ----------------------------------------------------
Instance: AppointmentRichiestaTC
InstanceOf: AppointmentTeleconsulto
Title: "Appointment - Richiesta di Teleconsulto con priorità media"
Description: "Profilo utilizzato nell'ambito della richiesta di teleconsulto per indicare la priorità"
Usage: #example
* id = "68f7f0c2-ffa4-4a23-bd17-265166685cc0"
* status = #proposed
* basedOn = Reference(ServiceRequestRichiestaTCexample) 
* participant[0].actor = Reference(PractitionerRoleConsultato)
* participant[0].status = #needs-action
* priority = 5


// Observation diagnosi sospettata ----------------------------------------------------
Instance: ObservationQuesitoDiagnostico
InstanceOf: ObservationTeleconsulto
Title: "Quesito Diagnostico - Bronchite cronica ostruttiva con esacerbazione acuta"
Description: "Observation che descrive la motivazione per la quale viene richiesto il teleconsulto per il paziente Giovanni Bianchi"
Usage: #example
* id = "c87002c4-ff22-43f0-ba0d-85f0cd91c070"
* status = #final
* code = $loinc#29299-5
* valueCodeableConcept = CodeSystem_DiagnosiICD9CM#491.21 "BRONCHITE CRONICA OSTRUTTIVA,CON ESACERBAZIONE (ACUTA)"
* effectiveDateTime = "2026-06-16T08:30:00+02:00"
* performer = Reference(PractitionerRoleRichiedente)
* subject = Reference(PatientExample)
* note.text = "Paziente con bronchite cronica, peggioramento di tosse e dispnea nonostante terapia in corso. Si richiede valutazione specialistica pneumologica per conferma del quadro clinico e definizione del percorso terapeutico."


// ServiceRequest Richiesta TC ----------------------------------------------------
Instance: ServiceRequestRichiestaTCexample
InstanceOf: ServiceRequestRichiestaTeleconsulto
Title: "Service Request - Richiesta di Teleconsulto"
Description: "ServiceRequest nell'ambito della richiesta di teleconsulto per il paziente Giovanni Bianchi."
Usage: #example
* id = "13e1c13e-8ce2-4d78-b28e-bddae005223b"
* extension[ModalitaEsecuzionePrestazione].valueCodeableConcept = CodeSystem_modalitaTC#SINC_ABS "Sincrona, in assenza dell'assistito"
* requisition.value = "RQO-2026-06-16-002"
* priority = #routine
* intent = #order
* status = #active
* category = BrancaPrestazione#22 "Pneumologia"
* code.text = "Teleconsulto (codice da catalogo)"
* orderDetail[raggioDiErogazione] = CodeSystem_raggioErogazione#AZI "Aziendale"
* subject = Reference(PatientExample)
* authoredOn = "2026-06-16T10:30:00+02:00"
* occurrenceDateTime = "2026-06-17T09:30:00+02:00"
* requester = Reference(PractitionerRoleRichiedente)
* performer = Reference(PractitionerRoleConsultato)
* note.text = "Il paziente presenta sintomi di peggioramento della sua condizione respiratoria, con aumento della tosse e difficoltà respiratoria. Si richiede un consulto per valutare la necessità di modificare il trattamento farmacologico e considerare eventuali esami diagnostici aggiuntivi."

// Composition Richiesta TC ----------------------------------------------------
Instance: CompositionRichiestaTCexample
InstanceOf: CompositionRichiestaTeleconsulto
Title: "Richiesta di Teleconsulto - Composition"
Description: "Richiesta di teleconsulto per il paziente Giovanni Bianchi, prodotta il 16/06/2026."
Usage: #example
* id = "1b724b4b-0cea-42ef-8a8c-1eb588fc1082"
* status = #final
* type = http://loinc.org#85208-7
* date = "2026-06-16T10:30:00+02:00"
* author = Reference(PractitionerRoleRichiedente)
* title = "Richiesta di Teleconsulto"
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2026-06-16T10:30:00+02:00"
* attester[legalAuthenticator].party = Reference(PractitionerRoleRichiedente)
* section[richiestaTeleconsulto].code = $loinc#11488-4
* section[richiestaTeleconsulto].title = "Richiesta di Teleconsulto"
* section[richiestaTeleconsulto].entry[0] = Reference(ServiceRequestRichiestaTCexample)
* section[diagnosi].code = $loinc#29299-5
* section[diagnosi].title = "Diagnosi"
* section[diagnosi].entry[0] = Reference(ObservationQuesitoDiagnostico)


// Bundle document Richiesta TC ----------------------------------------------------
Instance: RichiestaDiTeleconsulto
InstanceOf: BundleRichiestaTeleconsulto
Title: "Bundle - Richiesta di Teleconsulto"
Description: "Bundle di tipo document contenente la richiesta del teleconsulto per il paziente Giovanni Bianchi, prodotta il 16/06/2026 dal Dott. Mario Rossi (medico richiedente) e indirizzata al Dott.ssa Laura Trevisan (medico consultato)."
Usage: #example
* type = #document
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d28e"
* timestamp = "2026-06-16T10:30:00+02:00"
* entry[0].fullUrl = "http://example/Composition/1b724b4b-0cea-42ef-8a8c-1eb588fc1082"
* entry[0].resource = CompositionRichiestaTCexample

* entry[1].fullUrl = "http://example/ServiceRequest/13e1c13e-8ce2-4d78-b28e-bddae005223b"
* entry[1].resource = ServiceRequestRichiestaTCexample

* entry[2].fullUrl = "http://example/Observation/c87002c4-ff22-43f0-ba0d-85f0cd91c070"
* entry[2].resource = ObservationQuesitoDiagnostico

* entry[3].fullUrl = "http://example/Appointment/68f7f0c2-ffa4-4a23-bd17-265166685cc0"
* entry[3].resource = AppointmentRichiestaTC

* entry[4].fullUrl = "http://example/Coverage/c468dfb9-a117-4c8f-9ac5-df0eef954d7e"
* entry[4].resource = EsenzionePaziente

* entry[5].fullUrl = "http://example/PractitionerRole/0cad5e0f-5386-43b8-af1d-d2402d6dde8a"
* entry[5].resource = PractitionerRoleConsultato

* entry[6].fullUrl = "http://example/Practitioner/ad98bbb3-0317-4c8d-8ed7-8ac76d5ecfe0"
* entry[6].resource = PractitionerConsultato

* entry[7].fullUrl = "http://example/PractitionerRole/82c6c0d0-3035-4e51-8275-76fc9e83a3be"
* entry[7].resource = PractitionerRoleRichiedente

* entry[8].fullUrl = "http://example/Practitioner/1ad53a39-b844-4d12-aefb-6f9b4fff1dce"
* entry[8].resource = PractitionerRichiedente

* entry[9].fullUrl = "http://example/Organization/uo-medicinainterna-pertini"
* entry[9].resource = UOMedicinaInternaPertini

* entry[10].fullUrl = "http://example/Organization/uo-pneumologia-pertini"
* entry[10].resource = UOPneumologiaPertini

* entry[11].fullUrl = "http://example/Organization/osp-pertini"
* entry[11].resource = PresidioSandroPertini

* entry[12].fullUrl = "http://example/Organization/asl-roma-1"
* entry[12].resource = AslRoma1

* entry[13].fullUrl = "http://example/Patient/64ab76df-be66-4f3e-b733-8a0437dc188d"
* entry[13].resource = PatientExample


// Bundle Transaction Richiesta TC ----------------------------------------------------
Instance: RichiestaDiTeleconsultoTransaction
InstanceOf: BundleRichiestaTeleconsultoTransaction
Title: "Bundle transaction - Richiesta di Teleconsulto"
Description: "Bundle di tipo transaction contenente la richiesta del teleconsulto per il paziente Giovanni Bianchi. Le risorse amministrative (Patient, Practitioner, PractitionerRole, Organization) sono inviate con PUT e identifier-based URL per garantire idempotenza; le risorse cliniche (Composition, Observation, Coverage, ServiceRequest, Appointment) sono inviate con POST."
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

* entry[9].fullUrl = "http://example/Coverage/c468dfb9-a117-4c8f-9ac5-df0eef954d7e"
* entry[9].resource = EsenzionePaziente
* entry[9].request.method = #POST
* entry[9].request.url = "Coverage"

* entry[10].fullUrl = "http://example/Appointment/68f7f0c2-ffa4-4a23-bd17-265166685cc0"
* entry[10].resource = AppointmentRichiestaTC
* entry[10].request.method = #POST
* entry[10].request.url = "Appointment"

* entry[11].fullUrl = "http://example/Observation/c87002c4-ff22-43f0-ba0d-85f0cd91c070"
* entry[11].resource = ObservationQuesitoDiagnostico
* entry[11].request.method = #POST
* entry[11].request.url = "Observation"

* entry[12].fullUrl = "http://example/ServiceRequest/13e1c13e-8ce2-4d78-b28e-bddae005223b"
* entry[12].resource = ServiceRequestRichiestaTCexample
* entry[12].request.method = #POST
* entry[12].request.url = "ServiceRequest"

* entry[13].fullUrl = "http://example/Composition/1b724b4b-0cea-42ef-8a8c-1eb588fc1082"
* entry[13].resource = CompositionRichiestaTCexample
* entry[13].request.method = #POST
* entry[13].request.url = "Composition"