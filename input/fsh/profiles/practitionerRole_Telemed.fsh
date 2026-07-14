Profile: PractitionerRoleTeleconsulto
Parent: PractitionerRole
Id: PractitionerRoleTeleconsulto
Title: "PractitionerRoleTeleconsulto"
Description: "Profilo del PractitionerRole utilizzato nel contesto del Teleconsulto"
* ^version = "0.1.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#IT

* practitioner 1..
* practitioner only Reference(PractitionerTeleconsulto)
* practitioner ^short = "Dettagli del professionista"

* organization 1..
* organization only Reference(OrganizationT1 or OrganizationT2 or OrganizationT3)
* organization ^short = "Azienda Sanitaria, Presidio o Unità Operativa"
* organization ^definition = "Il campo deve essere valorizzato con il riferimento all'organizzazione più specifica disponibile. Le organizzazioni di livello superiore sono collegate tramite il campo partOf, consentendo la navigazione dell'intera struttura gerarchica. Qualora non sia presente l'informazione sull'Unità Operativa o sul Presidio è sufficiente riportare l'Azienda Sanitaria"

* specialty 1..
* specialty from vsspecialityPractitionerRole (required)
* specialty ^short = "Disciplina specialistica del professionista"
* specialty ^definition = "Disciplina medica (es. Cardiologia Neurologia ecc.) per la quale il professionista è specializzato"