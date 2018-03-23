Import-Module (Join-Path $PSScriptRoot "..\src\UniversalDashboard.Controls.psm1") -Force

Get-UDDashboard | Stop-UDDashboard

$Button = . "$PSScriptRoot\button.ps1"
$Card = . "$PSScriptRoot\card.ps1"

$Dashboard = New-UDDashboard -Title "Controls" -Pages @(
    $Button
    $Card
)

Start-UDDashboard -Dashboard $Dashboard -Port 10000