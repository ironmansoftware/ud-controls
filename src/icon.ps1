function New-UDIcon {
    param(
        [Parameter(Mandatory = $true)]
        [PowerShellProTools.UniversalDashboard.Models.FontAwesomeIcons]$Icon,
        [Parameter()]
        [ValidateSet('ExtraSmall', 'Small', 'Large', '2x', '3x', '4x', '5x')]
        [string]$Size,
        [Parameter()]
        [Switch]$FixedWidth,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$Color
    )

    $sizeClass = ''
    if ($PSBoundParameters.ContainsKey("Size")) {
        switch ($Size) {
            "ExtraSmall" { $sizeClass = 'fa-xs' }
            "Small" { $sizeClass = 'fa-sm' }
            "Large" { $sizeClass = 'fa-lg' }
            "2x" { $sizeClass = 'fa-2x' }
            "3x" { $sizeClass = 'fa-3x' }
            "4x" { $sizeClass = 'fa-4x' }
            "5x" { $sizeClass = 'fa-5x' }

        }
    }

    $fixedWidthClass = ''
    if ($FixedWidth) {
        $fixedWidthClass = 'fa-fw'
    }

    $IconClass = $Icon.ToString().Replace('_', '-')

    $Attributes = @{
        className = "fa fa-$IconClass $sizeClass $fixedWidthClass"
    }

    if ($PSBoundParameters.ContainsKey('Color')) {
        $Attributes.style =  @{
            color = $Color.HtmlColor
        }
    }

    New-UDElement -Tag 'i' -Attributes $Attributes
}