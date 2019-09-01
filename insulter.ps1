$insults = 'Pig Head', 'Booby Head', 'Baby Baby', 'poopy head', 'fart face', 'booby burper', 'gonk face', 'chicken'


Function Greeting
{
  if ($name -eq 'Alex')
  {
    Clear-Host
    Write-Host 'Hello Sir' $name -BackgroundColor Blue -ForegroundColor Yellow
  }
  elseif ($name -eq 'exit')
  {
    Write-Host 'Thanks for playing.'
  }
  elseif (($name -eq 'mom') -or ($name -eq 'dad' ))
  {
    Clear-Host
    Write-Host $name 'you look fantastic today.' -BackgroundColor Cyan
  }
  else
  {
    Clear-Host
    Write-Host 'Hello' $name ' you are a' $r -ForegroundColor Red -BackgroundColor Yellow
  }
}



Clear-Host
Write-Host 'Welcome to the insault machine.'
do
{
  $name = Read-Host -Prompt "What is your Name?"
  $r = Get-Random -InputObject $insults
  Greeting $name
}
until ($name -eq 'exit')





