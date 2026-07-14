
### Contesto e scenario di riferimento Nazionale
La Telemedicina sta assumendo un ruolo sempre più centrale nell’evoluzione del sistema sanitario, rappresentando un’opportunità per migliorare l’accesso alle cure, ridurre i tempi di attesa e garantire una maggiore continuità assistenziale, in particolare per i pazienti con patologie croniche o residenti in aree geograficamente svantaggiate.

L’integrazione della Telemedicina nel Sistema Sanitario Nazionale (SSN) prevede la creazione di infrastrutture digitali interoperabili, capaci di gestire in modo efficiente la raccolta, l’elaborazione e la trasmissione dei dati clinici tra i diversi attori e setting coinvolti: pazienti, medici di medicina generale, medici specialisti, ospedali, farmacie e servizi di emergenza.

### Il dominio del Teleconsulto
Il teleconsulto comprende il teleconsulto medico e la teleconsulenza medico-sanitaria, entrambe prestazioni erogate a distanza che prevedono l'interazione tra due o più professionisti sanitari in relazione alla situazione clinica di uno specifico paziente. Nel teleconsulto medico il professionista interagisce con uno o più medici per condividere valutazioni cliniche e supportare il processo decisionale, anche ai fini della formulazione di una seconda opinione specialistica. La teleconsulenza medico-sanitaria consiste invece nella richiesta di supporto tra professionisti sanitari, anche appartenenti a professioni diverse, durante lo svolgimento di attività sanitarie, al fine di fornire indicazioni utili alla presa di decisioni clinico-assistenziali o alla corretta esecuzione delle azioni assistenziali.

Il teleconsulto può svolgersi in tempo reale, anche tramite videochiamata, oppure, quando la situazione clinica del paziente lo consente e ciò è ritenuto appropriato dai professionisti coinvolti, in modalità asincrona. In entrambi i casi, l'attività si basa sulla condivisione telematica di dati clinici, referti, immagini, audio-video e di ogni altra documentazione sanitaria ritenuta necessaria per l'adeguato svolgimento della prestazione, assicurando il rispetto della normativa vigente in materia di protezione dei dati personali e sicurezza delle informazioni sanitarie. Qualora il paziente sia presente durante il teleconsulto medico, la prestazione si svolge in tempo reale con modalità analoghe a quelle della televisita e si configura come una visita multidisciplinare.

Il teleconsulto è finalizzato alla condivisione delle valutazioni e delle scelte clinico-assistenziali tra i professionisti coinvolti. Il teleconsulto medico contribuisce alla definizione del referto della prestazione erogata al paziente. La teleconsulenza medico-sanitaria costituisce un'attività programmata di supporto tra professionisti.

Fonti:
- Accordo Stato-regioni del 18 novembre 2021 (Rep. atti n. 231/ CSR), sul documento recante Indicazioni nazionali per l’erogazione di prestazioni e servizi di teleriabilitazione da parte delle professioni sanitarie”.
- DM 21 settembre 2022 pubblicato in GURI n.256 il 02 novembre 2022 “Approvazione delle Linee guida per i servizi di Telemedicina - Requisiti funzionali e livelli di servizio”.
- DM 30 settembre 2022 pubblicato in GURI n.298 il 22 dicembre 2022 “Procedure di selezione delle soluzioni di Telemedicina e diffusione sul territorio nazionale, nonché i meccanismi di valutazione delle proposte di fabbisogno regionale per i servizi minimi di Telemedicina e l'adozione delle Linee di indirizzo per i servizi di Telemedicina”.
- Decreto Ministeriale 19 novembre 2025 pubblicato in GURI n. 301 del 30 dicembre 2025 “Disciplina del trattamento dei dati personali nell'ambito della infrastruttura della Piattaforma nazionale telemedicina”;
- Glossario Nazionale di Telemedicina: Definizioni e termini chiave per i servizi e le componenti della Telemedicina” pubblicato a gennaio 2026 nella sezione “Linee di indirizzo, PDTA e Protocolli” nell’ambito della Piattaforma Nazionale di Telemedicina (PNT).

