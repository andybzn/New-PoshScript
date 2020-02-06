<#
Script Name: Get-ServiceState.ps1
Author: Dark-Coffee
Version: 1.0.0
Updated: 2020-02-06
Url: https://github.com/dark-coffee/New-PoshScript
#>

function New-PoshScript {
    param (
        $ScriptName = 'New-Script',
        $Path = $PWD
    )
    
    $ScriptTemplate = '<#
Script Name:
Author: 
Version: 
Updated: 
Url:
#>

<#
.Description
[description]
.Parameter 
[description]
.Parameter 
[description]
.Example
[example]
.Example
[example]
#>

'


    $OutputDirectory = "$Path\$Scriptname.ps1"

    New-Item -ItemType file -Path $OutputDirectory -Value $ScriptTemplate
}
