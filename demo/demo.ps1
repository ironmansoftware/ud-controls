Import-Module (Join-Path $PSScriptRoot "..\src\UniversalDashboard.Controls.psm1") -Force

Get-UDDashboard | Stop-UDDashboard

$Button = . "$PSScriptRoot\button.ps1"
$Card = . "$PSScriptRoot\card.ps1"
$Checkbox = . "$PSScriptRoot\checkbox.ps1"
$Collection = . "$PSScriptRoot\collection.ps1"
$Icon = . "$PSScriptRoot\icon.ps1"
$Preloader = . "$PSScriptRoot\preloader.ps1"
$SwitchPage = . "$PSScriptRoot\switch.ps1"

$Dashboard = New-UDDashboard -Title "Controls" -Pages @(
    $Button
    $Card
    $Checkbox
    $Collection
    $Icon
    $Preloader
    $SwitchPage
)

Start-UDDashboard -Dashboard $Dashboard -Port 10000