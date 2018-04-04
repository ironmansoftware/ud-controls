
New-UDPage -Name "Textbox" -Icon font -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Textboxes" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Text fields allow user input."
            }
            
            New-UDExample -Example {
                New-UDTextbox -Label 'First Name'
                New-UDTextbox -Placeholder 'Last Name'
                New-UDRadio -Label 'Disabled' -Placeholder 'I am not editable' -Disabled 
                New-UDRadio -Label 'Password' -Type 'password'
                New-UDRadio -Label 'Email' -Type 'email'
            }
        }
    }
}
