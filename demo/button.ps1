
New-UDPage -Name "Button" -Content {
    New-UDCRow -Columns {
        New-UDCColumn -Content {
            New-UDHeading -Size 1 -Content "Buttons" -Color '#ee6e73'

            New-UDParagraph -Content {
                "There are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modals."
            }
            
            New-UDHeading -Size 3 -Content "Raised" -Color '#ee6e73'
            
            New-UDButton -Text "Button" 
            New-UDButton -Text "Button" -Icon cloud -IconAlignment left
            New-UDButton -Text "Button" -Icon cloud -IconAlignment right
            
            New-UDHeading -Size 3 -Content "Floating" -Color '#ee6e73'
            
            New-UDButton -Floating -Icon plus
            
            New-UDHeading -Size 3 -Content "Flat" -Color '#ee6e73'
            
            New-UDParagraph -Content {
                "Flat buttons are used to reduce excessive layering. For example, flat buttons are usually used for actions within a card or modal so there aren't too many overlapping shadows."
            }
            
            New-UDButton -Text "Button" -Flat
        }
    }
}
