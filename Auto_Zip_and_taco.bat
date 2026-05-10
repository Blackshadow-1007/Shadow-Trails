:: deletes existing pack
del ".\ShadowTrails.taco"

:: uses WinRar to create a zip out of \Data and \YOUR XML
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ep1 -ibck -r -y ".\ShadowTrails.zip" ".\Data" ".\ShadowTrails.xml"

:: renames the zip to taco
rename "ShadowTrails.zip" "ShadowTrails.taco"
