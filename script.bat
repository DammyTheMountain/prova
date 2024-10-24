cd "D:\repository\Dammy\Provascript"  
:: Cambia la directory corrente nella cartella dello script

:: Esegui git add
git add .
if %ERRORLEVEL% NEQ 0 (
    echo "git add failed."
    exit /b %ERRORLEVEL%
)

:: Esegui git commit
git commit -m "Aggiornamento automatico"
if %ERRORLEVEL% NEQ 0 (
    echo "git commit failed."
    exit /b %ERRORLEVEL%
)

:: Esegui git remote
git remote main https://github.com/DammyTheMountain/prova.git
if %ERRORLEVEL% NEQ 0 (
    echo "git remote failed."
    exit /b %ERRORLEVEL%
)

:: Esegui git push
git push main
if %ERRORLEVEL% NEQ 0 (
    echo "git push failed."
    exit /b %ERRORLEVEL%
)

echo "Git operations completed successfully."