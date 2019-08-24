param([String]$ProjectName)
param([String]$ToolsPath)

$newVersion = (python $ToolsPath/version.py $ProjectName) | Out-String

Write-Output "##vso[task.setvariable variable=PackageVersion;]$newVersion"
