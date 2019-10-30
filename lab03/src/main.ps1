
$rgName = New-AzResourceGroup -Name "outputLab4" -Location 'Korea Central'
$templateLocation = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab03\template\lab3_deploy.json"
$templateParamLocation = "C:\Users\qkrcldn12\Desktop\Azure\ARM-Template\lab03\template\lab3_deploy.parameter.json"

## Deploy with parameters
$job = "job." + ((Get-Date -Format "yyyyMMdd.HHmm"))

$outputs = New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rgName.ResourceGroupName -TemplateFile $templateLocation -TemplateParameterFile $templateParamLocation

$outputs.Outputs.hostname.Value
$outputs.Outputs | ConvertTo-Json
