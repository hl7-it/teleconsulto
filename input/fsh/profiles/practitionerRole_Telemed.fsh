
Alias: $Organization_T1 = https://agenas.gov.it/fhir/StructureDefinition/Organization_T1
Alias: $Organization_T2 = https://agenas.gov.it/fhir/StructureDefinition/Organization_T2
Alias: $Organization_T3 = https://agenas.gov.it/fhir/StructureDefinition/Organization_T3
Alias: $specialityPractitionerRole = https://terminology.agenas.gov.it/ValueSet/specialityPractitionerRole

Profile: PractitionerRoleTelemedicina
Parent: PractitionerRole
Id: PractitionerRoleTelemedicina
Title: "PractitionerRoleTelemedicina"
Description: "Profilo base del PractitionerRole condiviso in tutti i documenti di Telemedicina"
* ^version = "0.1.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#IT
* id ^short = "ID logico della risorsa"
* id ^definition = "ID logico della risorsa, come utilizzato nell'URL della risorsa. Una volta assegnato, questo valore non cambia mai."
* id ^comment = "Il valore associato al campo deve rispettare il seguente formalismo:\r\nPOD.GUID\r\ndove POD= point of delivery identification"
* identifier ^short = "Identificativo dell'operatore (e.g. Codice Fiscale, ID Regionale)"
* identifier ^definition = "Identificatori aziendali specifici di un ruolo/località."
* period ^short = "Il periodo durante il quale il professionista è autorizzato a svolgere questi ruoli"
* period ^definition = "Il periodo in cui la persona è autorizzata ad agire come professionista in questi ruoli per l'organizzazione."
* period ^comment = "Un Periodo specifica un intervallo di tempo; il contesto d'uso specificherà se si applica l'intero intervallo (ad esempio, \"il paziente è stato ricoverato in ospedale per questo intervallo di tempo\") o se si applica un valore dell'intervallo (ad esempio, \"la somministrazione al paziente è avvenuta tra questi due momenti\").\n\nPeriodo non è usato per una durata (una misura del tempo trascorso). Vedere [Duration](datatypes.html#Duration)."
* practitioner only Reference(PractitionerTelemedicina)
* practitioner ^short = "Dettagli dell'operatore"
* practitioner ^definition = "Il professionista è in grado di fornire i servizi definiti per l'organizzazione."
* practitioner ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la temporanea indisponibilità, ecc.) La risoluzione può avvenire tramite il recupero dell'URL o, se applicabile al tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
* organization only Reference(OrganizationTelemedicina or OrganizationT1)
* organization ^short = "Organizzazione di Appartenenza"
* organization ^definition = "L'organizzazione in cui il professionista svolge i ruoli associati."
* organization ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la temporanea indisponibilità, ecc.) La risoluzione può avvenire tramite il recupero dell'URL o, se applicabile al tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
* code ^short = "Ruoli che questo professionista può svolgere"
* code ^definition = "Ruoli che questo professionista è autorizzato a svolgere per l'organizzazione."
* code ^comment = "Una persona può avere più di un ruolo."
* specialty from vsspecialityPractitionerRole (required)