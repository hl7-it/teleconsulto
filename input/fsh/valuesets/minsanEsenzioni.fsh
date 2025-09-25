Alias: $minsan-esenzioni = http://terminology.hl7.it/CodeSystem/minsan-esenzioni

ValueSet: VsMinisteroSaluteEsenzioni
Id: minsan-esenzioni
Title: "Ministero della Salute - Esenzioni"
Description: "Codici Esenzioni Ministero della Salute"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-06-30T18:23:29+02:00"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* ^experimental = false
* include codes from system $minsan-esenzioni where status = "active"