param(
    [string]$Actor = "default-agent",
    [Parameter(Mandatory = $true)]
    [string]$Intent,
    [Parameter(Mandatory = $true)]
    [string[]]$Paths,
    [Parameter(Mandatory = $true)]
    [string]$Summary,
    [string]$RollbackHint = "manual",
    [string]$ChangesFile = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$selfwareRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)

# Auto-detect log file based on paths if not explicitly set
if ([string]::IsNullOrEmpty($ChangesFile)) {
    $isData = $false
    $isSoftware = $false
    foreach ($p in $Paths) {
        if ($p -like "content/*" -and $p -ne "content/memory/software-changes.md") {
            $isData = $true
        } else {
            $isSoftware = $true
        }
    }
    if ($isData -and $isSoftware) {
        $ChangesFile = "content/memory/software-changes.md"
        Write-Warning "Mixed data+software paths. Writing to software log. Consider logging data changes separately."
    } elseif ($isData) {
        $ChangesFile = "content/memory/data-changes.md"
    } else {
        $ChangesFile = "content/memory/software-changes.md"
    }
}

if (-not [System.IO.Path]::IsPathRooted($ChangesFile)) {
    $ChangesFile = Join-Path $selfwareRoot $ChangesFile
}

if (-not (Test-Path $ChangesFile)) {
    New-Item -ItemType Directory -Path (Split-Path -Parent $ChangesFile) -Force | Out-Null
    Set-Content -Path $ChangesFile -Encoding UTF8 -Value "# Change Records`n"
}

$timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
$changeId = "CHG-{0}-{1}" -f (Get-Date -Format "yyyyMMdd-HHmmss"), (Get-Random -Minimum 1000 -Maximum 9999)

$lines = @()
$lines += ""
$lines += "## $changeId"
$lines += "- timestamp: $timestamp"
$lines += "- actor: $Actor"
$lines += "- intent: $Intent"
$lines += "- paths:"
foreach ($p in $Paths) {
    $lines += "  - $p"
}
$lines += "- summary: $Summary"
$lines += "- rollback_hint: $RollbackHint"
$lines += ""

Add-Content -Path $ChangesFile -Value ($lines -join "`n") -Encoding UTF8
Write-Output "Appended change record: $changeId"
Write-Output "Change file: $ChangesFile"
