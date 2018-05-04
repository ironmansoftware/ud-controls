
New-UDPage -Name "Modal" -Icon plus_circle -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Modals" 

            New-UDParagraph -Content {
                "Use a modal for dialog boxes, confirmation messages, or other content that can be called up. "
            }
            
            New-UDHeading -Size 3 -Text "Modal" 

            New-UDElementExample -Example {
                New-UDModal -Header "Modal Header" -Content {
                    "A bunch of text"
                }
            }
        }
    }
}
