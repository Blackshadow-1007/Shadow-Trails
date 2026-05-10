move "ShadowTrails.taco" "%~dp0\UnusedStuff\Previous Versions\"

:: Parse date and time into parts
for /f "tokens=1-3 delims=." %%a in ("%date%") do (
    set DD=%%a
    set MM=%%b
    set YYYY=%%c
)
for /f "tokens=1-3 delims=:,. " %%a in ("%time%") do (
    set HH=%%a
    set MIN=%%b
    set SEC=%%c
)

:: Remove leading space from hour if single digit (e.g. " 9" -> "09")
set HH=%HH: =0%

:: Build timestamp string: YYYY-MM-DD_HH-MM-SS
set TIMESTAMP=%YYYY%-%MM%-%DD%_%HH%-%MIN%-%SEC%

:: Use it in a rename
rename "%~dp0UnusedStuff\Previous Versions\ShadowTrails.taco" "ShadowTrails_%TIMESTAMP%.taco"

:: uses WinRar to create a zip out of \Data and \YOUR XML
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ep1 -ibck -r -y ".\ShadowTrails.zip" ".\Data" ".\ShadowTrails.xml"

:: renames the zip to taco
rename "ShadowTrails.zip" "ShadowTrails.taco"
