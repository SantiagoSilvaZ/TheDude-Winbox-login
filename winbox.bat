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