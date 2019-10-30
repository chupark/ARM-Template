$rg = New-AzResourceGroup -Name "armLab10" -Location 'Korea Central'
$job = "job1"
$template="C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab10\template\lab10_deploy.json"

New-AzResourceGroupDeployment -Name $job -TemplateFile $template -ResourceGroupName $rg.ResourceGroupName `
-TemplateParameterFile "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab10\template\lab10_deploy.parameter.json" `
-vmName "pcwvm1" -numberOfDataDisks 2