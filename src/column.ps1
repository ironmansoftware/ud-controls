function New-UDColumn {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),

        [Parameter()]
        [Alias('Size')]
        [ValidateRange(1,12)]
        [int]$SmallSize = 12,
        [Parameter()]
        [ValidateRange(1,12)]
        [int]$LargeSize = 12,
        [Parameter()]
        [ValidateRange(1,12)]
        [int]$MediumSize = 12,

        [Parameter()]
        [ValidateRange(1,12)]
        [int]$SmallOffset = 1,
        [Parameter()]
        [ValidateRange(1,12)]
        [int]$MediumOffset = 1,
        [Parameter()]
        [ValidateRange(1,12)]
        [int]$LargeOffset = 1,

        [Parameter()]
        [ScriptBlock]$Content
    )

    $classes = "col"

    if ($PSBoundParameters.ContainsKey("SmallSize")) {
        $classes += " s$SmallSize"
    }

    if ($PSBoundParameters.ContainsKey("MediumSize")) {
        $classes += " m$MediumSize"
    }

    if ($PSBoundParameters.ContainsKey("LargeSize")) {
        $classes += " l$MediumSize"
    }

    if ($PSBoundParameters.ContainsKey("SmallOffset")) {
        $classes += " offset-s$SmallSize"
    }

    if ($PSBoundParameters.ContainsKey("MediumOffset")) {
        $classes += " offset-m$MediumSize"
    }

    if ($PSBoundParameters.ContainsKey("LargeOffset")) {
        $classes += " offset-l$MediumSize"
    }

    New-UDElement -Tag 'div' -Attributes @{
        className = $classes
    } -Content $Content
}