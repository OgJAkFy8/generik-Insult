#Import a list of insults - 
$insults = Get-Content "C:\Users\Erik.Arnesen\Desktop\pirate-name.txt" 

#Import a list of Friends - 
$nice = Get-Content "C:\Users\Erik.Arnesen\Desktop\pirate-color.txt"

#Clear the screen for working
cls

#Write a greeting when the program begins
Write-Host "Welcome to the Pirate Name machine." -BackgroundColor Yellow -ForegroundColor Black

#Start an Until "exit" loop where the main body of the program will run 
do{

#Pause for two seconds
Start-Sleep -s 2

#Clear the screen
cls

#Ask the user what what there name is and assign their name to a verable "$name"
$name = Read-Host "What is your favorate color?"

#get a random insult from the list imported earlier and assign it to "$insult"
$insult = get-random -InputObject $insults

#test the $name against different things.  Starting with the BFF test.  Then the parent test.  Then the "exit" test.  And then comes the insults.
if ($nice -match $name)
    {Write-Host "Interesting."
    Start-Sleep -Milliseconds 500
    Write-Host "You will now be called."
    Start-Sleep -s 1
    $a33 = $Insults | Select-String -Pattern $name -SimpleMatch
    Write-Host $a33 -BackgroundColor Magenta   -ForegroundColor white}
else
   {Write-Host "Hello" $name " you are a" $insult -ForegroundColor Red -BackgroundColor Yellow }

#Start-Sleep -s 2
}
until ($name -eq "exit")

