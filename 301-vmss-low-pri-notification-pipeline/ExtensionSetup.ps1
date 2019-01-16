$Settings = @{"fileUris" = "[]"; "commandToExecute" = ""};
$Settings = @{"fileUris" = "[https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/201-vmss-bottle-autoscale/installserver.sh,
    https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/201-vmss-bottle-autoscale/workserver.py,
    https://raw.githubusercontent.com/zivraf/ScheduledEvents/master/Python/scheduledEventsExtension.py,
    https://raw.githubusercontent.com/zivraf/ScheduledEvents/master/Python/eventGridHelper.py,
    https://raw.githubusercontent.com/zivraf/ScheduledEvents/master/Python/scheduledEventsHelper.py,
    https://raw.githubusercontent.com/zivraf/ScheduledEvents/master/Python/scheduledEventsExtensionConfig.ini,
    https://raw.githubusercontent.com/zivraf/ScheduledEvents/master/setup/linux/install-scheduledEventExtention-ubuntu.sh]";
    "commandToExecute" = ""};
    
$ProtectedSettings = @{"storageAccountName" = $stoname; "storageAccountKey" = $stokey};

Add-AzureRmVmssExtension -VirtualMachineScaleSet $vmss -Name $vmssExtensionName -Publisher $vmssPublisher  `
  -Type $vmssExtensionType -TypeHandlerVersion $ExtVer -AutoUpgradeMinorVersion $True  `
  -Setting $Settings -ProtectedSetting $ProtectedSettings