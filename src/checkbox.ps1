function New-UDCheckbox {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Label,
        [Parameter()]
        [Switch]$Checked,
        [Parameter()]
        [Switch]$FilledIn,
        [Parameter()]
        [Switch]$Disabled
    )

    $txtChecked = ''
    if ($Checked) {
        $txtChecked = "checked"
    }

    $Attributes = @{
        type = "checkbox"
        checked = $txtChecked
    }

    if ($FilledIn) {
        $Attributes.className = 'filled-in'
    }

    if ($Disabled) {
        $Attributes.disabled = $true
    }

    New-UDElement -Tag "P" -Content {
        New-UDElement -Id $Id -Tag "input" -Attributes $Attributes
        New-UDElement -Tag "label" -Attributes @{
            "for" = $id
        }
    }
}