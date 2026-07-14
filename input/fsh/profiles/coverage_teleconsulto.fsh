Profile: CoverageTeleconsulto
Parent: Coverage
Id: CoverageTeleconsulto
Title: "CoverageTeleconsulto"
Description: "Profilo della risorsa Coverage utilizzata nel contesto del Teleconsulto."
* ^version = "0.1.0"
* ^status = #active

* costToBeneficiary.value[x].extension contains $data-absent-reason named absenceReason 0..1 MS
* costToBeneficiary.exception MS
* costToBeneficiary.exception.extension contains StatoEsenzioneCoverage named stato-esenzione 0..1 MS
* costToBeneficiary.exception.type MS
* costToBeneficiary.exception.type from VsMinisteroSaluteEsenzioni (extensible)
* costToBeneficiary.exception.type ^short = "Codice esenzione"
* costToBeneficiary.exception.type ^definition = "Codice che identifica la tipologia di esenzione"
* costToBeneficiary.exception.period MS