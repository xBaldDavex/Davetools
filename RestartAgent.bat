@echo off
Rem Look for the Ninja Agent in the list of started services
mkdir c:\zyrka
net start | find /i "NinjaRMMAgent"
Rem if not found, start it and a restart occurred.
if "%errorlevel%"=="1" (
   echo Service "Ninja Agent" restarted at %time% on %date% by Script %0>>c:\zyrka\agentservice.Log
   net start "NinjaRMMAgent"
)