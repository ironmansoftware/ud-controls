function New-UDParagraph {
    param(
        [Parameter(ParameterSetName = 'content')]
        [ScriptBlock]$Content,
        [Parameter(ParameterSetName = 'text')]
        [string]$Text
    )

    if ($PSCmdlet.ParameterSetName -eq 'content') {
        New-UDElement -Tag 'p' -Content $Content
    }
    else {
        New-UDElement -Tag 'p' -Content {
            $Text
        }
    }
   
}