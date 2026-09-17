# Owner's PC only: copies the live laws from ~/.claude into this repo and pushes them.
$ErrorActionPreference = "Stop"
$repo = Split-Path -Parent $MyInvocation.MyCommand.Path
Copy-Item (Join-Path $HOME ".claude\CLAUDE.md") (Join-Path $repo "CLAUDE.md") -Force
Copy-Item (Join-Path $HOME ".claude\LAWS-BACKUP.md") (Join-Path $repo "LAWS-BACKUP.md") -Force
git -C $repo add -A
if (git -C $repo status --porcelain) {
    $msg = if ($args.Count -gt 0) { $args -join " " } else { "laws: update " + (Get-Date -Format "yyyy-MM-dd") }
    git -C $repo commit -q -m $msg
    git -C $repo push -q
    (Get-FileHash (Join-Path $repo "CLAUDE.md") -Algorithm SHA256).Hash | Set-Content (Join-Path $HOME ".claude\.laws-applied-sha") -NoNewline
    Write-Host "laws: published"
} else { Write-Host "laws: nothing to publish" }
