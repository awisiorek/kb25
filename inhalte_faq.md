
# Korpusbearbeitung in der Computerlinguistik



## Inhalte und Themen der Vorlesung

> Im Teilmodul Korpusbearbeitung werden Programmiertechniken und -werkzeuge vorgestellt, mit denen **Textkorpora analysiert** und für die weitere Bearbeitung **annotiert** werden können. In der Vorlesung werden mit Hilfe von Programmen in einer **Skriptsprache**, speziellen Anwendungen und  **Betriebssystemtools** große Korpora erschlossen, verarbeitet und linguistisch annotiert. Es werden wichtige Aufgaben der Korpusbearbeitung, wie z.B. **Textkonvertierungen, Tokenisierungen, Erstellen von Frequenzlisten, Konkordanzen, n-Gramm-Extraktion** vorgestellt und Lösungen erarbeitet. Parallel dazu werden auch einige **exemplarisch** ausgewählte Korpora und **Verfahren der Arbeit mit Korpora** vorgestellt und damit gearbeitet. (Modulhandbuch)


### Tools für die Verarbeitung von Korpusdaten (großen Textsammlungen):
- **Shell**: 
    - Dateiverarbeitung (z.B. automatisiertes Iterieren über Dateien einer Textsammlung)
    - Tools zur Daten- und Textmanipulation
    - Tools zur Rekodierung
    - Tools zur automatisierten Datenbeschaffung aus dem Web
- **Python**: u.a. NLTK, pandas, scikit-learn, stanza, etree/bs4

### Teilmodul zusammen mit 'Computerlinguistische Anwendungen':
- dort: Korpora als Trainingsdaten für NLP-Modelle
- hier: Aufbereitung von Korpora zur entsprechenden Verwendung (technische Grundlagen)
- (ebenso auch für DH-bezogene Korpusanalysen, Lexikographie etc.)
    - z.B.: https://www.dwds.de/wb/Korpus#2

### Methoden für:

- **Dateiverarbeitung, Kodierung, Datenmanipulation, Korpussuche**
- **Korpusformate**: raw vs. annotiert; (semi)strukturiert: csv, xml, json
- **Korpustypen**: general vs. specialized vs. multilingual
- **Preprocessing**: Tokenisierung, Stopwörter, MWT Expansion, Case, Punctuation
- **Korpusannotation**: Stemming, POS-Tagging, Parsing, Entity Recognition
- **Korpusauswertung**: Frequenzlisten, Kookkurrenzanalyse

    
### Aufgaben:

- **praktische Anwendung der besprochenen Methoden und Tools für Korpusbearbeitung** (z.B. Anwendung von POS-Taggern)
- Aufgaben werden zu Beginn der nächsten Vorlesung besprochen





## Häufig gestellte Fragen und Hinweise (Q&A)


### git

*Q: Wie komme ich an die Notebooks und weitere Materialien?*<br/>
A: Clonen Sie das Repository des Kurses. In den entsprechenden Verzeichnissen finden Sie die Notebooks der Vorlesungen.

*Q: Wie kann ich das Kurs-Repository clonen?*<br/>
A: Mit der Konsole (git muss installiert sein):
```bash
git clone https://github.com/awisiorek/kb25.git
```

