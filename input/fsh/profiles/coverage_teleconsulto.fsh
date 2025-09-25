Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
//Alias: $coverage-exceptionStatus = http://hl7.it/fhir/StructureDefinition/coverage-exceptionStatus
//Alias: $minsan-esenzioni = http://hl7.it/fhir/ValueSet/minsan-esenzioni

Profile: CoverageTeleconsulto
Parent: Coverage
Id: CoverageTeleconsulto
Title: "CoverageTeleconsulto"
Description: "Profilo della risorsa Coverage utilizzata nel contesto del Teleconsulto."
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-06-03T11:10:33+02:00"
* costToBeneficiary.value[x].extension contains $data-absent-reason named absenceReason 0..1 MS
* costToBeneficiary.exception MS
* costToBeneficiary.exception.extension contains StatoEsenzioneCoverage named stato-esenzione 0..1 MS
* costToBeneficiary.exception.type MS
* costToBeneficiary.exception.type from VsMinisteroSaluteEsenzioni (extensible)
* costToBeneficiary.exception.type ^short = "codice esensione"
* costToBeneficiary.exception.period MS