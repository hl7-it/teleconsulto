Alias: $Timing = http://hl7.org/fhir/StructureDefinition/Timing

Profile: TimingTelemedicina
Parent: $Timing
Id: TimingTelemedicina
Description: "Descrizione dei campi da valorizzare in Timing"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/TimingTelemedicina"
* ^status = #draft
* repeat.count ^short = "Numero di cicli"
* repeat.duration ^short = "Durata del ciclo"
* repeat.frequency ^short = "Frequenza"
* repeat.timeOfDay ^short = "Orario"