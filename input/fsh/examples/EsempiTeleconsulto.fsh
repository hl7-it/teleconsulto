Alias: $sct = http://snomed.info/sct
Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $mimeType = urn:ietf:bcp:13
Alias: $istat-DUG-CS = 	https://www.hl7.it/fhir/terminology/CodeSystem/dug

Instance: TeleconsultoCardiologicoTransaction
InstanceOf: BundleRelazioneCollaborativaTeleconsultoTransaction
Title: "Teleconsulto Cardiologico - Transaction"
Description: "Bundle di tipo transaction con risorse amministrative in PUT e cliniche in POST"
Usage: #example
* type = #transaction

* entry[0].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[0].resource = PatientTeleconsultoExample
* entry[0].request.method = #PUT
* entry[0].request.url = "Patient?identifier=http://hl7.it/sid/codiceFiscale|RSSMRA80A01H501Z"

* entry[1].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* entry[1].resource = PractitionerTelemedicinaExample
* entry[1].request.method = #PUT
* entry[1].request.url = "Practitioner?identifier=http://hl7.it/sid/codiceFiscale|DOEMRA80A01H501Z"

* entry[2].fullUrl = "http://example/Organization/asl-roma-1"
* entry[2].resource = AslRoma1
* entry[2].request.method = #PUT
* entry[2].request.url = "Organization?identifier=http://hl7.it/sid/fls|RM0011"

* entry[3].fullUrl = "http://example/Organization/osp-pertini"
* entry[3].resource = PresidioSandroPertini
* entry[3].request.method = #PUT
* entry[3].request.url = "Organization?identifier=http://hl7.it/sid/hsp|HSP00123"

* entry[4].fullUrl = "http://example/Organization/uo-cardiologia-pertini"
* entry[4].resource = UOCardiologiaPertini
* entry[4].request.method = #PUT
* entry[4].request.url = "Organization?identifier=http://hl7.it/sid/hsp|UO12345"

* entry[5].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
* entry[5].resource = PractitionerRoleTelemedicinaExample
* entry[5].request.method = #PUT
* entry[5].request.url = "PractitionerRole?practitioner.identifier=http://hl7.it/sid/codiceFiscale|DOEMRA80A01H501Z"

* entry[6].fullUrl = "http://example/Encounter/a2aaf911-51e7-4e38-a7ca-2817c0fcc6d2"
* entry[6].resource = EncounterTelemedicinaExample
* entry[6].request.method = #PUT
* entry[6].request.url = "Encounter"

* entry[7].fullUrl = "http://example/Composition/aa011502-6ad2-430b-a439-01dddc36fd4e"
* entry[7].resource = CompositionRelazioneCollaborativaTeleconsultoExample
* entry[7].request.method = #POST
* entry[7].request.url = "Composition"

* entry[8].fullUrl = "http://example/Observation/7cbbe77d-dcdb-409b-a215-6361ad7873d5"
* entry[8].resource = Observation-quesito
* entry[8].request.method = #POST
* entry[8].request.url = "Observation"

* entry[9].fullUrl = "http://example/Observation/84f911ee-b09d-4325-a3f3-a973a0c5ad8f"
* entry[9].resource = Observation-anamnesi
* entry[9].request.method = #POST
* entry[9].request.url = "Observation"

* entry[10].fullUrl = "http://example/AllergyIntolerance/1360bd6a-3855-48d3-aa33-96a9d961bb94"
* entry[10].resource = AllergyIntolerance-allergia1
* entry[10].request.method = #POST
* entry[10].request.url = "AllergyIntolerance"

* entry[11].fullUrl = "http://example/MedicationStatement/e62c9f1d-9c0b-4433-853b-06ec5074f19a"
* entry[11].resource = MedicationStatement-terapia-corrente
* entry[11].request.method = #POST
* entry[11].request.url = "MedicationStatement"

* entry[12].fullUrl = "http://example/Observation/c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865"
* entry[12].resource = Observation-esame-obiettivo
* entry[12].request.method = #POST
* entry[12].request.url = "Observation"

* entry[13].fullUrl = "http://example/Observation/9dfdf0c9-a837-42d5-987c-6170c75cc476"
* entry[13].resource = Observation-esami-precedenti
* entry[13].request.method = #POST
* entry[13].request.url = "Observation"

* entry[14].fullUrl = "http://example/Observation/ecc5c95f-a1c0-483c-b48e-5fd84762c393"
* entry[14].resource = Observation-confronto-esami
* entry[14].request.method = #POST
* entry[14].request.url = "Observation"

* entry[15].fullUrl = "http://example/Observation/a465cf01-05e6-4f38-8f6a-b5d6c4168c94"
* entry[15].resource = Observation-referto-principale
* entry[15].request.method = #POST
* entry[15].request.url = "Observation"

* entry[16].fullUrl = "http://example/Observation/1729dcef-ac19-434b-82e7-b6e6e51e74b3"
* entry[16].resource = Observation-diagnosi-principale
* entry[16].request.method = #POST
* entry[16].request.url = "Observation"

