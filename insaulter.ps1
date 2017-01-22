$insults = "Pig Head", "Booby Head", "Baby Baby","poopy head","fart face","booby burper","gonk face","chicken"


Function Greeting{
if ($name -eq "Miles")
    {cls
    Write-Host "Hello Sir" $name -BackgroundColor Blue -ForegroundColor Yellow}
elseif ($name -eq "exit")
    {Write-Host "Thanks for playing."}
elseif (($name -eq "mom") -or ($name -eq "dad" ))
    {
    cls
    Write-host $name "you look fantastic today." -BackgroundColor Cyan}
else
   {cls
    Write-Host "Hello" $name " you are a" $r -ForegroundColor Red -BackgroundColor Yellow }
}



cls
Write-Host "Welcome to the insault machine."
do{
$name = Read-Host "What is your Name?"
$r = get-random -InputObject $insults
Greeting $name
}
until ($name -eq "exit")