function New-UDPreloader {
    [CmdletBinding(DefaultParameterSetName = "indeterminate")]
    param(
        [Parameter(ParameterSetName = "determinate")]
        [ValidateRange(0, 100)]
        $PercentComplete,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$CompleteColor,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$Color
        )
    
    New-UDElement -Tag "div" -Attributes @{
        className = "progress"
    } -Content {
        $Attributes = @{
            className = $PSCmdlet.ParameterSetName
        }
        if ($PSCmdlet.ParameterSetName -eq "determinate") {
            $Attributes["style"] = @{
                width = "$($PercentComplete)%"
            }
        }

        New-UDElement -Tag "div" -Attributes $Attributes
    }
}