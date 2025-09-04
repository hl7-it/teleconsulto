Alias: $uri-idAslRegione = https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione
Alias: $minsan-idStruttureInterne-vs = https://www.hl7.it/fhir/terminology/ValueSet/minsan-idStruttureInterne

Profile: OrganizationT1
Parent: Organization
Id: OrganizationT1
Description: "Profilo base generico per Organization di tipo 1 (es. ASL, AO, IRCCS)"

* identifier ^short = "Identificativo dell'organizzazione."
* identifier ^definition = "Identificativi di Organization usati per identificare l'Organization su diversi sistemi"
* identifier 1..*

* type ^short = "Tipo di organizzazione"
* type ^definition = "Il tipo di organizzazione di cui si tratta"
* type ^comment = "Le organizzazioni possono essere di diversi tipi"

* name ^short = "Nome dell'organizzazione."
* name ^definition = "Descrizione della Organization"

* address.city ^short = "Comune"
* address.district ^short = "Nome della provincia"
* address.state ^short = "Sotto-unità dello stato (Regione)."

* partOf ^short = "L'Organization di cui questa Organization è parte"
* partOf ^definition = "L'Organization di cui questa Organization è parte"
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorerre ad una reference di tipo logico"


* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "value"
* identifier ^slicing.discriminator[1].type = #pattern
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier.system 1..1  
* identifier.value 1..1  
* identifier contains 
	asl 0..1 
	and aslRegione 0..1
	and aziendaOspedaliera 0..1 
	and struttura 0..1 
	and partitaIva 0..1
	and codiceFiscale 0..1
	and strutturaInterna 0..1

* identifier[asl] ^short = "Identificativo Azienda Sanitaria Locale"
* identifier[asl].system = "http://hl7.it/sid/fls" (exactly) // pattern
* identifier[asl].value from VsMinisteroSaluteAsl (required) //$asl

* identifier[aslRegione].value from https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione // pattern $asl
* identifier[aslRegione] ^short = "Identificativo Regionale Azienda Sanitaria Locale"

* identifier[aziendaOspedaliera].value from https://www.hl7.it/fhir/terminology/ValueSet/minsan-idAziendeOspedaliere (required)
* identifier[aziendaOspedaliera].system = "http://hl7.it/sid/hsp" (exactly)  // pattern
* identifier[aziendaOspedaliera] ^short = "Identificativo Azienda Ospedaliera"
//* identifier[aziendaOspedaliera].value from VsMinisteroSaluteIdAziendeOspedaliere (required)

* identifier[struttura].system = "http://hl7.it/sid/hsp" (exactly) // pattern
* identifier[struttura] ^short = "Identificativo Struttura di Ricovero"
//* identifier[struttura].value from VsMinisteroSaluteIdStrutture (required)
* identifier[struttura].value from https://www.hl7.it/fhir/terminology/ValueSet/minsan-idStrutture (required)

* identifier[strutturaInterna].system = "http://hl7.it/sid/hsp" (exactly) // pattern
* identifier[strutturaInterna].value from $minsan-idStruttureInterne-vs (required)

* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)  // pattern
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"

* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)  // pattern
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"


