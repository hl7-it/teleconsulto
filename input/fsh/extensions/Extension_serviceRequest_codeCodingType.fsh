Extension: Extension_serviceRequest_codeCodingType
Id: Extension-serviceRequest-codeCodingType
Context: ServiceRequest.code.coding
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/extension_serviceRequest_codeCodingType"
* ^status = #draft
* ^date = "2023-09-20T21:19:29+02:00"
* . MS
* . ^short = "Tipologia codifica del servizio."
* . ^definition = "Indica la tipologia della codifica del servizio (es: Loinc, catalogo regionale prestazioni, catalogo nazionale prestazioni, etc.)"
* url = "https://agenas.gov.it/fhir/StructureDefinition/extension_serviceRequest_codeCodingType" (exactly)
* value[x] only string