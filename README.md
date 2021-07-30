# TheDude-Winbox-login
Script to open Winbox via The Dude with single sign-on.

# Instalation
First you will need to edit the winbox settings in The Dude under `Tools - Winbox`. Remove [Device.UserName] "[Device.Password]" and look like this:

```
C:\meuwinbox.bat [Device.FirstAddress]
```

Save the `winbox.bat` file to `local disk C:`.

Edit the `winbox.bat` file with your desired login and password.

```bat
@echo off
set login=youruser
set password=yourpassword

IF EXIST c:/winbox.exe (
    start C:\winbox.exe %1 %login% %password%
) else (
    IF EXIST c:/winbox64.exe (
        start C:\winbox64.exe %1 %login% %password%
    ) else (
        echo Winbox not found on local disk C:
        echo Download winbox from the MikroTik website - mikrotik.com/software
        pause
        exit 1
    )
    exit 0
)
exit 0
```