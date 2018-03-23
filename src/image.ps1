function New-UDCImage {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        [String]$Url,
        [Parameter()]
        [Hashtable]$Attributes = @{}
    )

    $Attributes.src = $Url
    New-UDElement -Tag 'img' -Attributes $Attributes
}