function Check-Command($Name) {
  return [bool](Get-Command -Name $Name -ErrorAction SilentlyContinue)
}

function Module-Exists($Name) {
  return [bool](Get-Module -ListAvailable -Name $Name)
}

if (Check-Command -Name eza) {
  Set-Alias -Name ls -Value eza
}

if (Check-Command -Name oh-my-posh) {
  $Theme = "clean-detailed"
  oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/$Theme.omp.json" | Invoke-Expression
} elseif (Module-Exists PowerLine) {
  Import-Module PowerLine
} elseif (Check-Command starship) {
  Invoke-Expression (&starship init powershell)
}


