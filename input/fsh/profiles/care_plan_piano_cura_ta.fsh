Profile: CarePlanPianoDiCuraTA
Parent: CarePlan
Id: CarePlanPianoDiCuraTA
Description: "Profilo del CarePlan utilizzato nel contesto del Piano di Teleassisitenza"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/CarePlanPianoDiCuraTA"
* ^status = #draft
* identifier ^short = "Codice identificativo del Piano"
* identifier ^definition = "Identificativi aziendali assegnati a questo piano di cura dall'esecutore o da altri sistemi, che rimangono costanti man mano che la risorsa viene aggiornata e propagata da server a server."
* category from tipologia-piano (required)
* category ^short = "Tipologia di Piano"
* category ^definition = "Identifica il \"tipo\" di piano per supportare la differenziazione tra più piani coesistenti."
* subject only Reference(PatientTelemedicina)
* subject ^short = "Per chi è destinato il piano di cura"
* subject ^definition = "Identifica il paziente la cui cura prevista è descritta dal piano."
* period ^short = "Durata prevista del piano delle attività"
* period ^definition = "Durata prevista del piano delle attività."
* author only Reference(PractitionerRoleTelemedicina)
* author ^short = "Autore del piano di cura del paziente"
* author ^definition = "Autore del piano di cura del paziente. Quando popolato l'autore è il responsabile del piano di cura."
* activity ^short = "Azione da attuare come parte del piano"
* activity ^definition = "Identifica un'azione pianificata da attuare come parte del piano."
* activity.outcomeReference only Reference(ObservationTelemedicina)
* activity.outcomeReference ^short = "parametro rilevato"
* activity.reference only Reference(ServiceRequest)
* activity.detail.instantiatesCanonical only Canonical(ActivityDefinition)