* entry[17].fullUrl = "http://example/Observation/1611ed98-7577-48ab-9587-7ab4fc96e191"
* entry[17].resource = Observation-conclusioni-generali
* entry[17].request.method = #POST
* entry[17].request.url = "Observation"

* entry[18].fullUrl = "http://example/Observation/2054e65c-2012-4286-aac7-ce2f23e8be31"
* entry[18].resource = Observation-suggerimenti
* entry[18].request.method = #POST
* entry[18].request.url = "Observation"

* entry[19].fullUrl = "http://example/Observation/1b401b53-f564-4730-bb13-45d5620596f0"
* entry[19].resource = Observation-accertamenti-consigliati
* entry[19].request.method = #POST
* entry[19].request.url = "Observation"

* entry[20].fullUrl = "http://example/MedicationRequest/9282eb8d-b153-451a-bd0d-437efd13b45f"
* entry[20].resource = MedicationRequest-terapia-consigliata
* entry[20].request.method = #POST
* entry[20].request.url = "MedicationRequest"

* entry[21].fullUrl = "http://example/DocumentReference/4f6c71e1-cc6e-4428-ae9b-0118c0a928cb"
* entry[21].resource = DocumentReference-allegato1
* entry[21].request.method = #POST
* entry[21].request.url = "DocumentReference"

* entry[22].fullUrl = "http://example/ServiceRequest/d3f1a9b0-8c3d-4e8f-b2e2-59d8b02a6fdc"
* entry[22].resource = ServiceRequestTelemedicinaExample
* entry[22].request.method = #POST
* entry[22].request.url = "ServiceRequest"

* entry[23].fullUrl = "http://example/Appointment/9c7e5f13-47bd-4a0a-a6bb-c9e39fd3a908"
* entry[23].resource = AppointmentTeleconsultoExample
* entry[23].request.method = #PUT
* entry[23].request.url = "Appointment"

* entry[24].fullUrl = "http://example/Procedure/b81d2c4e-5a9f-4c97-90fb-2a3b726b123f"
* entry[24].resource = ProcedureTeleconsultoExample
* entry[24].request.method = #POST
* entry[24].request.url = "Procedure"



Instance: TeleconsultoCardiologicoBundle
InstanceOf: BundleRelazioneCollaborativaTeleconsulto
Title: "Esempio di Teleconsulto Cardiologico"
Description: "Esempio FHIR di teleconsulto tra MMG e cardiologo"
Usage: #example
* type = #document
* timestamp = "2025-07-15T10:00:00+01:00"
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[0].fullUrl = "http://example/Composition/aa011502-6ad2-430b-a439-01dddc36fd4e"
* entry[0].resource = CompositionRelazioneCollaborativaTeleconsultoExample

* entry[1].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTeleconsultoExample

* entry[2].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
* entry[2].resource = PractitionerRoleTelemedicinaExample

* entry[3].fullUrl = "http://example/Organization/asl-roma-1"
* entry[3].resource = AslRoma1

* entry[4].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* entry[4].resource = PractitionerTelemedicinaExample

* entry[5].fullUrl = "http://example/Encounter/a2aaf911-51e7-4e38-a7ca-2817c0fcc6d2"
* entry[5].resource = EncounterTelemedicinaExample

* entry[6].fullUrl = "http://example/Observation/7cbbe77d-dcdb-409b-a215-6361ad7873d5"
* entry[6].resource = Observation-quesito

* entry[7].fullUrl = "http://example/Observation/84f911ee-b09d-4325-a3f3-a973a0c5ad8f"
* entry[7].resource = Observation-anamnesi

* entry[8].fullUrl = "http://example/AllergyIntolerance/1360bd6a-3855-48d3-aa33-96a9d961bb94"
* entry[8].resource = AllergyIntolerance-allergia1

* entry[9].fullUrl = "http://example/MedicationStatement/e62c9f1d-9c0b-4433-853b-06ec5074f19a"
* entry[9].resource = MedicationStatement-terapia-corrente

* entry[10].fullUrl = "http://example/Observation/c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865"
* entry[10].resource = Observation-esame-obiettivo

* entry[11].fullUrl = "http://example/Observation/9dfdf0c9-a837-42d5-987c-6170c75cc476"
* entry[11].resource = Observation-esami-precedenti

* entry[12].fullUrl = "http://example/Observation/ecc5c95f-a1c0-483c-b48e-5fd84762c393"
* entry[12].resource = Observation-confronto-esami

* entry[13].fullUrl = "http://example/Observation/a465cf01-05e6-4f38-8f6a-b5d6c4168c94"
* entry[13].resource = Observation-referto-principale

* entry[14].fullUrl = "http://example/Observation/1729dcef-ac19-434b-82e7-b6e6e51e74b3"
* entry[14].resource = Observation-diagnosi-principale

* entry[15].fullUrl = "http://example/Observation/1611ed98-7577-48ab-9587-7ab4fc96e191"
* entry[15].resource = Observation-conclusioni-generali

* entry[16].fullUrl = "http://example/Observation/2054e65c-2012-4286-aac7-ce2f23e8be31"
* entry[16].resource = Observation-suggerimenti

