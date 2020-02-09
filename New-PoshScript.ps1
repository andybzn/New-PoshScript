<#
Script Name: New-PoshScript.ps1
Author: Dark-Coffee
Version: 1.0.0
Updated: 2020-02-09
Url: https://github.com/dark-coffee/New-PoshScript    
#>

<#
.Description
    Creates a new powershell script using a preset template.
.Parameter ScriptName
    Set a name for the script - '.ps1' is not needed and will be stripped.
.Parameter Path
    Sets the destination path for the output script. Default is $PWD.
.Parameter Author
    Sets the author name for the script. Blank if not set.
.Example 
    New-PoshScript -ScriptName TestScript -Path ($env:userprofile\desktop) -Author Dark-Coffee
.Example
    New-PoshScript TestScript -Author Dark-Coffee
#>

function New-PoshScript {
    param (
        [Parameter(Mandatory=$true)][String]$ScriptName,
        [Parameter(Mandatory=$false)][String]$Path = $PWD,
        [Parameter(Mandatory=$false)][String]$Author
    )

$ScriptName = $ScriptName -replace ".ps1"
    
$ScriptTemplate = "<#
Script Name: $ScriptName.ps1
Author: $Author
Version: 0.0.0
Updated: $(Get-Date -format yyyy-MM-dd)
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

"

    $OutputDirectory = "$Path\$Scriptname.ps1"

    New-Item -ItemType File -Path $OutputDirectory -Value $ScriptTemplate
}
