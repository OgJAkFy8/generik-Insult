#Import a list of insults - 
$insults = Get-Content "C:\Users\Erik.Arnesen\Desktop\insult-list.txt" 

#Import a list of Friends - 
$nice = Get-Content "C:\Users\Erik.Arnesen\Desktop\insult-BFF-list.txt"

#Clear the screen for working
cls

#Write a greeting when the program begins
Write-Host "Welcome to the BFF machine." -BackgroundColor Yellow -ForegroundColor Black

#Start an Until "exit" loop where the main body of the program will run 
do{

#Pause for two seconds
Start-Sleep -s 2

#Clear the screen
cls

#Ask the user what what there name is and assign their name to a verable "$name"
$name = Read-Host "What is yoursjghefghehgheName?"

#get a random insult from the list imported earlier and assign it to "$insult"
$insult = get-random -InputObject $insults

#test the $name against different things.  Starting with the BFF test.  Then the parent test.  Then the "exit" test.  And then comes the insults.
if ($nice -match $name)
    {Write-Host "Interesting."
    Start-Sleep -Milliseconds 500
    Write-Host "You have the same name as one of my friends."
    Start-Sleep -s 1
    $fname = $name
    $name = Read-Host "What is your last name?"
    if ($nice -match $name)
        {Write-Host "Hello" $fname $name "you are a one of my BFF's." -BackgroundColor Magenta   -ForegroundColor white}}
elseif (($name -eq "mom") -or ($name -eq "dad" ))
    {Write-host $name "you look fantastic today." -ForegroundColor Magenta }
elseif ($name -eq "exit")
    {Write-Host "Thanks for playing."  -BackgroundColor Yellow -ForegroundColor Black}
else
   {Write-Host "Hello" $name " you are a" $insult -ForegroundColor Red -BackgroundColor Yellow }

#Start-Sleep -s 2
}
until ($name -eq "exit")