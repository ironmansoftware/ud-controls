
New-UDPage -Name "Switch" -Icon toggle_on -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Switches" 

            New-UDParagraph -Content {
                "Switches are special checkboxes used for binary states such as on / off"
            }
            
            New-UDElementExample -Example {
                New-UDSwitch
                New-UDSwitch -OnText "Yes" -OffText "No" -Disabled
            }
        }
    }
}
