<p style="color:blue; font-weight: bold; font-size: 14px;">Avvertenza</p>

La presente guida è *attualmente* in versione **CI-Build** (Continuous Integration Build), che indica una versione in fase di sviluppo continuo, sottoposta a integrazioni e test regolari. Durante questa fase, il contenuto è soggetto a modifiche frequenti e aggiornamenti periodici, al fine di garantire l'accuratezza e la coerenza del materiale. Successivamente, avrà inizio la fase di **ballottaggio**, che segnerà l'avvio della preparazione per la versione finale della guida.

L'Implementation Guide di Telemedicina nasce con l'obiettivo di favorire la standardizzazione dei dati scambiati tra i vari sistemi sanitari e la Piattaforma di Telemedicina. Questa guida si avvale del framework FHIR (Fast Healthcare Interoperability Resources), che garantisce un'interoperabilità strutturata e facilita l'integrazione delle informazioni sanitarie. 

Secondo le normative nazionali, i servizi minimi di Telemedicina includono: 
- Televisita (TV): permette al medico di effettuare una visita a distanza con il paziente attraverso strumenti di comunicazione audio-video, con possibilità di prescrivere farmaci e accertamenti diagnostici. 
- Teleconsulto (TC): consente la condivisione di opinioni e competenze tra professionisti sanitari per supportare diagnosi e trattamenti complessi. 
- Telemonitoraggio (TM): prevede la raccolta e l’invio di parametri clinici rilevati a domicilio per il monitoraggio di pazienti cronici o post-ricovero. 
- Teleassistenza (TA): offre supporto a distanza per la gestione del paziente, compresa l’educazione terapeutica e l’assistenza infermieristica remota. 

Questi servizi richiedono una gestione efficace del flusso di dati sanitari, garantendo sicurezza, integrità e tracciabilità delle informazioni trasmesse tra i diversi soggetti coinvolti. 

### Contesto e scenario di riferimento
La Telemedicina sta assumendo un ruolo sempre più centrale nell’evoluzione del sistema sanitario, rappresentando un’opportunità per migliorare l’accesso alle cure, ridurre i tempi di attesa e garantire una maggiore continuità assistenziale, in particolare per i pazienti con patologie croniche o residenti in aree geograficamente svantaggiate.

L’integrazione della Telemedicina nel Sistema Sanitario Nazionale (SSN) prevede la creazione di infrastrutture digitali interoperabili, capaci di gestire in modo efficiente la raccolta, l’elaborazione e la trasmissione dei dati clinici tra i diversi attori coinvolti: pazienti, medici di medicina generale, specialisti, ospedali, farmacie e servizi di emergenza

### Integrazione con i sistemi Regionali e Nazionali
L'integrazione con i sistemi sanitari regionali e nazionali è fondamentale per garantire un flusso di informazioni omogeneo e sicuro tra la Piattaforma di Telemedicina e le infrastrutture sanitarie esistenti.

Di seguito è riportato uno schema esemplificativo che illustra il flusso dei dati tra i diversi sistemi, evidenziando come le informazioni vengano trasferite e integrate all'interno della Piattaforma Nazionale di Telemedicina.

![](Flusso_Dati_PNT_IRT_v3.png)

I referti prodotti vengono prima validati dal Gateway, che assicura l'integrità e la conformità dei dati. Successivamente, i dati validati vengono archiviati e indicizzati nei registri nazionali e regionali. Il Gateway invia quindi le informazioni all'EDS, che a sua volta notifica la Piattaforma Nazionale di Telemedicina, garantendo una gestione centralizzata e conforme del flusso informativo.

### Glossario
Raccolta di acronimi e termini utilizzati nel progetto

<table class="table">
  <thead>
    <tr>
      <th>Acronimo</th>
      <th>Descrizione</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TV</td>
      <td>Televisita</td>
    </tr>
    <tr>
      <td>TC</td>
      <td>Teleconsulto</td>
    </tr>
    <tr>
      <td>TA</td>
      <td>Teleassistenza</td>
    </tr>
    <tr>
      <td>TM</td>
      <td>Telemonitoraggio</td>
    </tr>
    <tr>
      <td>EDS</td>
      <td>Ecosistema Dati Sanitari</td>
    </tr>    
  </tbody>
</table>

