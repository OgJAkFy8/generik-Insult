$insults = Get-Content "C:\Users\Erik.Arnesen\Desktop\insult-list.txt" 
$nice = Get-Content "C:\Users\Erik.Arnesen\Desktop\insult-BFF-list.txt"


cls
Write-Host "Welcome to the BFF machine." -BackgroundColor Yellow -ForegroundColor Black

do{
Start-Sleep -s 3
cls
$name = Read-Host "What is your Name?"
$insult = get-random -InputObject $insults

if ($nice -match $name)
    {Write-Host "Hello" $name "you are a one of my BFF's." -BackgroundColor Magenta   -ForegroundColor white}
elseif (($name -eq "mom") -or ($name -eq "dad" ))
    {Write-host $name "you look fantastic today." -ForegroundColor Magenta }
elseif ($name -eq "exit")
    {Write-Host "Thanks for playing."  -BackgroundColor Yellow -ForegroundColor Black}
else
   {Write-Host "Hello" $name " you are a" $insult -ForegroundColor Red -BackgroundColor Yellow }

#Start-Sleep -s 2
}
until ($name -eq "exit")