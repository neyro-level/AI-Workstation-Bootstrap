Write-Host "Install Pencil OS skills for Codex"
Write-Host ""

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$source = Join-Path $repoRoot "codex-template\skills"
$target = Join-Path $env:USERPROFILE ".codex\skills"

New-Item -ItemType Directory -Force -Path $target | Out-Null

$skills = @(
  "pencil-os",
  "pencil-mcp-operator",
  "pencil-modern-ui",
  "pencil-b2b-sites",
  "pencil-design-system"
)

foreach ($skill in $skills) {
  $src = Join-Path $source $skill
  $dst = Join-Path $target $skill

  if (-not (Test-Path $src)) {
    Write-Host "[MISSING] $src"
    continue
  }

  Copy-Item -Recurse -Force $src $dst
  Write-Host "[OK] $skill -> $dst"
}

Write-Host ""
Write-Host "Restart Codex / IDE extension / CLI session so the new skills are detected."
