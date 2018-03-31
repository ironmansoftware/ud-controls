
New-UDPage -Name "Modal" -Icon plus_circle -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Modals" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Use a modal for dialog boxes, confirmation messages, or other content that can be called up. "
            }
            
            New-UDHeading -Size 3 -Content "Modal" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDModal -Header "Modal Header" -Content {
                    "A bunch of text"
                }
            }
        }
    }
}
