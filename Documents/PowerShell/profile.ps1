if (Get-Command starship -ErrorAction SilentlyContinue) {
  Set-Alias -Name ls -Value eza
}


# Starship
if (Get-Command starship -ErrorAction SilentlyContinue) {
  Invoke-Expression (&starship init powershell)
}
