function New-UDModal {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        [String]$Header,
        [Parameter()]
        [ScriptBlock]$Content
    )

    New-UDElement -Tag "a" -Attributes @{
        className = "btn modal-trigger" 
        href = "#$Id"
    } -Content { "Modal" }

    New-UDElement -Tag "div" -Attributes @{
        id = $Id
        className = "modal"
    } -Content {
        New-UDElement -Tag "div" -Attributes @{
            className = "modal-content"
        } -Content {
            if ($PSBoundParameters.ContainsKey("Header")) {
                New-UDHeading -Size 4 -Text $Header 
            }
            $Content.Invoke()
        }
    }

}