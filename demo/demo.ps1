Import-Module UniversalDashboard
Import-Module (Join-Path $PSScriptRoot "..\src\UniversalDashboard.Controls.psm1") -Force

Get-UDDashboard | Stop-UDDashboard

function New-UDElementExample {
    param(
        [ScriptBlock]$Example
    )

    $Example.Invoke()

    New-UDRow -Columns {
        New-UDColumn -MediumSize 6 -SmallSize 12 -Content {
            New-UDElement -Tag "pre" -Content {
                $Example.ToString()
            } -Attributes @{
                style = @{
                    backgroundColor = "#f6f8fa"
                    fontFamily = '"SFMono-Regular",Consolas,"Liberation Mono",Menlo,Courier,monospace'
                }
                width = "100%"
            }
        }
    }
}

$Button = . "$PSScriptRoot\button.ps1"
$Card = . "$PSScriptRoot\card.ps1"
$Checkbox = . "$PSScriptRoot\checkbox.ps1"
$Collapsible = . "$PSScriptRoot\collapsible.ps1"
$Collection = . "$PSScriptRoot\collection.ps1"
$Modal = . "$PSScriptRoot\modal.ps1"
$Icon = . "$PSScriptRoot\icon.ps1"
$Preloader = . "$PSScriptRoot\preloader.ps1"
$Radio = . "$PSScriptRoot\radio.ps1"
$SwitchPage = . "$PSScriptRoot\switch.ps1"
$Textbox = . "$PSScriptRoot\textbox.ps1"

$Dashboard = New-UDDashboard -Title "Controls" -Pages @(
    $Button
    $Card
    $Checkbox
    $Collapsible
    $Collection
    $Modal
    $Icon
    $Preloader
    $Radio
    $SwitchPage
    $Textbox
)

Start-UDDashboard -Dashboard $Dashboard -Port 10001