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
