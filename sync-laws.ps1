# Pulls the latest laws and installs them into ~/.claude/CLAUDE.md.
# Safe: never overwrites a CLAUDE.md that has local edits which were not synced yet.
$ErrorActionPreference = "Stop"
$repo   = Split-Path -Parent $MyInvocation.MyCommand.Path
$target = Join-Path $HOME ".claude\CLAUDE.md"
$backup = Join-Path $HOME ".claude\LAWS-BACKUP.md"
$stamp  = Join-Path $HOME ".claude\.laws-applied-sha"

New-Item -ItemType Directory -Force (Split-Path $target) | Out-Null

try { git -C $repo pull -q --ff-only 2>$null | Out-Null } catch { Write-Host "laws: offline, using the local copy" }

function Sha($p) { if (Test-Path $p) { (Get-FileHash $p -Algorithm SHA256).Hash } else { "" } }

$repoSha    = Sha (Join-Path $repo "CLAUDE.md")
$localSha   = Sha $target
$appliedSha = if (Test-Path $stamp) { (Get-Content $stamp -Raw).Trim() } else { "" }

if ($repoSha -eq $localSha) {
    Set-Content $stamp $repoSha -NoNewline
    Write-Host "laws: up to date"
    exit 0
}
if ($localSha -ne "" -and $localSha -ne $appliedSha) {
    Write-Host "laws: ~/.claude/CLAUDE.md has local edits that were never synced. Not overwriting. Publish them or merge by hand."
    exit 0
}
Copy-Item (Join-Path $repo "CLAUDE.md") $target -Force
Copy-Item (Join-Path $repo "LAWS-BACKUP.md") $backup -Force
Set-Content $stamp $repoSha -NoNewline
Write-Host "laws: updated ~/.claude/CLAUDE.md to the latest version"
