function New-UDButton {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Content,
        [Parameter()]
        [ScriptBlock]$OnClick
    )

    New-UDElement -Id $Id -Tag "a" -Attributes @{
        className = "btn"
        onClick = $OnClick
    } -Content {
        $Content
    }
}