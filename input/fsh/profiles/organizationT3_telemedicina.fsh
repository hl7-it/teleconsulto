Alias: $minsan-fls = https://terminology.agenas.gov.it/ValueSet/minsan-fls
// Alias: $minsan-asl = http://hl7.it/fhir/lab-report/ValueSet/minsan-asl
Alias: $uri-idAslRegione = https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione
// Alias: $minsan-idStrutture = http://hl7.it/fhir/lab-report/ValueSet/minsan-idStrutture
// Alias: $minsan-idStruttureInterne = http://hl7.it/fhir/lab-report/ValueSet/minsan-idStruttureInterne

Profile: OrganizationT3
Parent: OrganizationTelemedicina
Id: OrganizationT3
Description: "Profilo base generico per Organization di tipo 3 (es. Reparto, ambulatorio)"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    IdentificativoAsl 0..1 and
    IdentificativoSTS11 0..1 and
    asl 0..1 and aslRegione 0..1 and partitaIva 0..1 and codiceFiscale 0..1 and
    aziendaOspedaliera 0..1 and struttura 0..1 and strutturaInterna 0..1
* identifier[IdentificativoAsl] ^short = "Identificativo di Organization"
* identifier[IdentificativoAsl] ^definition = "Identificativi di Organization usato per identificare l'Organization di tipo ASL"
* identifier[IdentificativoAsl].system = "https://terminology.agenas.gov.it/CodeSystem/minsan-fls" (exactly)
* identifier[IdentificativoAsl].system ^short = "Spazio dei nomi"
* identifier[IdentificativoAsl].system ^definition = "Spazio dei nomi in cui l'identificativo è univoco. In questo caso lo spazio dei nomi fa riferimento a quanto censito per le ASL ereditato dalla terminologia di HL7 IT"
* identifier[IdentificativoAsl].value from ValuesetMinisteroSaluteidASL (required)
* identifier[IdentificativoAsl].value ^short = "Valore univoco"
* identifier[IdentificativoAsl].value ^definition = "Valore univoco dell'identificativo per le strutture di tipo ASL"
* identifier[IdentificativoSTS11] ^short = "Identificativo di Organization"
* identifier[IdentificativoSTS11] ^definition = "Identificativi di Organization usato per identificare l'Organization identificata da codici STS11, usato in questo contesto in particolare per i poliambulatori."
* identifier[IdentificativoSTS11].system = "https://terminology.agenas.gov.it/CodeSystem/STS11" (exactly)
* identifier[IdentificativoSTS11].system ^short = "Spazio dei nomi"
* identifier[IdentificativoSTS11].system ^definition = "Spazio dei nomi in cui l'identificativo è univoco. In questo caso lo spazio dei nomi fa riferimento ai codici da utilizzare per la codifica STS11, utilizzata in questo contesto in particolare per i poliambulatori."
* identifier[IdentificativoSTS11].value ^short = "Valore univoco dell'identificativo"
* identifier[IdentificativoSTS11].value ^definition = "Valore univoco dell'identificativo per strutture con codifica STS11"
* identifier[asl] ^sliceName = "asl"
* identifier[asl] ^short = "Identificativo Azienda Sanitaria Locale (FLS 11 - 6 char)"
* identifier[asl].system = "http://hl7.it/sid/fls" (exactly)
* identifier[asl].value from VsMinisteroSaluteAsl (required)
* identifier[asl].value ^binding.description = "MDS - ASL"
* identifier[aslRegione] ^sliceName = "aslRegione"
* identifier[aslRegione] ^short = "Identificativo Regionale Azienda Sanitaria Locale (FLS 11 - 3 char)"
* identifier[aslRegione].system from $uri-idAslRegione (required)
* identifier[aslRegione].system ^binding.description = "Identificativi regionali per ASL (3 char) (required)"
* identifier[aziendaOspedaliera] ^sliceName = "aziendaOspedaliera"
* identifier[aziendaOspedaliera] ^short = "Identificativo Azienda Ospedaliera"
* identifier[aziendaOspedaliera].system = "http://hl7.it/sid/hsp11" (exactly)
* identifier[struttura] ^sliceName = "struttura"
* identifier[struttura].system = "http://hl7.it/sid/hsp11.struttura" (exactly)
* identifier[struttura].value from VsMinisteroSaluteIdStrutture (required)
* identifier[struttura].value ^binding.description = "MDS - ID Strutture Ricovero"
* identifier[partitaIva] ^sliceName = "partitaIva"
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)
* identifier[codiceFiscale] ^sliceName = "codiceFiscale"
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)
* identifier[strutturaInterna] ^sliceName = "strutturaInterna"
* identifier[strutturaInterna].system = "http://hl7.it/sid/hsp11.strutturaInterna" (exactly)
* identifier[strutturaInterna].value from VsMinisteroSaluteIdStruttureInterne (required)
* identifier[strutturaInterna].value ^binding.description = "MDS - ID Strutture Interne di Ricovero"
* partOf only Reference(OrganizationT2)
