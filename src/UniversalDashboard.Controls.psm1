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

function New-UDIFrame {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Uri
    )

    New-UDElement -Id $Id -Tag "iframe" -Attributes @{
        src = $Uri
    }
}

function New-UDSpan {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        $Content
    )

    New-UDElement -Id $Id -Tag "span" -Content {
        $Content
    }
}