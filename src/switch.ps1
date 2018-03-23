function New-UDSwitch {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $OnText = "On",
        [Parameter()]
        $OffText = "Off",
        [Parameter()]
        [Switch]$Disabled
    )

    $Attributes = @{ type = "checkbox" }
    if ($Disabled) {
        $Attributes.disabled = $true
    }

    New-UDElement -Tag "div" -Content {
        New-UDElement -Tag "label" -Content {
            $OnText
            New-UDElement -Tag "input" -Attributes $Attributes
            New-UDElement -Tag "span" -Attributes @{className = "lever"}
            $OffText
        }
    } -Attributes @{
        className = "switch"
    }
}