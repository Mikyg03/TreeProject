# __TREEPROJECT v_0.1.0__

___Copyright (C) 2018 Cannavo' Michele___

_Tutti i diritti Riservati_

>   TREEPROJECT is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
>   TREEPROJECT is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.
>   You should have received a copy of the GNU General Public License
    along with TREEPROJECT. If not, see <http://www.gnu.org/licenses/>.




## DESCRIZIONE
Il presente File.bat crea una struttura di cartelle per gestire un progetto software i cui membri utilizzino diversi COMPILATORI/IDE e il Controllo Versione GIT. E anche possibie gestire il progetto da diversi Ambienti di sviluppo/O.S. In più ogni cartella ha dentro un file .gitignore per fare in modo di essere presente in repository Git.
### Elenco di Cartelle di Base:

> + **Documentazione:** Cartella per gestire la documentazione dei file sorgenti, con  guide readme ecc ecc.
>   + _Html:_ File in versione .html
>   + _Markdown:_ File in versione .md
>   + _Latex:_ File in versione .tex
>   + _pdf:_ File in versione .html
> + **Sorgenti:** Questa cartella serve a contenere i sorgenti del progetto.
> + **Progetto-IDE:** Questa cartella serve a conterene i vari file di progetto per i diversi IDE-O.S.
>   + _Windows:_
>      + Visual_Studio
>        + 2013
>        + 2015
>        + 2017
>      + CodeBlock
>
>   + _Linux:_
> + **Licenze:** Questa cartella serve a cantenere le varie licenze collegate al progetto
> + **bin:** Cartella contenente gli eseguibili del progetto.
> + **Other:** Questa casrtella serve per inserire vari altri file di utilita'


## COME UTILIZZARLO
Posizionare l'eseguibile nel punto in cui si vuole creare il progetto.Avviare l'eseguibile. Verrà chiesto il nome del progetto, digitarlo.In quel punto verrà a crearsi una struttura di cartelle di questo tipo:
[Image]

Avviare il progetto tramite IDE dentro la cartella appropriata (Progetto-IDE\O.S.\IDE).

> **N.B.** Cancellare il file .gitignore se si utilizza il controllo di versione Git.

All'apertura del progetto, cercare i file dentro la cartella Sorgenti.


## SOURCE

~~~{.batch}
@ECHO OFF
setlocal enabledelayedexpansion
set directory[0]=Documentazione\Html
set directory[1]=Documentazione\Markdown
set directory[2]=Documentazione\Latex
set directory[3]=Documentazione\pdf
set directory[4]=Sorgenti
set directory[5]=Progetto-IDE\Windows\Visual_Studio\2013
set directory[6]=Progetto-IDE\Windows\Visual_Studio\2015
set directory[7]=Progetto-IDE\Windows\Visual_Studio\2017
set directory[8]=Progetto-IDE\Windows\CodeBlock
set directory[9]=Progetto-IDE\Linux\CodeBlock
set directory[10]=Licenze
set directory[11]=bin
set directory[12]=Other


SET bname="%cd%"
SET   /P PROGETTO=Digita nome del progetto:
MKDIR %PROGETTO%
CHDIR %PROGETTO%

for /l %%n in (0,1,12) do (
    MKDIR .\!directory[%%n]!
    CHDIR .\!directory[%%n]!
	ECHO # Ignore everything     >  .gitignore
	ECHO *                       >> .gitignore
	ECHO # But not these files...>> .gitignore
	ECHO !.gitignore             >> .gitignore
	CHDIR %bname%\%PROGETTO%
)

PAUSE
~~~
