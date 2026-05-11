
setlocal enabledelayedexpansion


move "ShadowTrails.taco" "%~dp0\Stuff\Old Versions\"

:: Get date
for /f "tokens=2 delims==" %%a in ('wmic os get localdatetime /value') do set DT=%%a

:: DT is now in format YYYYMMDDHHmmSS
set YYYY=%DT:~0,4%
set MM=%DT:~4,2%
set DD=%DT:~6,2%
set HH=%DT:~8,2%
set MIN=%DT:~10,2%

set TIMESTAMP=%DD%-%MM%-%YYYY%_%HH%-%MIN%
echo Timestamp: %TIMESTAMP%
pause

:: Use it in a rename
rename "%~dp0\Stuff\Old Versions\ShadowTrails.taco" "ShadowTrails_%TIMESTAMP%.taco"
pause
:: uses WinRar to create a zip out of \Data and \YOUR XML
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ep1 -ibck -r -y ".\ShadowTrails.zip" ".\Data" ".\ShadowTrails.xml"

:: renames the zip to taco
rename "ShadowTrails.zip" "ShadowTrails.taco"
