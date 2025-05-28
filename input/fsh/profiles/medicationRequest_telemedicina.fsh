Profile: MedicationRequestTelemedicina
Parent: MedicationRequest
Id: MedicationRequestTelemedicina
Description: "Profilo base della MedicationRequest condiviso in tutti i documenti di Telemedicina" 
* ^status = #draft
* meta ^short = "Metadati della risorsa"
* meta ^definition = "Metadati della risorsa"
* identifier ^short = "Identificativo business della risorsa"
* identifier ^definition = "Identificativo business della risorsa"
* status ^definition = "Codice che desctive lo stato della request"
* intent = #proposal
* intent ^definition = "Scopo della request"
* medication[x] from https://www.hl7.it/fhir/terminology/ValueSet/aifa-aic (required)
* medication[x] ^short = "Definizione farmaco"
* medication[x] ^definition = "Identifica il farmaco oggetto delle medication request."
* medication[x] ^binding.strength = #preferred
* subject only Reference(PatientTelemedicina)
* subject ^short = "Soggetto per cui è ricchiesta la medication"
* subject ^definition = "Soggetto per cui è ricchiesta la medication"
* requester 1..1
* instantiatesCanonical ^short = "Crea un'istanza del protocollo o della definizione FHIR"
* instantiatesCanonical ^definition = "L'URL che punta a un protocollo, una linea guida, un set di ordini o un'altra definizione a cui aderisce in tutto o in parte questa MedicationRequest."
* dosageInstruction ^short = "Instuzioni di dosaggio e somministrazione"
* dosageInstruction ^definition = "Instuzioni di dosaggio e somministrazione"
* dosageInstruction.timing ^short = "Tempistiche di somministrazione del farmaco"
* dosageInstruction.timing ^definition = "Tempistiche di somministrazione del farmaco"
* dosageInstruction.timing.repeat.bounds[x] only Period
* dosageInstruction.timing.repeat.bounds[x] ^short = "Range temporale nel quale è valida la posologia."
* dosageInstruction.timing.repeat.bounds[x] ^definition = "Range temporale nel quale è valida la posologia."
* dosageInstruction.site ^short = "Sito di somministrazione"
* dosageInstruction.site ^definition = "Sito di somministrazione"
* dosageInstruction.route ^short = "Via di somministrazione"
* dosageInstruction.route ^definition = "Via di somministrazione"
* dosageInstruction.doseAndRate ^short = "Dosaggio e frequenza del farmaco"
* dosageInstruction.doseAndRate ^definition = "Dosaggio e frequenza del farmaco"