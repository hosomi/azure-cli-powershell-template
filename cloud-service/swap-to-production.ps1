Param(  $serviceName = "",
        $timeStampFormat = "g",
        $selectedsubscription = "default",
        $subscriptionDataFile = ""
     )


Import-Module Azure -ErrorAction Stop

Write-Output "$(Get-Date -f $timeStampFormat) - Swap Start"

$pubsettings = $subscriptionDataFile
Import-AzurePublishSettingsFile $pubsettings -ErrorAction Stop
Select-AzureSubscription $selectedsubscription -ErrorAction Stop

Move-AzureDeployment -ServiceName $serviceName -ErrorAction Stop

Write-Output "$(Get-Date -f $timeStampFormat) - Swap End"