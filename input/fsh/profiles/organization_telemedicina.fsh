
Profile: OrganizationTelemedicina
Parent: Organization
Id: OrganizationTelemedicina
Description: "Profilo base della Organization condiviso in tutti i documenti di Telemedicina"
* ^version = "0.1.0"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#IT
* id ^short = "ID logico della risorsa"
* id ^definition = "ID logico della risorsa, come utilizzato nell'URL della risorsa. Una volta assegnato, questo valore non cambia mai."
* id ^comment = "Il valore associato al campo deve rispettare il seguente formalismo:\\nPOD.GUID\\ndove POD= point of delivery identification"
* identifier ^short = "Identificativi di Organization"
* identifier ^definition = "Identificativi di Organization usati per identificare l'Organization su diversi sistemi"
* active ^short = "Indica se la risorsa è attiva."
* active ^definition = "Indica se la risorsa è attiva."
* type ^short = "Tipo di organizzazione"
* type ^definition = "Il tipo di organizzazione di cui si tratta"
* type ^comment = "Le organizzazioni possono essere di diversi tipi"
* type.coding ^short = "Codice definito da un sistema terminologico"
* type.coding ^definition = "Un riferimento a un codice definito da un sistema terminologico."
* name ^short = "Nome usato per l'Organization"
* name ^definition = "Descrizione della Organization"
* address.city ^short = "Comune"
* address.district ^short = "Nome della provincia"
* address.state ^short = "Sotto-unità dello stato (Regione)."
* partOf ^short = "L'Organization di cui questa Organization è parte"
* partOf ^definition = "L'Organization di cui questa Organization è parte"
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorerre ad una reference di tipo logico"
* partOf.identifier ^short = "Reference logica"
* partOf.identifier ^definition = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorerre ad una reference di tipo logico"
* partOf.identifier ^example.label = "Reference logica da utilizzare in caso di poliambulatorio, parte della ASL"
* partOf.identifier ^example.valueIdentifier.system = "https://terminology.agenas.gov.it/CodeSystem/minsan-fls"
* partOf.identifier ^example.valueIdentifier.value = "150206"