*Q: Wie kann ich das Kurs-Repository ohne einen Konsolen-Client clonen?*<br/>
A: Verwenden Sie einen der unten angegebenen graphischen Git-Clients und clonen Sie das Repository
unter https://github.com/awisiorek/kb25.git
* [GitHub Desktop](https://desktop.github.com/)
* [GitKraken](https://www.gitkraken.com/)
* [TortoiseGit](https://tortoisegit.org/)
* [SourceTree](https://www.sourcetreeapp.com/)

*Q: Ich habe das Git-Repository.  Wie kann ich das aktuelle Notebook erhalten?*<br/>
A: Verwenden Sie den graphischen Git-Client und aktualisieren Sie das Repository
oder führen Sie (*innerhalb des Git-Verzeichnisses*) folgenden Befehl aus:
```bash
git pull origin main
```

*Q: Ich habe lokale Änderungen im Git-Repository und möchte Updates aus dem Remote-Repository abrufen. Welche Optionen gibt es?*

Es gibt drei Optionen:

A: Sie können Ihre Änderungen vorübergehend verstecken (*stashen*), die Änderungen vom Remote-Repository abrufen und dann Ihre Änderungen erneut anwenden.
```bash
git stash
git pull
git stash pop
```

B: Sie können Ihre Änderungen lokal committen, dann die Änderungen vom Remote-Repository abrufen und schließlich Ihre Änderungen mit dem aktualisierten Remote-Branch zusammenführen oder neu basieren.
```bash
git commit -m "Ihre Commit-Nachricht"
git pull
# Then, merge or rebase your changes with the updated remote branch
```

C: Sie können das Pull erzwingen (nicht empfohlen, wenn Sie nicht committete Änderungen behalten möchten), um Ihre lokalen Änderungen zu überschreiben, jedoch werden dadurch Ihre lokalen Änderungen verworfen.
```bash
git fetch --all
git reset --hard origin/main #or other <branch_name>
```



*Q: Wie kann ich den Status meines Git-Repositories überprüfen*<br/>
```bash
git status
```

*Q: Wie kann ich Konflikte in Git auflösen?*

Nachdem Konflikte während eines Merge oder einer anderen Operation aufgetreten sind:
1. Konflikte in den betroffenen Dateien manuell auflösen
2. Die aufgelösten Dateien für die Staging-Area markieren
3. Die aufgelösten Dateien commiten, um den Merge abzuschließen

Beispiel:
Konflikte in 'file.txt' manuell auflösen
Markieren der aufgelösten Datei für die Staging-Area:
```bash
git add file.txt
```

Commiten der aufgelösten Änderungen:
```bash
git commit -m "Konflikte in file.txt aufgelöst"
```




### jupyter

*Q: Wie kann ich ein Notebook starten?*<br/>
A: Wechseln Sie in das entsprechende Verzeichnis (`jupyter/..`) und
starten Sie das Notebook (jupyter muss installiert sein) mit folgenden Befehl:
```bash
jupyter notebook
```

*Q: Wie kann ich jupyter installieren?*<br/>
A: Global (benötigt pip und python):
```bash
sudo pip install jupyter
```
oder lokal (benötigt python):
```bash
python -m venv venv
source venv/bin/activate
pip install jupyter
...
deactivate
```



### jupyterHub (DHVLab)

**Wenn Sie keinen lokalen jupyter-Server installieren wollen, können Sie alternativ auch das [jupyterHub-Modul](https://dhvlab.gwi.uni-muenchen.de/notebook/) des [DHVLabs](https://dhvlab.gwi.uni-muenchen.de/) der LMU verwenden.**

*Q: Wie bekomme ich einen DHVLab-Account?*<br/>
A: Registrieren Sie sich hier ***mit Ihrer Campus-Adresse*** für das Lab **CIS_Korpus_23**: https://dhvlab.gwi.uni-muenchen.de/mgmt/labuser/signup. Bestätigen Sie anschließend Ihre Registrierung (Email). Anschließend warten Sie, bis Ihre Account freigeschaltet wurde.

*Q: Wie starte ich jupyterHub?*<br/>
A: Bevor Sie sich zum ersten Mal in jupyterHub einloggen, müssen Sie sich einmalig am [Modul "Virtueller Desktop"](https://dhvlab.gwi.uni-muenchen.de/desktop/#/) anmelden, um Ihr Home-Verzeichnis anzulegen. Wählen Sie am besten einen SSH-Login und geben Sie DHVLab-Username und Passwort ein. Danach können Sie sich mit ihrem DHVLab-Account beim jupyterHub-Modul anmelden: https://dhvlab.gwi.uni-muenchen.de/notebook/

*Q: Wie bekomme ich die Notebooks und anderen Dateien ins jupyterHub?*<br/>
A: Am besten clonen Sie das github-Repository über die Konsole in ihr Homeverzeichnis und aktualisieren wöchentlich (s.o.) Alternativ können Sie auch manuell Dateien hochladen (auch mehrere gleichzeitig per Drag&Drop).

*Q: Wie starte ich Notebooks im jupyterHub?*<br/>
A: Doppelklick auf das Notebook.

*Q: Wie starte ich eine Shell-Konsole im jupyterHub?*<br/>
A:  File > New > Terminal. (oder über den Launcher)


### Änderung der Default Shell zu Bash

In der Veranstaltung werden Bash-Skripte verwendet, d.h. ggf. sollten Sie Ihre Default Shell anpassen (Apple verwendet seit einiger Zeit Zsh als die Default Shell in MacOS). Geben Sie dazu folgenden Befehl im Terminal ein und starten Sie das Terminal neu.

```shell
chsh -s /bin/bash
```

