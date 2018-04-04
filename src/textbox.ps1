function New-UDTextbox {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        [string]$Label,
        [Parameter()]
        [string]$Placeholder,
        [Parameter()]
        $Value,
        [Parameter()]
        [ValidateSet('text', 'password', 'email')]
        [String]$Type = 'text',
        [Parameter()]
        [Switch]$Disabled,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.FontAwesomeIcons]$Icon
    )

    $Attributes = @{
        type = $type
        value = $Value
        placeholder = $Placeholder
    }

    if ($Disabled) {
        $Attributes.disabled = $true
    }

    New-UDElement -Tag "div" -Attributes @{ className = 'input-field'} -Content {

        if ($PSBoundParameters.ContainsKey('Icon')) {
            New-UDElement -Tag "i" -Attributes @{
                className = "fa fa-$($Icon.ToString().Replace('_', '-')) prefix"
            }
        }

        New-UDElement -Id $Id -Tag "input" -Attributes $Attributes

        if ($PSBoundParameters.ContainsKey('Label')) {
            New-UDElement -Tag "label" -Attributes @{
                'for' = $Id 
            } -Content { $Label }
        }
    }
}