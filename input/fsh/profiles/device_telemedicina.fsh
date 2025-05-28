Profile: DeviceTelemedicinaTesserino
Parent: Device
Id: DeviceTelemedicinaTesserino
Title: "DeviceTelemedicinaTesserino"
Description: "Profilo base del Device condiviso in tutti i documenti di Telemedicina"
* ^url = "https://agenas.gov.it/fhir/StructureDefinition/DeviceTelemedicinaTesserino"
* ^status = #draft
* ^experimental = false
* id MS
* id ^short = "Id della risorsa"
* meta MS
* meta ^short = "Metadati della risorsa"
* meta ^definition = "I metadati di una risorsa. Questo è il contenuto della risorsa gestita dall'infrastruttura. Le modifiche al contenuto potrebbero non essere sempre associate alle modifiche alla versione della risorsa."
* identifier MS
* identifier ^short = "Identificativo business del Device"
* identifier ^definition = "Descrive identificativi business per la risorsa"
* udiCarrier MS
* udiCarrier ^short = "Unique Device Identifier (UDI)"
* udiCarrier ^definition = "Unique device identifier (UDI) assegnato all'etichetta o al pacchetto del dispositivo."
* status MS
* manufacturer MS
* manufacturer ^short = "Nome del fabbricante"
* manufacturer ^definition = "Nome del fabbricante"
* manufactureDate MS
* manufactureDate ^short = "Data di fabbricazione"
* manufactureDate ^definition = "Data di fabbricazione"
* expirationDate MS
* expirationDate ^short = "Data di scadenza (se applicabile)"
* expirationDate ^definition = "Data di scadenza"
* lotNumber MS
* lotNumber ^short = "Numero di lotto"
* lotNumber ^definition = "Numero di lotto"
* serialNumber MS
* serialNumber ^short = "Numero seriale"
* serialNumber ^definition = "Numero seriale assegnato al device"
* deviceName MS
* deviceName ^short = "Il nome del dispositivo fornito dal produttore"
* deviceName ^definition = "Rappresenta il nome del produttore del dispositivo fornito dal dispositivo, da un'etichetta UDI o da una persona che descrive il dispositivo."
* deviceName.name MS
* deviceName.name ^short = "Nome del device"
* deviceName.name ^definition = "Nome del device"
* deviceName.type MS
* deviceName.type ^definition = "Tipologia del deviceName"
* type MS
* type ^short = "Tipologia del device"
* type ^definition = "Tipologia device associati al piano (es. monitor multiparametrico)."
* type.text MS