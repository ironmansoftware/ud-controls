function New-UDCheckbox {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Label,
        [Parameter()]
        [Switch]$Checked
    )

    $txtChecked = ''
    if ($Checked) {
        $txtChecked = "checked"
    }

    New-UDElement -Tag "P" -Content {
        New-UDElement -Id $Id -Tag "input" -Attributes @{
            type = "checkbox"
            checked = $txtChecked
        }
        New-UDElement -Tag "label" -Attributes @{
            "for" = $id
        }
    }
}