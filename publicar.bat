@echo off
rem Publica el cascaron de la presentacion en GitHub Pages.
rem Solo viajan index.html, fotos.js y la libreria del pptx: los datos se quedan en tu equipo.
setlocal
cd /d "%~dp0"

git add -A || goto :error
git diff --cached --quiet
if not errorlevel 1 (
  echo No hay cambios que publicar.
  goto :fin
)
git commit -m "Actualiza la presentacion" || goto :error
git push || goto :error

echo.
echo Publicado. En uno o dos minutos se vera en:
echo https://guillecbrown.github.io/presentacion-recurrente/
goto :fin

:error
echo.
echo ERROR: no se pudo publicar. Revisa el mensaje de arriba.

:fin
echo.
pause
