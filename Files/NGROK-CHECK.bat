@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user admin digicom@123 /add >nul
net localgroup administrators admin /add >nul
echo Setup complete! Connect to your virtual machine utilizing any RDP, re-run job upon VM expiration and shutdown.
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo Username: admin
echo Password: digicom@123
curl -O https://one.dosky.ml/?url=https://raw.githubusercontent.com/jtmaveryk/ngrok/main/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://one.dosky.ml/?url=https://raw.githubusercontent.com/jtmaveryk/ngrok/main/Files/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\npp.7.9.4.Installer.x64.exe" https://one.dosky.ml/?url=https://raw.githubusercontent.com/jtmaveryk/ngrok/main/Files/npp.7.9.4.Installer.x64.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Everything.exe" https://one.dosky.ml/?url=https://raw.githubusercontent.com/jtmaveryk/ngrok/main/Files/Everything.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\BANDIZIP-SETUP.exe" https://one.dosky.ml/?url=https://raw.githubusercontent.com/jtmaveryk/ngrok/main/Files/BANDIZIP-SETUP.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Radmin_VPN_1.3.4568.3.exe" https://one.dosky.ml/?url=https://raw.githubusercontent.com/Digital-Communication/Github-RDP/main/Files/Radmin_VPN_1.3.4568.3.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\YouTube-Viewer_win_1.7.6.zip" https://one.dosky.ml/?url=https://raw.githubusercontent.com/Digital-Communication/Github-RDP/main/Files/YouTube-Viewer_win_1.7.6.zip > out.txt 2>&1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant admin:F >nul
ICACLS C:\Windows\installer /grant admin:F >nul
ping -n 10 127.0.0.1 >nul
