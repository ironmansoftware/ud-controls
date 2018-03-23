function New-UDSwitch {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $OnText = "On",
        [Parameter()]
        $OffText = "Off"
    )

    New-UDElement -Tag "div" -Content {
        New-UDElement -Tag "label" -Content {
            $OnText
            New-UDElement -Tag "input" -Attributes @{ type = "checkbox" }
            New-UDElement -Tag "span" -Attributes @{className = "lever"}
            $OffText
        }
    } -Attributes @{
        className = "switch"
    }
}