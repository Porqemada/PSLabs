

#$Greeting = 'Hi my name is Emanuel'
#$Pattern = '(?<=is ).*$'

#$Greeting = $Greeting -replace $Pattern, 'Pontus'
#$Greeting -replace $Pattern

#Write-Host $Greeting -ForegroundColor Cyan


$Greeting = 'Hi my name is Emanuel'
$Pattern = 'Hi my name is (?<Name>\w+)'
$myName = 'Pontus'

#$Greeting -match $Pattern
#$Matches

$Greeting -replace $Pattern, ('${Name}' + $myName)