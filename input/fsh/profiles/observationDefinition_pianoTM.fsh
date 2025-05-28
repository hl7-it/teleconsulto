Profile: ObservationDefinitionPianoTM
Parent: ObservationDefinition
Id: ObservationDefinitionPianoTM
Description: "Profilo della Observation utilizzata nel contesto del Telemonitoraggio"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/ObservationDefinitionPianoTM"
* ^status = #draft
* category ^short = "Tipologia di rilevazione"
* category ^definition = "Tipologia di rilevazione"
* code ^short = "Parametri"
* code ^definition = "Codice del parametro rilevato durante l'attività di telemonitoraggio."
* method ^short = "Metodo utilizzato per la rilevazione del parametro"
* method ^definition = "Metodo utilizzato per la rilevazione del parametro"
* qualifiedInterval.range ^short = "Soglia di allarme"
* qualifiedInterval.range ^definition = "Valori predefiniti per parametri che, se superati, indicano un potenziale rischio per il paziente."
* qualifiedInterval.condition ^short = "Regole"
* qualifiedInterval.condition ^definition = "Testo descrittivo delle regole di comportamento in violazione delle soglie"