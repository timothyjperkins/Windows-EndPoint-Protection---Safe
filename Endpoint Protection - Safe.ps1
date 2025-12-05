# ======================================================
# Download & Apply Process Mitigation Policy (Reliable)
# ======================================================

# --- Check for Administrator privileges ---
If (-NOT ([Security.Principal.WindowsPrincipal] `
        [Security.Principal.WindowsIdentity]::GetCurrent()
        ).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "ERROR: You must run this script as Administrator." -ForegroundColor Red
    exit 1
}

# --- Define safe directory ---
$PolicyDir = "C:\ProgramData\SecurityPolicies"

Write-Host "Creating directory (if missing): $PolicyDir"

try {
    if (!(Test-Path $PolicyDir)) {
        New-Item -Path $PolicyDir -ItemType Directory -Force -ErrorAction Stop | Out-Null
        Write-Host "Directory created." -ForegroundColor Green
    } else {
        Write-Host "Directory already exists."
    }
}
catch {
    Write-Host "ERROR: Could not create directory. Details:" -ForegroundColor Red
    Write-Host $_.Exception.Message
    exit 1
}

# --- Define file path and download URL ---
$PolicyFile = Join-Path $PolicyDir "EndpointProtection-Safe.xml"

$DownloadUrl = "https://raw.githubusercontent.com/timothyjperkins/Windows-EndPoint-Protection---Safe/main/Endpoint%20Protection%20-%20Safe.xml"

Write-Host "Downloading mitigation policy…"

try {
    Invoke-WebRequest -Uri $DownloadUrl -OutFile $PolicyFile -UseBasicParsing -ErrorAction Stop
    Write-Host "Download complete: $PolicyFile" -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Failed to download XML. Details:" -ForegroundColor Red
    Write-Host $_.Exception.Message
    exit 1
}

# --- Verify file exists ---
if (!(Test-Path $PolicyFile)) {
    Write-Host "ERROR: Policy file does not exist after download." -ForegroundColor Red
    exit 1
}

# --- Apply policy ---
Write-Host "Applying mitigation policy…"

try {
    Set-ProcessMitigation -PolicyFilePath $PolicyFile -ErrorAction Stop
    Write-Host "`nMitigation policy applied successfully!" -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Failed to apply mitigation policy. Details:" -ForegroundColor Red
    Write-Host $_.Exception.Message
    exit 1
}
