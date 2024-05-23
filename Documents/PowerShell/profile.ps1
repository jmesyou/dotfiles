function Check-Command($Name) {
  return [bool](Get-Command -Name $Name -ErrorAction SilentlyContinue)
}

if (Check-Command -Name eza) {
  Set-Alias -Name ls -Value eza
}

# Starship
if (Check-Command -Name starship) {
  Invoke-Expression (&starship init powershell)
}

# direnv
if (Check-Command -Name direnv) {
  Invoke-Expression "$(direnv hook pwsh)"
}

