## Legenda di lettura

Il **Model Map** in esame mette in evidenza i contenuti logici di partenza per la definizione dei profili FHIR e mostra chiaramente come le risorse siano interconnesse per la costruzione del documento in formato FHIR.

Nel diagramma si distinguono:

---

### Frecce rosse con indicazione sulla cardinalità

Le frecce rosse rappresentano le risorse che devono essere **obbligatoriamente presenti nel Bundle**, in due casi:

- Risorse mandatorie secondo lo standard FHIR, in relazione al `type` del Bundle (ad esempio `MessageHeader`, `Composition`).
- Risorse obbligatorie perché rappresentano i **contenuti informativi principali** legati allo specifico evento documentato (es. osservazioni cliniche, piani di cura, richieste di servizio, ecc.).

---

### Frecce rosse con dicitura `+entry`

Indicano le risorse che, pur non essendo centrali, devono comunque essere incluse nel Bundle perché sono **referenziate** da altre risorse principali.

Queste entry sono necessarie per garantire la **corretta interpretazione e risoluzione delle reference** da parte dell'applicazione destinataria.

---

### Frecce nere con indicazione dell'attributo di reference

Le frecce nere rappresentano le **relazioni tra risorse** e indicano l'attributo FHIR da utilizzare per esprimere la reference (es. `subject`, `author`, `performer`, `reasonReference`, ecc.).

Queste connessioni descrivono come le risorse all’interno del Bundle si riferiscono tra loro, contribuendo alla **coerenza e navigabilità del documento** FHIR.

---

![](Modello_logico_TC.png)