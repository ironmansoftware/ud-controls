
New-UDPage -Name "Select" -Icon circle -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Select" 

            New-UDParagraph -Content {
                "Select drop downs allow you to offer options a user can select."
            }

            New-UDHeading -Size 3 -Text "Basic"
            
            New-UDElementExample -Label "Fruit" -Example {
                New-UDSelect -Option {
                    New-UDSelectOption -Name "Apple" -Value 1
                    New-UDSelectOption -Name "Orange" -Value 2
                    New-UDSelectOption -Name "Grapes" -Value 3
                }
            }
        }
    }
}
