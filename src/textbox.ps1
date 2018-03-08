function New-UDTextbox {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Value
    )

    New-UDElement -Id $Id -Tag "input" -Attributes @{
        type = "textbox"
        value = $Value
    }
}