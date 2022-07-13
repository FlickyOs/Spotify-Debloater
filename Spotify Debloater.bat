@echo off
color F0
title Spotify Debloater by Flicky
mode con: cols=92 lines=21
setlocal enabledelayedexpansion

:main
cls && echo [30mThis utility allows you to choose what you want to remove.
echo.
echo [30m[1] [31mDebloat , Block ADS and Updates!
echo.
echo [30m[2] [36mCredits[30m!
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls & echo Credits & goto Credits
if errorlevel 1 cls & echo Debloat & goto debloat

:debloat
cls && echo [36mDebloat [30mSpotify?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto SpotifyDebloat
if errorlevel 1 cls && goto debloat2

:SpotifyDebloat
taskkill /f /im Spotify.exe >NUL 2>&1
del /f/s/q "%appdata%\Spotify\SpotifyMigrator.exe" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\SpotifyStartupTask.exe" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Concert.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Concerts.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Error.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Findfriends.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Legacy-lyrics.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Lyrics.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Show.spa" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
Reg.exe DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Spotify" /f >NUL 2>&1
goto debloat2

:debloat2
cls && echo [36mDelete [30mevery language except English?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto language
if errorlevel 1 cls && goto debloat3

:language
del /f/s/q "%appdata%\Spotify\locales\am.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ar.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ar.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\bg.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\bn.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ca.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\cs.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\cs.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\da.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\de.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\de.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\el.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\el.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\en-GB.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\en-GB.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es-419.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\es-419.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\et.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fa.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fi.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fi.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fil.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fr.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\fr-CA.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\gu.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\he.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\he.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hi.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hu.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\hu.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\id.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\id.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\it.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\it.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ja.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ja.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\kn.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ko.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ko.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\lt.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\lv.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ml.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\mr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ms.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ms.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\nb.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\nl.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\nl.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pl.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pl.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pt-PT.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pt-BR.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\pt-BR.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-TW.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\uk.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ro.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ru.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ru.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sk.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sl.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sv.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sv.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\sw.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\ta.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\te.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\th.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\th.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\tr.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\tr.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\uk.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\vi.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\vi.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-CN.pak" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-Hant.mo" >NUL 2>&1
del /f/s/q "%appdata%\Spotify\locales\zh-TW.pak" >NUL 2>&1
goto debloat3

:debloat3
cls && echo [36mBlock [30mUpdates?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto BlockUpdates
if errorlevel 1 cls && goto debloat4

:BlockUpdates
rmdir "%localappdata%\Spotify\Update" >NUL 2>&1
mkdir %localappdata%\Spotify\Update >NUL 2>&1
icacls %localappdata%\Spotify\Update /deny "%username%":D >NUL 2>&1
icacls %localappdata%\Spotify\Update /deny "%username%":R >NUL 2>&1
icacls %localappdata%\Spotify\Update /deny "%username%":W >NUL 2>&1
goto debloat4

:debloat4
cls && echo [36mBlock [30mADS?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto BlockADS
if errorlevel 1 cls && goto last

:BlockADS
:: Back Up incase you wanted to revert
md "%APPDATA%\BlockSpotifyADSBackup" > Nul 2>&1
move /y "%APPDATA%\Spotify\chrome_elf_bak.dll" "%APPDATA%\BlockSpotifyADSBackup\chrome_elf_bak.dll" > Nul 2>&1
move /y "%APPDATA%\Spotify\chrome_elf.dll" "%APPDATA%\BlockSpotifyADSBackup\chrome_elf.dll" > Nul 2>&1
del /s /q "%APPDATA%\Spotify\chrome_elf_bak.dll" > NUL 2>&1
del /s /q "%APPDATA%\Spotify\chrome_elf.dll" > NUL 2>&1
move /y "%userprofile%\Downloads\Spotify-Debloater-main\Spotify-Debloater-main\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Downloads\Spotify-Debloater-main\Spotify-Debloater-main\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
move /y "%userprofile%\Downloads\Spotify-Debloater-main\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Downloads\Spotify-Debloater-main\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
move /y "%userprofile%\Downloads\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Downloads\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
move /y "%userprofile%\Desktop\Spotify-Debloater-main\Spotify-Debloater-main\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Desktop\Spotify-Debloater-main\Spotify-Debloater-main\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
move /y "%userprofile%\Desktop\Spotify-Debloater-main\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Desktop\Spotify-Debloater-main\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
move /y "%userprofile%\Desktop\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Desktop\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
:: path for Download manager kids
move /y "%userprofile%\Downloads\Compressed\Spotify-Debloater-main\chrome_elf_bak.dll" "%APPDATA%\Spotify\chrome_elf_bak.dll" > Nul 2>&1
move /y "%userprofile%\Downloads\Compressed\Spotify-Debloater-main\chrome_elf.dll" "%APPDATA%\Spotify\chrome_elf.dll" > Nul 2>&1 > Nul 2>&1
goto last

:last
cls && echo Your Spotify has been cleaned up.! && timeout 3 > Nul 2>&1
goto main

:Credits
cls && echo [30mCanonez.
echo [30mK3rnelPan1c.(He gave me the idea to BLock the Updates.)
echo [30mBlockTheSpot.(Edited his DLL.)
echo [36mTwitter [30m:([36mTwitter.com[30m/Flicky_VFX).
echo.
echo [30m[1] [36mMain
echo.
echo [30m[2] [31mExit
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && Exit /b
if errorlevel 1 cls && goto main