* entry[17].fullUrl = "http://example/Observation/1b401b53-f564-4730-bb13-45d5620596f0"
* entry[17].resource = Observation-accertamenti-consigliati

* entry[18].fullUrl = "http://example/MedicationRequest/9282eb8d-b153-451a-bd0d-437efd13b45f"
* entry[18].resource = MedicationRequest-terapia-consigliata

* entry[19].fullUrl = "http://example/DocumentReference/4f6c71e1-cc6e-4428-ae9b-0118c0a928cb"
* entry[19].resource = DocumentReference-allegato1

* entry[20].fullUrl = "http://example/ServiceRequest/d3f1a9b0-8c3d-4e8f-b2e2-59d8b02a6fdc"
* entry[20].resource = ServiceRequestTelemedicinaExample

* entry[21].fullUrl = "http://example/Appointment/9c7e5f13-47bd-4a0a-a6bb-c9e39fd3a908"
* entry[21].resource = AppointmentTeleconsultoExample

* entry[22].fullUrl = "http://example/Procedure/b81d2c4e-5a9f-4c97-90fb-2a3b726b123f"
* entry[22].resource = ProcedureTeleconsultoExample

Instance: PatientTeleconsultoExample
InstanceOf: PatientTeleconsulto
Description: "Esempio di paziente nel contesto della televisita"
Usage: #example
* id = "2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* extension[luogoNascita].valueAddress.extension[residenza].valueBoolean = true
* extension[luogoNascita].valueAddress.line[+].extension[odonimo].valueString = "Via della Vittoria"
* extension[luogoNascita].valueAddress.line[=].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[=] = "Via della Vittoria, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"

* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 

* name.family = "Rossi"
* name.given = "Maria"

* telecom[0].system = #phone
* telecom[0].value = "3331245678"

* telecom[1].system = #email
* telecom[1].value = "maria.rossi@mail.com"
* birthDate = "1971-05-01"
* gender = #female
* address.city = "Milano"
* address.country = "IT"
* address.postalCode = "20100"
* address.line = "Via della Libertà, 52"
* address.use = #home
* address.extension[residenza].valueBoolean = true
* address.extension[certificazioneIndirizzo].extension[who].valueCodeableConcept = https://www.hl7.it/fhir/terminology/CodeSystem/it-tipoEntita#gov
* address.line.extension[dugCode].valueCodeableConcept  = $istat-DUG-CS#67 "via"
* contact[0].name.family = "Rossi"
* contact[0].name.given = "Luigi"
* contact[1].name.family = "Bianchi"
* contact[1].name.given = "Maria"
* contact[0].relationship.coding.code = #C
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship.coding.display = "Emergency Contact"
* contact[1].relationship.coding.code = #C
* contact[1].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[1].relationship.coding.display = "Emergency Contact"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "3312345567"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "3311234598"


Instance: EncounterTelemedicinaExample
InstanceOf: EncounterTeleconsulto
Title: "Esempio di Encounter per il teleconsulto sincrono"
Description: "Esempio di incontro conforme al profilo EncounterTelemedicinaExample"
Usage: #example
* id = "a2aaf911-51e7-4e38-a7ca-2817c0fcc6d2"
* status = #finished
* class = CustomEncounterType#TC "Teleconsulto"
//* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* basedOn = Reference(ServiceRequestTelemedicinaExample)
* appointment = Reference(AppointmentTeleconsultoExample)
* period.start = "2025-06-16T09:00:00+02:00"
* period.end = "2025-06-16T09:45:00+02:00"
* identifier[+].system = "http://agenas.gov.it/sid/codiceNosologico"
* identifier[=].value = "POD.123e4567-e89b-12d3-a456-426614174000"
* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* priority.coding[0].code = #R
* priority.coding[0].display = "routine"
* participant[0].individual = Reference(PractitionerTelemedicinaExample)
* reasonReference[0] = Reference(ProcedureTeleconsultoExample)
* serviceProvider = Reference(AslRoma1)


