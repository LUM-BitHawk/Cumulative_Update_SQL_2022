################################################################################################################
#	KB5054531 - Cumulative Update 19 for SQL Server 2022												                                                                                        ###
################################################################################################################
#	Firma: BitHawk AG
#	Script Name: SQL2022_Cumulative_Update_V19.ps1
#	Description: 
#	Author: Marcel.Luginbuhl@bithawk.ch
#   Created: 03.06.2025
#   Last Modified: 

# Ortner Anlegen
New-Item -Name “_SQLCU” -ItemType Directory -Path “C:\”

# URL der Installationsdatei
$installerUrl = "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2025/05/sqlserver2022-kb5054531-x64_1f9436d6f4ae16354819cab42a6aef9292f1fc06.exe"

# Pfad, wo die Installationsdatei gespeichert wird
$installerPath = "C:\_SQLCU\SQLServer2022-KB5054531-x64.exe"

# Herunterladen der Datei
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Starten der Installation (für .msi-Dateien)
Start-Process $installerPath
