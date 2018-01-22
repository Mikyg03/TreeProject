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