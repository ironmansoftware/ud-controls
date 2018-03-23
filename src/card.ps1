function New-UDCCard {
    param(
        [Parameter()]
        [String]$Id = (New-Guid),
        [Parameter()]
        [String]$Title,
        [Parameter()]
        [ScriptBlock]$Content,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$BackgroundColor,
        [Parameter()]
        [PowerShellProTools.UniversalDashboard.Models.DashboardColor]$FontColor,
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
        [String]$Size
    )

    $activatorClass = ''
    if ($Reveal -ne $null) {
        $activatorClass = 'activator'
    }

    $sizeClass = ''
    if ($PSBoundParameters.ContainsKey('Size')) {
        $sizeClass = $Size
    }

    New-UDElement -Tag "div" -Attributes @{ className = "card $sizeClass" } -Content {
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

            $Content.Invoke()

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