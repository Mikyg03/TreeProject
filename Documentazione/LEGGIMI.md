<h1><center> TREEPROJECT v0.2.0 </center></h1>

<center><i>Copyright (C) 2018 Cannavo' Michele</i></center>


_Tutti i diritti Riservati_

>   TREEPROJECT is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
>
>   TREEPROJECT is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.
>
>   You should have received a copy of the GNU General Public License
    along with TREEPROJECT. If not, see <http://www.gnu.org/licenses/>.



## 1) DESCRIZIONE
Il presente _**TreeProject.bat**_ crea una struttura di cartelle per gestire un progetto software i cui membri utilizzino diversi COMPILATORI/IDE e il Controllo Versione GIT. E' anche possibie gestire il progetto da diversi O.S (Ogni O.S./IDE avra' la sua cartella per il progetto). In più ogni cartella ha dentro un file _.gitignore_ per fare in modo che pure le cartelle vuote siano presenti nei repository GIT.

## 2) COME UTILIZZARLO
Posizionare l'eseguibile e il file _TreeFolder.txt_ nel punto in cui si vuole creare il progetto. Modificare il file _TreeFolder.txt_ secondo le proprie necessita' e avviare l'eseguibile. Verrà chiesto il nome del progetto, digitarlo. In quel punto verrà a crearsi una struttura di cartelle come indicato nel file _TreFolder.txt_.

## 3) COME CREARE TreeFolder.txt
Bisogna iniziare a scrivere dalla 1° riga e non lasciare righe vuote. Mettere il percorso relativo per ogni cartella che si vuole creare. **Un percorso per ogni rigo**. Il file _.gitignore_ per GIT verrà inserito in automatico.

Avviare il progetto tramite IDE dentro la cartella appropriata (Progetto-IDE\O.S.\IDE).

> **N.B.** Cancellare il file .gitignore se si utilizza il controllo di versione Git.

All'apertura del progetto, cercare i file sorgenti dentro la cartella Sorgenti.


## 4) SOURCE

~~~
@ECHO off
SET NameProject="%cd%"
SET   /P PROGETTO=Digita nome del progetto:
MKDIR %PROGETTO%
CHDIR %PROGETTO%

SETLOCAL enabledelayedexpansion
SET directory=
FOR /f "delims=" %%a IN (..\TreeFolder.txt) DO (
	SET directory=%%a
    MKDIR .\!directory!
    CHDIR .\!directory!
	ECHO # Ignore everything     >  .gitignore
	ECHO *                       >> .gitignore
	ECHO # But not these files...>> .gitignore
	ECHO !.gitignore             >> .gitignore
	CHDIR %NameProject%\%PROGETTO%
)
~~~
