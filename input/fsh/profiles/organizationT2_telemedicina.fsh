

Profile: OrganizationT2
Parent: Organization
Id: OrganizationT2
Description: "Profilo base di Organization di tipo 2 (es. ospedale, distretto)"
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier contains IdentificativoSTS11 0..1 and
//     codicePresidio 0..1 
// * identifier[codicePresidio] ^sliceName = "codicePresidio"
// * identifier[codicePresidio] ^short = "Codice del presidio"
* identifier ^short = "Codice del presidio"
* identifier 1..


* partOf only Reference(OrganizationT1)

