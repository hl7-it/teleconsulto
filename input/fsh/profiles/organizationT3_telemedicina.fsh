Profile: OrganizationT3
Parent: Organization
Id: OrganizationT3
Description: "Profilo di un'Unità Operativa (es. Reparto, ambulatorio)"
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

* partOf ^short = "Presidio o Azienda Sanitaria di cui questa unità operativa è parte"
* partOf ^definition = "Se presente è opportuno indicare il Presidio in maniera da costruire la gerarchia completa: Azienda Sanitaria -> Presidio -> Unità Operativa"
* partOf only Reference(OrganizationT2 or OrganizationT1)
