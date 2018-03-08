function New-UDHeading {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Content,
        [Parameter()]
        [ValidateSet("1", "2", "3", "4", "5", "6")]
        $Size
    )

    New-UDElement -Id $Id -Tag "h$size" -Content {
        $Content
    }
}