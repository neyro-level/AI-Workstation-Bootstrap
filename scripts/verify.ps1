Write-Host "AI Workstation Bootstrap healthcheck"

$commands = @("git", "node", "npm", "python", "code")

foreach ($cmd in $commands) {
  $found = Get-Command $cmd -ErrorAction SilentlyContinue
  if ($found) {
    Write-Host "[OK] $cmd -> $($found.Source)"
  } else {
    Write-Host "[MISSING] $cmd"
  }
}

Write-Host ""
Write-Host "Manual checks:"
Write-Host "- VS Code extensions installed"
Write-Host "- Codex authenticated"
Write-Host "- Doppler authenticated"
Write-Host "- Secrets are not stored in this repository"
