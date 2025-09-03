' Launch-RAG.vbs  (runs the batch file next to this script, silently)
Set fso   = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
bat = fso.BuildPath(fso.GetParentFolderName(WScript.ScriptFullName), "Launch-RAG.bat")
shell.Run """" & bat & """", 0