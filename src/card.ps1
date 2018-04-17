function New-UDCard {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        [String]$Title,
        [Parameter(ParameterSetName = 'content')]
        [ScriptBlock]$Content,
        [Parameter()]
        [Parameter(ParameterSetName = 'text')]
        [string]$Text,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$BackgroundColor = 'white',
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$FontColor = 'black',
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.Link[]]$Links,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.Basics.Element]$Image,
        [Parameter()]
        [ScriptBlock]$Reveal,
        [Parameter()]
        [String]$RevealTitle,
        [Parameter()]
        [ValidateSet('small', 'medium', 'large')]
        [String]$Size,
        [Parameter()]
        [String]$Language
    )

    $activatorClass = ''
    if ($Reveal -ne $null) {
        $activatorClass = 'activator'
    }

    $sizeClass = ''
    if ($PSBoundParameters.ContainsKey('Size')) {
        $sizeClass = $Size
    }

    $style = @{
        backgroundColor = $BackgroundColor.HtmlColor
        color = $FontColor.HtmlColor
    }

    New-UDElement -Tag "div" -Attributes @{ className = "card $sizeClass"; style = $style  } -Content {
        if ($Image -ne $null) {
            New-UDElement -Tag 'div' -Attributes @{ className = "card-image waves-effect waves-block waves-light" } -Content {
                $Image
            }
        }

        New-UDElement -Tag "div" -Attributes @{ className = 'card-content' } -Content {
            New-UDElement -Tag 'span' -Attributes @{ className = "card-title $activatorClass" } -Content { 
                $Title 

                if ($Reveal -ne $null) {
                    New-UDElement -Tag 'i' -Attributes @{ className = 'fa fa-ellipsis-v right'}
                }
            }

            if ($PSCmdlet.ParameterSetName -eq 'content') {
                $Content.Invoke()
            } else {
                $Text
            }
        }

        if ($Links -ne $null) {
            New-UDElement -Tag 'div' -Attributes @{ className = 'card-action' } -Content {
                $Links
            }
        }

        if ($Reveal -ne $null) {
            New-UDElement -Tag 'div' -Attributes @{ className = 'card-reveal' } -Content {
                New-UDElement -Tag 'span' -Attributes @{ className = 'card-title' } -Content { 
                    $Title 
                    New-UDElement -Tag 'i' -Attributes @{ className = 'fa fa-times right'}
                }
                $Reveal.Invoke()
            }
        }
    }
}