Instance: CompositionRelazioneCollaborativaTeleconsultoExample
InstanceOf: CompositionRelazioneCollaborativaTeleconsulto
Title: "Esempio completo di relazione collaborativa di teleconsulto"
Description: "Referto teleconsulto con tutte le sezioni richieste dal profilo"
Usage: #example
* status = #final
* id = "aa011502-6ad2-430b-a439-01dddc36fd4e"
* title = "Relazione Collaborativa di Teleconsulto"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* encounter = Reference(EncounterTelemedicinaExample)
* date = "2025-06-16T10:30:00+02:00"
* author = Reference(PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42)
* section[questitoDiagnostico].code = $loinc#29299-5
* section[questitoDiagnostico].title = "Quesito Diagnostico"
* section[questitoDiagnostico].entry[0] = Reference(Observation/7cbbe77d-dcdb-409b-a215-6361ad7873d5)
* section[InquadramentoClinicoIniziale].title = "Inquadramento Clinico Iniziale"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section[anamnesi].title = "Anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].entry = Reference(Observation/84f911ee-b09d-4325-a3f3-a973a0c5ad8f)
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2
* section[InquadramentoClinicoIniziale].section[allergie].title = "Allergie"
* section[InquadramentoClinicoIniziale].section[allergie].entry = Reference(AllergyIntolerance/1360bd6a-3855-48d3-aa33-96a9d961bb94)
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].title = "Terapia farmacologica in atto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry = Reference(MedicationStatement/e62c9f1d-9c0b-4433-853b-06ec5074f19a)
* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1
* section[InquadramentoClinicoIniziale].section[esameObiettivo].title = "Esame obiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry = Reference(Observation/c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865)
* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].title = "Precedenti esami eseguiti"
* section[precedentiEsamiEseguiti].entry[0] = Reference(Observation/9dfdf0c9-a837-42d5-987c-6170c75cc476)
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1
* section[confrontoPrecedentiEsamiEseguiti].title = "Confronto con esami precedenti"
* section[confrontoPrecedentiEsamiEseguiti].entry[0] = Reference(Observation/ecc5c95f-a1c0-483c-b48e-5fd84762c393)
* section[referto].code = $loinc#47045-0
* section[referto].title = "Referto"
* section[referto].entry[0] = Reference(Observation/a465cf01-05e6-4f38-8f6a-b5d6c4168c94)
* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].title = "Diagnosi"
* section[diagnosi].entry[0] = Reference(Observation/1729dcef-ac19-434b-82e7-b6e6e51e74b3)
* section[conclusioni].code = $loinc#55110-1
* section[conclusioni].title = "Conclusioni"
* section[conclusioni].entry[0] = Reference(Observation/1611ed98-7577-48ab-9587-7ab4fc96e191)
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0
* section[suggerimentiPerMedicoPrescrittore].title = "Suggerimenti per il medico prescrittore"
* section[suggerimentiPerMedicoPrescrittore].entry[0] = Reference(Observation/2054e65c-2012-4286-aac7-ce2f23e8be31)
* section[accertamentiControlliConsigliati].code = $loinc#80615-8
* section[accertamentiControlliConsigliati].title = "Accertamenti/controlli consigliati"
* section[accertamentiControlliConsigliati].entry[0] = Reference(Observation/1b401b53-f564-4730-bb13-45d5620596f0)
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6
* section[terapiaFarmacologicaConsigliata].title = "Terapia farmacologica consigliata"
* section[terapiaFarmacologicaConsigliata].entry[0] = Reference(MedicationRequest/9282eb8d-b153-451a-bd0d-437efd13b45f)
* section[allegati].code = $loinc#77599-9
* section[allegati].title = "Documenti allegati"
* section[allegati].entry[0] = Reference(DocumentReference/4f6c71e1-cc6e-4428-ae9b-0118c0a928cb)
* section[prestazioni].code = $loinc#62387-6 
* section[prestazioni].title = "Prestazioni"
* section[prestazioni].entry[0] = Reference(Procedure/b81d2c4e-5a9f-4c97-90fb-2a3b726b123f)

Instance: PractitionerTelemedicinaExample
InstanceOf: PractitionerTelemedicina
Description: "Esempio di practitioner nel contesto della teleconsulto"
Usage: #example
* id = "2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* name.given = "John"
* name.family = "Doe"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 


Instance: PractitionerRoleTelemedicinaExample
InstanceOf: PractitionerRoleTelemedicina
Description: "Esempio di practitionerRole nel contesto della teleconsulto"
Usage: #example
* organization = Reference(AslRoma1)
* practitioner = Reference(PractitionerTelemedicinaExample)
* specialty = csspecialityPractitionerRole#01 "Allergologia"
* id = "e446e848-2bd4-423a-b2f8-5d25687e2f42"

// Instance: AslRoma1
// InstanceOf: OrganizationT1
// Description: "Esempio di organization nel contesto della teleconsulto"
// Usage: #example
// * name = "FantasticaAzienda"
// * id = "e446e848-2bd4-423a-b2f8-5d25687e2f4b"


Instance: Observation-quesito
InstanceOf: ObservationTeleconsulto
Description: "Esempio di quesito diagnostico nel contesto della teleconsulto"
Usage: #example
* id = "7cbbe77d-dcdb-409b-a215-6361ad7873d5"
* status = #final
* code = http://hl7.it/fhir/teleconsulto/CodeSystem/diagnosi-icd9cm#786.2 "TOSSE"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Controllo post-COVID per tosse persistente"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"

Instance: Observation-anamnesi
InstanceOf: ObservationTeleconsulto
Description: "Esempio di anamnesi nel contesto della teleconsulto"
Usage: #example
* id = "84f911ee-b09d-4325-a3f3-a973a0c5ad8f"
* status = #final
* code = $loinc#11329-0
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Paziente con anamnesi positiva per bronchite cronica, non fumatore."
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: AllergyIntolerance-allergia1
InstanceOf: AllergyIntoleranceTeleconsulto
Description: "Esempio di allergyIntolerance nel contesto della teleconsulto"
Usage: #example
* id = "1360bd6a-3855-48d3-aa33-96a9d961bb94"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#91936005 "Allergy to penicillin"
* patient = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)


