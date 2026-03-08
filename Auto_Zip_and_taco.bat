:: You must replace YOUR PACKS NAME and YOUR XMLS NAME in order to use
:: ex: del ".\TehsTrails.taco"

:: deletes existing pack
del ".\ShadowPack.taco"

:: uses WinRar to create a zip out of \Data and \YOUR XML
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ep1 -ibck -r -y ".\ShadowPack.zip" ".\Data" ".\ShadowPack.xml"

:: renames the zip to taco
rename "Shadow Pack.zip" "ShadowPack.taco"
