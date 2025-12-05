# ============================
# Download & Apply Mitigation Policy
# ============================

# Safe local directory
$PolicyDir = "C:\ProgramData\SecurityPolicies"

# Create directory if missing
if (!(Test-Path $PolicyDir)) {
    New-Item -Path $PolicyDir -ItemType Directory -Force | Out-Null
}

# File paths
$PolicyFile = Join-Path $PolicyDir "EndpointProtection-Safe.xml"

# Raw XML download URL
$DownloadUrl = "https://raw.githubusercontent.com/timothyjperkins/Windows-EndPoint-Protection---Safe/main/Endpoint%20Protection%20-%20Safe.xml"

Write-Host "Downloading mitigation policy..."
Invoke-WebRequest -Uri $DownloadUrl -OutFile $PolicyFile -UseBasicParsing

# Verify download
if (!(Test-Path $PolicyFile)) {
    Write-Host "ERROR: Policy file was not downloaded." -ForegroundColor Red
    exit 1
}

Write-Host "Applying mitigation policy..."
Set-ProcessMitigation -PolicyFilePath $PolicyFile

Write-Host "`nMitigation policy applied successfully." -ForegroundColor Green
Write-Host "Stored at: $PolicyFile"