Instance: MedicationStatement-terapia-corrente
InstanceOf: MedicationStatementTeleconsulto
Description: "Esempio di medicationStatement nel contesto della teleconsulto"
Usage: #example
* status = #active
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* medicationCodeableConcept = $sct#372729009 "Acyclovir"
* effectivePeriod.start = "2025-06-01"
* id = "e62c9f1d-9c0b-4433-853b-06ec5074f19a"


Instance: Observation-esame-obiettivo
InstanceOf: ObservationTeleconsulto
Description: "Esempio di esame obiettivo nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = $loinc#29545-1
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Durante la conversazione si rileva tosse secca intermittente."
* id = "c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-esami-precedenti
InstanceOf: ObservationTeleconsulto
Description: "Esempio di prcedenti esami eseguiti nel contesto della teleconsulto"
Usage: #example
* status = #final
// * category[0] = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* code = $loinc#24606-6 "MG Breast Screening"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* effectiveDateTime = "2025-05-10"
* method.coding[0].system = "http://snomed.info/sct"
* method.coding[0].code = #713548006
* method.coding[0].display = "Low dose computed tomography of thorax"
* valueString = "TC torace eseguita il 10/05/2025. Referto: negativa per lesioni polmonari evolutive."
* id = "9dfdf0c9-a837-42d5-987c-6170c75cc476"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-confronto-esami
InstanceOf: ObservationTeleconsulto
Description: "Esempio di confronto con precedenti esame eseguiti nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = $loinc#93126-1
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Rispetto al controllo precedente, lieve miglioramento del quadro bronchiolitico."
* id = "ecc5c95f-a1c0-483c-b48e-5fd84762c393"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-referto-principale
InstanceOf: ObservationTeleconsulto
Description: "Esempio di referto nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = $loinc#47045-0
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Referto di teleconsulto pneumologica: sintomi in miglioramento, non si evidenziano complicanze."
* id = "a465cf01-05e6-4f38-8f6a-b5d6c4168c94"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-diagnosi-principale
InstanceOf: ObservationTeleconsulto
Description: "Esempio di esame diagnosi nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = http://hl7.it/fhir/teleconsulto/CodeSystem/diagnosi-icd9cm#491.1 "BRONCHITE CRONICA MUCOPURULENTA"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Bronchite cronica in fase stabile, con sintomatologia respiratoria lieve (tosse secca persistente), assenza di segni di riacutizzazione e buona risposta alla terapia inalatoria in corso."
* id = "1729dcef-ac19-434b-82e7-b6e6e51e74b3"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-conclusioni-generali
InstanceOf: ObservationTeleconsulto
Description: "Esempio di conclusioni generali nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = $loinc#55110-1
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Buona risposta al trattamento inalatorio. Monitoraggio consigliato."
* id = "1611ed98-7577-48ab-9587-7ab4fc96e191"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-suggerimenti
InstanceOf: ObservationTeleconsulto
Description: "Esempio di suggerimenti nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = $loinc#62385-0
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Valutare spirometria di controllo tra 3 mesi."
* id = "2054e65c-2012-4286-aac7-ce2f23e8be31"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-accertamenti-consigliati
InstanceOf: ObservationTeleconsulto
Description: "Esempio di accertamenti consigliati nel contesto della teleconsulto"
Usage: #example
* status = #final
* code = $loinc#80615-8
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Controllo emogasanalisi a domicilio."
* id = "1b401b53-f564-4730-bb13-45d5620596f0"
* performer = Reference(PractitionerRoleTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: MedicationRequest-terapia-consigliata
InstanceOf: MedicationRequestTeleconsulto
Description: "Esempio di terapia consigliata nel contesto della teleconsulto"
Usage: #example
* status = #active
* intent = #proposal
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* medicationCodeableConcept = https://www.hl7.it/fhir/terminology/CodeSystem/aifa-atc#C01BD01 "Amiodarone" 
* authoredOn = "2025-06-16"
* requester = Reference(PractitionerTelemedicinaExample)
* id = "9282eb8d-b153-451a-bd0d-437efd13b45f"


Instance: DocumentReference-allegato1
InstanceOf: DocumentReference
Description: "Esempio di allegsti nel contesto della teleconsulto"
Usage: #example
* status = #current
* type = $loinc#55107-7 "Addendum Document"
* subject = Reference(PatientTeleconsultoExample)
* content[0].attachment.title = "TC Torace 10/05/2025"
* date = "2025-06-16T10:00:00+02:00"
* id = "4f6c71e1-cc6e-4428-ae9b-0118c0a928cb"
* content[0].attachment.contentType = $mimeType#"application/pdf"
* content[0].attachment.data = "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"


Instance: ProcedureTeleconsultoExample
InstanceOf: ProcedureTeleconsulto
Title: "Esempio di Procedura per il Teleconsulto Cardiologica"
Description: "Esempio di istanza ProcedureTeleconsulto per una teleconsulto cardiologica."
Usage: #example
* id = "b81d2c4e-5a9f-4c97-90fb-2a3b726b123f"
* status = #completed
* category = http://snomed.info/sct#409063005 "Counselling"
//* code = http://hl7.it/fhir/teleconsulto/CodeSystem/CodesystemCatalogoNazionalePrestazioni#89.17.3 "MONITORAGGIO CARDIORESPIRATORIO NOTTURNO COMPLETOPer studio apnee"
* subject = Reference(PatientTeleconsultoExample)
* performedPeriod.start = "2025-07-08T10:00:00+01:00"
* performedPeriod.end = "2025-07-08T10:30:00+01:00"
* recorder = Reference(PractitionerTelemedicinaExample)
* performer[+].actor = Reference(PractitionerTelemedicinaExample)
* performer[=].function = http://snomed.info/sct#17561000 "Cardiologist"
* outcome.text = "Il paziente ha riportato miglioramenti. Non si segnalano criticità. Terapia invariata."
* note[+].text = "Teleconsulto eseguita tramite piattaforma XTelemed."


Instance: AppointmentTeleconsultoExample
InstanceOf: AppointmentTeleconsulto
Title: "Appuntamento Teleconsulto Cardiologica"
Description: "Esempio di appuntamento per teleconsulto cardiologica del paziente Mario Rossi"
Usage: #example
* id = "9c7e5f13-47bd-4a0a-a6bb-c9e39fd3a908"
* status = #booked
* identifier.value = "TV-20250709-001"
* created = "2025-07-01T09:00:00+01:00"
* start = "2025-07-09T10:00:00+01:00"
* end = "2025-07-09T10:30:00+01:00"
* basedOn = Reference(ServiceRequestTelemedicinaExample)
* serviceCategory = http://terminology.hl7.org/CodeSystem/service-category|1.1.1#8 "Counselling"
* reasonCode = http://snomed.info/sct#3143004 "Visual field examination and evaluation, intermediate"
* reasonCode.text = "Teleconsulto cardiologica per controllo post-operatorio"
* participant[0].actor = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* participant[0].status = #accepted
* participant[1].actor = Reference(PractitionerRoleTelemedicinaExample)
* participant[1].status = #accepted


Instance: ServiceRequestTelemedicinaExample
InstanceOf: ServiceRequestRelazioneCollaborativaTeleconsulto
Title: "Richiesta Teleconsulto Cardiologica - Mario Rossi"
Description: "Esempio di ServiceRequest per una teleconsulto cardiologica, con NRE e branca di prestazione."
Usage: #example
* id = "d3f1a9b0-8c3d-4e8f-b2e2-59d8b02a6fdc"
* status = #active
* intent = #order
* identifier.value = "AAZ123456789"
* requisition.value = "REQ-20250709-0001"
* category = http://hl7.it/fhir/teleconsulto/CodeSystem/branca-prestazione#02 "Cardiologia"
* priority = #routine
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* subject.display = "Mario Rossi"
* encounter = Reference(EncounterTelemedicinaExample)
* encounter.display = "Teleconsulto 09/07/2025"
* occurrenceDateTime = "2025-07-09T10:00:00+01:00"
* authoredOn = "2025-07-01T09:15:00+01:00"
* requester = Reference(PractitionerRoleTelemedicinaExample)
//* performer = Reference(Organization/ASLRoma1)
* reasonCode = http://snomed.info/sct#2153008 "Cardiac catheterization education"
* note[+].text = "Prestazione da eseguire in modalità remota tramite piattaforma XTelemed"


Instance: AslRoma1
InstanceOf: OrganizationT1
Title: "ASL Roma 1"
Description: "Esempio di Azienda Sanitaria Locale (ASL)"
Usage: #example
* id = "asl-roma-1"
* name = "ASL Roma 1"
* identifier[asl].system = "http://hl7.it/sid/fls"
* identifier[asl].value = "RM0011"
* identifier[aslRegione].system = "https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione"
* identifier[aslRegione].value = "RM1"
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva"
* identifier[partitaIva].value = "12345678901"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale"
* identifier[codiceFiscale].value = "01234567890"


Instance: PresidioSandroPertini
InstanceOf: OrganizationT2
Title: "Presidio Sandro Pertini"
Description: "Presidio ospedaliero facente parte di ASL Roma 1"
Usage: #example

* id = "osp-pertini"
* name = "Ospedale Sandro Pertini"
* partOf = Reference(Organization/asl-roma-1)
* identifier.system = "http://hl7.it/sid/hsp"
* identifier.value = "HSP00123"


Instance: UOCardiologiaPertini
InstanceOf: OrganizationT3
Title: "U.O. Cardiologia - Ospedale Pertini"
Description: "Unità Operativa di Cardiologia afferente all'Ospedale Pertini"
Usage: #example

* id = "uo-cardiologia-pertini"
* name = "U.O. Cardiologia"
* partOf = Reference(Organization/osp-pertini)
* identifier.system = "http://hl7.it/sid/hsp"
* identifier.value = "UO12345"


// Instance: RichiestaTeleconsultoCardiologicoTransaction
// InstanceOf: Bundle
// Title: "Esempio di Richiesta Teleconsulto Cardiologico - Transaction"
// Description: "Esempio FHIR di teleconsulto tra MMG e cardiologo - come transaction"
// Usage: #example
// * type = #transaction
// * entry[0].fullUrl = "http://example/Composition/composition-request-richiesta-1"
// * entry[0].resource = CompositionRichiestaTeleconsultoExample
// * entry[0].request.method = #PUT
// * entry[0].request.url = "Composition/composition-request-richiesta-1"

// * entry[1].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
// * entry[1].resource = PatientTeleconsultoExample
// * entry[1].request.method = #POST
// * entry[1].request.url = "Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"

// * entry[2].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
// * entry[2].resource = PractitionerRoleTelemedicinaExample
// * entry[2].request.method = #POST
// * entry[2].request.url = "PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"

// * entry[3].fullUrl = "http://example/Organization/asl-roma-1"
// * entry[3].resource = AslRoma1
// * entry[3].request.method = #POST
// * entry[3].request.url = "Organization/asl-roma-1"

// * entry[4].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
// * entry[4].resource = PractitionerTelemedicinaExample
// * entry[4].request.method = #POST
// * entry[4].request.url = "Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"

// * entry[5].fullUrl = "http://example/ServiceRequest/service-request-richiesta-1"
// * entry[5].resource = ServiceRequestRichiestaTeleconsultoExample
// * entry[5].request.method = #PUT
// * entry[5].request.url = "ServiceRequest/service-request-richiesta-1"

// * entry[6].fullUrl = "http://example/Procedure/b81d2c4e-5a9f-4c97-90fb-2a3b726b123f"
// * entry[6].resource = ProcedureTeleconsultoExample
// * entry[6].request.method = #PUT
// * entry[6].request.url = "Procedure/b81d2c4e-5a9f-4c97-90fb-2a3b726b123f"

// * entry[7].fullUrl = "http://example/PractitionerRole/9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"
// * entry[7].resource = PractitionerRoleTelemedicinaConsulenteExample
// * entry[7].request.method = #PUT
// * entry[7].request.url = "PractitionerRole/9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"


Instance: RichiestaTeleconsultoCardiologico
InstanceOf: BundleRichiestaTeleconsulto
Title: "Esempio di Richiesta di Teleconsulto Cardiologico"
Description: "Esempio FHIR di teleconsulto tra MMG e cardiologo"
Usage: #example
* type = #document
* timestamp = "2025-07-15T10:00:00+01:00"
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[0].fullUrl = "http://example/Composition/composition-request-richiesta-1"
* entry[0].resource = CompositionRichiestaTeleconsultoExample

* entry[1].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTeleconsultoExample

* entry[2].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
* entry[2].resource = PractitionerRoleTelemedicinaExample

* entry[3].fullUrl = "http://example/Organization/asl-roma-1"
* entry[3].resource = AslRoma1

* entry[4].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* entry[4].resource = PractitionerTelemedicinaExample

* entry[5].fullUrl = "http://example/ServiceRequest/service-request-richiesta-1"
* entry[5].resource = ServiceRequestRichiestaTeleconsultoExample

* entry[6].fullUrl = "http://example/Procedure/f65a8d9b-901e-4a8f-a2ff-746aad6b0d1e"
* entry[6].resource = ProceduraRichiestaTeleconsultoExample

* entry[7].fullUrl = "http://example/PractitionerRole/9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"
* entry[7].resource = PractitionerRoleTelemedicinaConsulenteExample


//Richiesta di teleconsulto transacrion
Instance: RichiestaTeleconsultoCardiologicoTransaction
InstanceOf: BundleRichiestaTeleconsultoTransaction
Title: "Esempio di Richiesta di Teleconsulto Cardiologico"
Description: "Esempio FHIR di teleconsulto tra MMG e cardiologo"
Usage: #example
* type = #transaction
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* timestamp = "2025-07-15T10:00:00+01:00"

// Manteniamo le stesse risorse dell'esempio originale
* entry[0].fullUrl = "http://example/Composition/composition-request-richiesta-1"
* entry[0].resource = CompositionRichiestaTeleconsultoExample
* entry[0].request.method = #POST
* entry[0].request.url = "Composition"

* entry[1].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTeleconsultoExample
* entry[1].request.method = #PUT
* entry[1].request.url = "Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"

* entry[2].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
* entry[2].resource = PractitionerRoleTelemedicinaExample
* entry[2].request.method = #PUT
* entry[2].request.url = "PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"

* entry[3].fullUrl = "http://example/Organization/asl-roma-1"
* entry[3].resource = AslRoma1
* entry[3].request.method = #PUT
* entry[3].request.url = "Organization/asl-roma-1"

* entry[4].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* entry[4].resource = PractitionerTelemedicinaExample
* entry[4].request.method = #PUT
* entry[4].request.url = "Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"

* entry[5].fullUrl = "http://example/ServiceRequest/service-request-richiesta-1"
* entry[5].resource = ServiceRequestRichiestaTeleconsultoExample
* entry[5].request.method = #POST
* entry[5].request.url = "ServiceRequest"

* entry[6].fullUrl = "http://example/Procedure/f65a8d9b-901e-4a8f-a2ff-746aad6b0d1e"
* entry[6].resource = ProceduraRichiestaTeleconsultoExample
* entry[6].request.method = #POST
* entry[6].request.url = "Procedure"

* entry[7].fullUrl = "http://example/PractitionerRole/9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"
* entry[7].resource = PractitionerRoleTelemedicinaConsulenteExample
* entry[7].request.method = #PUT
* entry[7].request.url = "PractitionerRole/9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"


Instance: CompositionRichiestaTeleconsultoExample
InstanceOf: CompositionRichiestaTeleconsulto
Title: "Esempio completo di richiesta di teleconsulto"
Description: "Referto teleconsulto con tutte le sezioni richieste dal profilo"
Usage: #example
* status = #final
* id = "composition-request-richiesta-1"
* title = "Richiesta di Teleconsulto"
* date = "2025-06-16T10:30:00+02:00"
* author = Reference(PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42)

* section[richiestaTeleconsulto].code = $loinc#11488-4
* section[richiestaTeleconsulto].title = "richiestaTeleconsulto"
* section[richiestaTeleconsulto].entry[0] = Reference(ServiceRequest/service-request-richiesta-1)

* section[prestazioni].code = $loinc#62387-6 
* section[prestazioni].title = "Prestazioni"
* section[prestazioni].entry[0] = Reference(Procedure/f65a8d9b-901e-4a8f-a2ff-746aad6b0d1e)

Instance: ServiceRequestRichiestaTeleconsultoExample
InstanceOf: ServiceRequestRichiestaTeleconsulto
Title: "Richiesta Teleconsulto Cardiologica"
Description: "Esempio di ServiceRequest per la richiesta di teleconsulto."
Usage: #example
* id = "service-request-richiesta-1"
* extension[oscuramentoDati].valueBoolean = false
* status = #active
* intent = #order
* identifier.value = "AAZ123456789"
* requisition.value = "REQ-20250709-0001"
* category = http://hl7.it/fhir/teleconsulto/CodeSystem/branca-prestazione#02 "Cardiologia"
* priority = #routine
* subject = Reference(PatientTeleconsultoExample)
* occurrenceDateTime = "2025-07-09T10:00:00+01:00"
* authoredOn = "2025-07-01T09:15:00+01:00"
* requester = Reference(PractitionerRoleTelemedicinaExample)
* performer = Reference(PractitionerRoleTelemedicinaConsulenteExample)
* reasonCode = CodeSystem_DiagnosiICD9CM#402.00 "CARDIOPATIA IPERTENSIVA MALIGNA SENZA INSUFFICIENZA CARDIACA"
* note[+].text = "Teleconsulto da eseguire in modalità remota tramite piattaforma XTelemed"


// Instance: PractitionerTelemedicinaExample
// InstanceOf: PractitionerTelemedicina
// Description: "Esempio di practitioner nel contesto della teleconsulto"
// Usage: #example
// * id = "2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
// * name.given = "John"
// * name.family = "Doe"


Instance: PractitionerRoleTelemedicinaConsulenteExample
InstanceOf: PractitionerRoleTelemedicina
Description: "Esempio di practitionerRole nel contesto della teleconsulto"
Usage: #example
* organization = Reference(AslRoma1)
* practitioner = Reference(PractitionerTelemedicinaConulenteExample)
* specialty = csspecialityPractitionerRole#01 "Allergologia"
* id = "9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"

Instance: PractitionerTelemedicinaConulenteExample
InstanceOf: PractitionerTelemedicina
Description: "Esempio di practitioner nel contesto della teleconsulto"
Usage: #example
* id = "d37c3d0a-96d9-4de5-873c-68b6c1c64db2"
* name.given = "John"
* name.family = "Cena"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 


Instance: ProceduraRichiestaTeleconsultoExample
InstanceOf: ProcedureTeleconsulto
Title: "Esempio di procedura nel contesto del teleconsulto cardiologico"
Description: "Esempio di istanza ProcedureTeleconsulto per una teleconsulto cardiologica."
Usage: #example
* id = "f65a8d9b-901e-4a8f-a2ff-746aad6b0d1e"
* status = #completed
* category = http://snomed.info/sct#409063005 "Counselling"
//* code = http://hl7.it/fhir/teleconsulto/CodeSystem/CodesystemCatalogoNazionalePrestazioni#89.17.3 "MONITORAGGIO CARDIORESPIRATORIO NOTTURNO COMPLETOPer studio apnee"
* subject = Reference(PatientTeleconsultoExample)
* performedPeriod.start = "2025-07-08T10:00:00+01:00"
* performedPeriod.end = "2025-07-08T10:30:00+01:00"
* recorder = Reference(PractitionerTelemedicinaExample)
* performer[+].actor = Reference(PractitionerTelemedicinaExample)
* performer[=].function = http://snomed.info/sct#17561000 "Cardiologist"
* outcome.text = "Il paziente ha riportato miglioramenti. Non si segnalano criticità. Terapia invariata."
* note[+].text = "Teleconsulto eseguita tramite piattaforma XTelemed."
//* code = CodesystemCatalogoNazionalePrestazioni#89.01.3 "VISITA CARDIOLOGICA DI CONTROLLO. Incluso eventuale ECG."