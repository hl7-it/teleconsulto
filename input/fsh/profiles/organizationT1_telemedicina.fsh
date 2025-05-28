// Alias: $minsan-fls = https://terminology.agenas.gov.it/ValueSet/minsan-fls
// Alias: $minsan-asl = http://hl7.it/fhir/lab-report/ValueSet/minsan-asl
Alias: $uri-idAslRegione = https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione

Profile: OrganizationT1
Parent: OrganizationTelemedicina
Id: OrganizationT1
Description: "Profilo base generico per Organization di tipo 1 (es. ASL, AO, IRCCS)"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains IdentificativoAsl 0..1 and
    asl 0..1 and aslRegione 0..1 and partitaIva 0..1 and codiceFiscale 0..1
* identifier[IdentificativoAsl] ^short = "Identificativo di Organization"
* identifier[IdentificativoAsl] ^definition = "Identificativi di Organization usato per identificare l'Organization di tipo ASL"
* identifier[IdentificativoAsl].system = "https://agenas.gov.it/sid/minsan-fls" (exactly)
* identifier[IdentificativoAsl].system ^short = "Spazio dei nomi"
* identifier[IdentificativoAsl].system ^definition = "Spazio dei nomi in cui l'identificativo è univoco. In questo caso lo spazio dei nomi fa riferimento a quanto censito per le ASL ereditato dalla terminologia di HL7 IT"
* identifier[IdentificativoAsl].value from ValuesetMinisteroSaluteidASL (required)
* identifier[IdentificativoAsl].value ^short = "Valore univoco"
* identifier[IdentificativoAsl].value ^definition = "Valore univoco dell'identificativo per le strutture di tipo ASL"
* identifier[asl] ^sliceName = "asl"
* identifier[asl] ^short = "Identificativo Azienda Sanitaria Locale (FLS 11 - 6 char)"
* identifier[asl].system = "http://hl7.it/sid/fls" (exactly)
* identifier[asl].value from VsMinisteroSaluteAsl (required)
* identifier[asl].value ^binding.description = "MDS - ASL"
* identifier[aslRegione] ^sliceName = "aslRegione"
* identifier[aslRegione] ^short = "Identificativo Regionale Azienda Sanitaria Locale (FLS 11 - 3 char)"
* identifier[aslRegione].system from $uri-idAslRegione (required)
* identifier[aslRegione].system ^binding.description = "Identificativi regionali per ASL (3 char) (required)"
* identifier[partitaIva] ^sliceName = "partitaIva"
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)
* identifier[codiceFiscale] ^sliceName = "codiceFiscale"
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)
