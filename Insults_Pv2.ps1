#requires -version 2.0


$insults = Get-Content -Path '.\Insult-list.txt'
$nice = Get-Content -Path '.\Insult-BFF-list.txt'

$name = 'Welcome to the BFF machine.'


Clear-Host
Write-Host $name

do
{
  Start-Sleep -Seconds 2
  Clear-Host
  $name = Read-Host -Prompt 'What is your Name?'
  $insult = Get-Random -InputObject $insults

  if ($nice -match $name)
  {
    Write-Host 'Hello' $name "you are a one of my BFF's." -BackgroundColor Magenta   -ForegroundColor white
  }
  elseif (($name -eq 'mom') -or ($name -eq 'dad' ))
  {
    Write-Host $name 'you look fantastic today.' -ForegroundColor Magenta
  }
  elseif ($name -eq 'exit')
  {
    Write-Host 'Thanks for playing.'  -BackgroundColor Yellow -ForegroundColor Black
  }
  else
  {
    Write-Host 'Hello' $name ' you are a' $insult -ForegroundColor Red -BackgroundColor Yellow
  }

  #Start-Sleep -s 2
}
until ($name -eq 'exit')
