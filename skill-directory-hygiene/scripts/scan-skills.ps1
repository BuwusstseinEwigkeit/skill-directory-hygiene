param(
  [string]$Root = $HOME,
  [string]$OutFile = ""
)

$ErrorActionPreference = "Stop"

$exclude = @(
  "node_modules",
  ".git",
  "AppData",
  "venv",
  ".venv",
  "__pycache__",
  "site-packages"
)

$paths = Get-ChildItem -LiteralPath $Root -Recurse -Force -Filter "SKILL.md" -File -ErrorAction SilentlyContinue |
  Where-Object {
    $path = $_.FullName
    foreach ($part in $exclude) {
      if ($path -match [regex]::Escape("\$part\")) { return $false }
    }
    return $true
  } |
  Select-Object -ExpandProperty FullName |
  Sort-Object

if ($OutFile) {
  $paths | Set-Content -LiteralPath $OutFile -Encoding UTF8
}

$paths
