
New-UDPage -Name "Radio" -Icon circle -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Radios" 

            New-UDParagraph -Content {
                "Radio Buttons are used when the user must make only one selection out of a group of items. "
            }
            
            New-UDElementExample -Example {
                New-UDRadio -Label Red -Checked
                New-UDRadio -Label Yellow 
                New-UDRadio -Label Green -WithGap
                New-UDRadio -Label Brown -Disabled
            }
        }
    }
}
