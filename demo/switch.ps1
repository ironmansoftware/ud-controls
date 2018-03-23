
New-UDPage -Name "Switch" -Content {
    New-UDCRow -Columns {
        New-UDCColumn -Content {
            New-UDHeading -Size 1 -Content "Switches" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Switches are special checkboxes used for binary states such as on / off"
            }
            
            New-UDSwitch
            New-UDSwitch -OnText "Yes" -OffText "No" -Disabled
        }
    }
}
