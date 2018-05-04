
New-UDPage -Name "Collapsible" -Icon check_square -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Collapsible" 

            New-UDParagraph -Content {
                "Use checkboxes when looking for yes or no answers. "
            }
            
            New-UDElementExample -Example {
                New-UDCollapsible -Items {
                    New-UDCollapsibleItem -Title "Hey" -Content {
                        "Hey!"
                    }
                }
            }
        }
    }
}