### Integrazione con i sistemi Regionali e Nazionali
L'integrazione con i sistemi sanitari regionali e nazionali è fondamentale per garantire un flusso di informazioni omogeneo e sicuro tra la Piattaforma di Telemedicina e le infrastrutture sanitarie esistenti.

Di seguito è riportato uno schema esemplificativo che illustra il flusso dei dati tra i diversi sistemi, evidenziando come le informazioni vengano trasferite e integrate all'interno della Piattaforma Nazionale di Telemedicina.

<img src="Flusso_Dati_PNT_IRT_v6.png" width="950"/>

<br clear="all"/>

I referti prodotti vengono prima validati dal Gateway, che assicura l'integrità e la conformità dei dati. Successivamente, i dati validati vengono archiviati e indicizzati nei registri nazionali e regionali. Il Gateway invia quindi le informazioni all'EDS, che a sua volta notifica la Piattaforma Nazionale di Telemedicina, garantendo una gestione centralizzata e conforme del flusso informativo.

### Scelte di design
La soluzione adottata da questa guida bilancia l'esigenza di rappresentare la Richiesta di Teleconsulto e la Relazione Collaborativa di Teleconsutlo come documenti clinici completi con la necessità di rendere disponibili in modo strutturato e interoperabile i dati clinici e amministrativi che li compongono.

A tal fine, è stato scelto di prevedere due differenti modalità di rappresentazione e scambio delle informazioni associate alla televisita:
 - Bundle di tipo document, finalizzato alla condivisione e alla conservazione della Richiesta e della Relazione come documenti clinici unitari.
 - Bundle di tipo transaction, finalizzato alla fruizione, all'elaborazione e al riutilizzo delle singole risorse FHIR che descrivono la prestazione e il relativo contenuto clinico.

Il bundle di tipo document consente di rappresentare la Richiesta e la Relazione come un insieme coerente di informazioni cliniche organizzate secondo il paradigma documentale di FHIR, favorendone la visualizzazione, la conservazione e la condivisione tra i diversi attori del processo assistenziale.
Il bundle di tipo transaction, invece, consente di accedere alle singole informazioni in forma strutturata, permettendo ai sistemi informativi di ricercare, elaborare e riutilizzare i dati clinici e amministrativi associati alla televisita senza la necessità di interpretare l'intero documento.

L'adozione di entrambe le rappresentazioni permette quindi di supportare sia gli scenari orientati al documento sia gli scenari orientati ai dati, favorendo la continuità assistenziale, l'integrazione tra sistemi e il riutilizzo delle informazioni cliniche nel contesto dei servizi di telemedicina.

### Autori e contributori
<table>
<thead>
<tr class="header">
<th>Ruolo</th>
<th>Nome</th>
<th>Organizzazione</th>
<th>Contatto</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Autore</td>
<td>Leonardo Alcaro</td>
<td>HL7 Italia</td>
<td>leonardo.alcaro@regione.calabria.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Mario Sicuranza</td>
<td>HL7 Italia</td>
<td>mario.sicuranza@icar.cnr.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Sara Marceglia</td>
<td>Agenas</td>
<td>marceglia@agenas.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Federica Dessì</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>fdessi@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Sonia Biasi</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>sbiasi@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Davide Spanu</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>dspanu@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>William Tasinazzo</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>wtasinazzo@deloitte.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Maria Giovanna Antida Preziosi</td>
<td>SOGEI</td>
<td>mpreziosi@sogei.it</td>
</tr>
</tbody>
</table>

### Intellectual Property Statements
{% include ip-statements.xhtml %}

### Dependenciy table
{% include dependency-table.xhtml %}

#### Cross-Version Analysis
{% include cross-version-analysis.xhtml %}