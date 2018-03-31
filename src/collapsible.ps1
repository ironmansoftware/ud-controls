function New-UDCollapsible {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter(Mandatory = $true, Position = 0)]
        [ScriptBlock]$Items,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$BackgroudColor = 'White',
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$FontColor = 'Black',
        [Parameter()]
        [Switch]$Popout,
        [Parameter()]
        [ValidateSet("Expandable", "Accordian")]
        [String]$Type = 'Expandable'
    )

    $className = "collapsible ud-collapsible"
    if ($Popout) {
        $className += " popout"
    }

    New-UDElement -Tag "ul" -Id $Id -Attributes @{
        className = $className 
        'data-collapsible' = $Type.ToLower()
        style = @{
            backgroudColor = $BackgroundColor.HtmlColor
            fontColor = $FontColor.HtmlColor
        }
    } -Content $Items
}

function New-UDCollapsibleItem {
    [CmdletBinding(DefaultParameterSetName = "content")]
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
		[String]$Title,
		[Parameter()]
	    [PowerShellProTools.UniversalDashboard.Models.FontAwesomeIcons]$Icon,
		[Parameter(ParameterSetName = "content")]
        [ScriptBlock]$Content,
        [Parameter(ParameterSetName = "endpoint")]
        [ScriptBlock]$Endpoint,
        [Parameter(ParameterSetName = "endpoint")]
        [Switch]$AutoRefresh,
        [Parameter(ParameterSetName = "endpoint")]
		[int]$RefreshInterval = 5,
		[Parameter()]
        [Switch]$Active,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$BackgroudColor = 'White',
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$FontColor = 'Black'
    )

    $liClassName = "ud-collapsible-item"
    $itemClassName = "collapsible-header" 

    if ($Active) {
        $liClassName += " active"
        $itemClassName += " active"
    }


    
    New-UDElement -Tag "li" -id $Id -Attributes @{
        className = $liClassName
    } -Content {
        New-UDElement -Tag "div" -Attributes @{
            className = $itemClassName 
            style = @{
                backgroudColor = $BackgroundColor.HtmlColor
                fontColor = $FontColor.HtmlColor
            }
        } -Id "$Id-header" -Content {
            if ($PSBoundParameters.ContainsKey("Icon")) {
                New-UDIcon -Icon $Icon
            }
            $Title
        }
        if ($PSCmdlet.ParameterSetName -eq "content") {
            New-UDElement -Tag "div" -Attributes @{
                className = "collapsible-body"
            } -Content $Content
        }
        else {
            New-UDElement -Tag "div" -Attributes @{
                className = "collapsible-body"
            } -Endpoint $Endpoint -AutoRefresh:$AutoRefresh -RefreshInterval $RefreshInterval
        }
    }
    

    
}