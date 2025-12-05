# Windows-EndPoint-Protection---Safe
PowerShell 5.1 script to enable certain parts of Microsoft Windows Endoint Protection without removing vital administrative features or disabling remote images.<br>
<br>
Enables:<br>
&emsp Microsoft‑recommended system mitigations<br>
&emsp Adds optional safe hardening<br>
&emsp Does NOT enable “Block Remote Images”<br>
&emsp Avoids all mitigations that break PowerShell 5.1, WMI, MMC, installers, .NET, or admin tools<br>
&emsp Contains no Program‑level entries (system‑level only, safest for admin environments)<br>
<br>
Does NOT enable:<br>
&emsp Mandatory ASLR (ForceRandomization)<br>
&emsp Block Low Integrity Images<br>
&emsp Block Non‑Microsoft Binaries<br>
&emsp Strict CFG for individual apps<br>
&emsp Block Remote Images<br>
&emsp Per‑application mitigations<br>
<br>
Usage:<br>
Set-ProcessMitigation -PolicyFilePath https://github.com/timothyjperkins/Windows-EndPoint-Protection---Safe/blob/main/Endpoint%20Protection%20-%20Safe.xml<br>
Or run the "Endpoint Protection - Safe.ps1" script.<br>
<br>
Revert to Windows Defaults:<br>
Run the "Endpoint Protection - Revert.ps1" script.<br>
