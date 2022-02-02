echo Installer by Nate's World#2102
cd %USERPROFILE%
git clone https://github.com/powercord-org/powercord
cd powercord
npm i
npm run plug && pause
cd %USERPROFILE%
cd powercord/src/Powercord/plugins && git clone https://github.com/redstonekasi/theme-toggler
cd ..\..\..\..\
cd powercord/src/Powercord/plugins && git clone https://github.com/ploogins/PowercordThemeDownloader
cd ..\..\..\..\
cd powercord/src/Powercord/plugins && git clone https://github.com/LandenStephenss/PowercordPluginDownloader
cd ..\..\..\..\
cd powercord/src/Powercord/themes && git clone https://github.com/Nates-World-Projects/Native
taskkill /IM DiscordCanary.exe /F
start %USERPROFILE%\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
pause