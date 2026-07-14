// ============================================================
// ALIAS CENTRALIZZATI - Teleconsulto IG
// ============================================================

// --- Terminologie standard HL7 / FHIR ---
Alias: $loinc                   = http://loinc.org
Alias: $sct                     = http://snomed.info/sct
Alias: $v2-0203                 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $icd-9-cm                = http://hl7.org/fhir/sid/icd-9-cm
Alias: $uri                               = urn:ietf:rfc:3986
Alias: $mimeType                = urn:ietf:bcp:13

// --- Estensioni FHIR core ---
Alias: $iso21090-ADXP-streetName     = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName
Alias: $iso21090-ADXP-streetNameBase = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase
Alias: $iso21090-ADXP-streetNameType = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType
Alias: $iso21090-ADXP-houseNumber    = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber
Alias: $iso21090-SC-coding           = http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding
Alias: $data-absent-reason           = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $patient-birthPlace           = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $Timing                       = http://hl7.org/fhir/StructureDefinition/Timing

// --- AllergyIntolerance ---
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $allergyintolerance-clinical     = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical

// --- HL7 IT - sistemi di codifica ---
Alias: $cf               = http://hl7.it/sid/codiceFiscale
Alias: $anpr             = http://hl7.it/sid/anpr
Alias: $minsan-esenzioni = http://terminology.hl7.it/CodeSystem/minsan-esenzioni

// --- HL7 IT - CodeSystem ---
Alias: $minsan-hsp               = https://www.hl7.it/fhir/terminology/CodeSystem/minsan-hsp
Alias: $cs-mds-idStruttureInterne = https://www.hl7.it/fhir/terminology/CodeSystem/cs-mds-idStruttureInterne
Alias: $istat-dug                = https://www.hl7.it/fhir/terminology/CodeSystem/dug
Alias: $istat-DUG-CS             = https://www.hl7.it/fhir/terminology/CodeSystem/dug

// --- HL7 IT - ValueSet ---
Alias: $uri-idAslRegione          = https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione
Alias: $minsan-idStruttureInterne-vs = https://www.hl7.it/fhir/terminology/ValueSet/minsan-idStruttureInterne
Alias: $uri-idRegionali           = https://www.hl7.it/fhir/terminology/ValueSet/vs-anagrafi-regionali
Alias: $uri-idEni                 = https://www.hl7.it/fhir/terminology/ValueSet/VstipoIdentificatore
Alias: $uri-idStp                 = https://www.hl7.it/fhir/terminology/ValueSet/VstipoIdentificatore
Alias: $tipoCertificatore         = https://www.hl7.it/fhir/terminology/ValueSet/tipoCertificatore
Alias: $statoEsenzione            = https://www.hl7.it/fhir/terminology/ValueSet/statoEsenzione

// --- Agenas ---
Alias: $minsan-fls                   = https://terminology.agenas.gov.it/ValueSet/minsan-fls
Alias: $specialityPractitionerRole   = https://terminology.agenas.gov.it/ValueSet/specialityPractitionerRole
Alias: $catalogoRegionalePrestazioni = https://terminology.agenas.gov.it/ValueSet/catalogoRegionalePrestazioni

// --- Teleconsulto - StructureDefinitions locali ---
Alias: $Address                              = http://hl7.it/fhir/teleconsulto/StructureDefinition/Address
Alias: $Organization_T1                      = http://hl7.it/fhir/teleconsulto/StructureDefinition/Organization_T1
Alias: $Organization_T2                      = http://hl7.it/fhir/teleconsulto/StructureDefinition/Organization_T2
Alias: $Organization_T3                      = http://hl7.it/fhir/teleconsulto/StructureDefinition/Organization_T3
Alias: $extension_serviceRequest_codeCodingType = http://hl7.it/fhir/teleconsulto/StructureDefinition/extension_serviceRequest_codeCodingType

// --- Teleconsulto - CodeSystem ---
Alias: $csRaggioErogazione = http://hl7.it/fhir/teleconsulto/CodeSystem/csRaggioErogazione