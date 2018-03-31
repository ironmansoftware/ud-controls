
New-UDPage -Name "Collapsible" -Icon check_square -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Collapsible" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Use checkboxes when looking for yes or no answers. "
            }
            
            New-UDExample -Example {
                New-UDCollapsible -Items {
                    New-UDCollapsibleItem -Title "Hey" -Content {
                        "Hey!"
                    }
                }
            }
        }
    }
}
