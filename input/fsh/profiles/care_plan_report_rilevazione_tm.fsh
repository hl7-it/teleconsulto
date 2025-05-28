Alias: $Observation = https://agenas.gov.it/fhir/StructureDefinition/Observation

Profile: CarePlanReportRilevazioneTM
Parent: CarePlan
Id: CarePlanReportRilevazioneTM
Description: "Profilo del Care Plan utilizzato nel contesto del Report Rilevazione di Telemonitoraggio"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/CarePlanReportRilevazioneTM"
* ^status = #draft
* identifier ^short = "Codice identificativo del Piano"
* identifier ^definition = "Identificativi aziendali assegnati a questo piano di cura dall'esecutore o da altri sistemi, che rimangono costanti man mano che la risorsa viene aggiornata e propagata da server a server."
* subject only Reference(PatientTelemedicina)
* subject ^short = "Per chi è destinato il piano di cura"
* subject ^definition = "Identifica il paziente la cui cura prevista è descritta dal piano."
* activity ^short = "Azione da attuare come parte del piano"
* activity ^definition = "Identifica un'azione pianificata da attuare come parte del piano."
* activity.outcomeReference only Reference(ObservationTelemedicina)
* activity.outcomeReference ^short = "parametro rilevato"
* activity.outcomeReference ^definition = "parametro rilevato"

