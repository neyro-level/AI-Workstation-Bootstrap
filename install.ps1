Write-Host "AI Workstation Bootstrap"
Write-Host ""
Write-Host "This script creates the recommended workspace folders in the current directory."
Write-Host "It does not install private secrets or personal settings."
Write-Host ""

$folders = @(
  "business-profile",
  "projects",
  "system",
  "system/servers",
  "system/integrations",
  "system/secrets",
  "templates",
  "templates/project",
  "templates/business",
  "templates/codex",
  "design-base",
  "codex-template",
  "codex-template/skills",
  "archive"
)

foreach ($folder in $folders) {
  New-Item -ItemType Directory -Force -Path $folder | Out-Null
  Write-Host "[OK] $folder"
}

Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Fill business-profile/PROFILE.md"
Write-Host "2. Create a project in projects/"
Write-Host "3. Set up secrets in Doppler"
Write-Host "4. Copy Codex templates only after reviewing docs/03-codex-setup.md"

