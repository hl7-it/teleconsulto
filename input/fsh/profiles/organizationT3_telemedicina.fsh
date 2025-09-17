Alias: $minsan-fls = https://terminology.agenas.gov.it/ValueSet/minsan-fls
Alias: $uri-idAslRegione = https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione

Profile: OrganizationT3
Parent: Organization
Id: OrganizationT3
Description: "Profilo di Organization di tipo 3 (es. Reparto, ambulatorio)"
// * ^jurisdiction = urn:iso:std:iso:3166#IT
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier contains
//     unitaOperativa 0..1
// * identifier[unitaOperativa] ^sliceName = "unitaOperativa"
// * identifier[unitaOperativa] ^short = "Codice dell'unità operativa"
* identifier ^short = "Codice dell'unità operativa"
* identifier 1..


* partOf only Reference(OrganizationT2)
