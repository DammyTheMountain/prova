cd "D:\repository\Dammy\Provascript"

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

:: Esegui git push
git push
if %ERRORLEVEL% NEQ 0 (
    echo "git push failed."
    exit /b %ERRORLEVEL%
)

echo "Git operations completed successfully."