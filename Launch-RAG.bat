@echo off
setlocal
REM Allow the browser page to call Ollama
set OLLAMA_ORIGINS=*

REM Start Ollama only if the port isn't already in use
powershell -NoLogo -NoProfile -Command ^
  "if (-not (Test-NetConnection -ComputerName 127.0.0.1 -Port 11434).TcpTestSucceeded) { Start-Process -WindowStyle Minimized -FilePath 'ollama' -ArgumentList 'serve' }"

REM Wait until the API is up
powershell -NoLogo -NoProfile -Command ^
  "while (-not (Test-NetConnection -ComputerName 127.0.0.1 -Port 11434).TcpTestSucceeded) { Start-Sleep -Milliseconds 300 }"

REM Build a file:/// URL to index.html based on this script's folder (no hard-coded paths)
set "HERE=%~dp0"
set "URL=file:///%HERE:\=/%index.html"

REM Open your RAG app as a clean window (no address bar)
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --app="%URL%"