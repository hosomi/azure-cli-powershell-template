Param(  $serviceName = "",
        $timeStampFormat = "g",
        $selectedsubscription = "default",
        $subscriptionDataFile = ""
     )


Import-Module Azure -ErrorAction Stop

Write-Output "$(Get-Date -f $timeStampFormat) - Delete Staging Start"

$pubsettings = $subscriptionDataFile 
Import-AzurePublishSettingsFile $pubsettings -ErrorAction Stop
Select-AzureSubscription $selectedsubscription -ErrorAction Stop

Remove-AzureDeployment -ServiceName $serviceName -Slot Staging -Force -ErrorAction Stop

Write-Output "$(Get-Date -f $timeStampFormat) - Delete Staging End"