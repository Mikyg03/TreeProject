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