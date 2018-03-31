
New-UDPage -Name "Card" -Icon clone -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Cards" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Cards are a convenient means of displaying content composed of different types of objects. They’re also well-suited for presenting similar objects whose size or supported actions can vary considerably, like photos with captions of variable length."
            }
            
            New-UDHeading -Size 3 -Content "Basic Card" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDCCard -Title 'Card Title' -Content {
                    New-UDParagraph -Text 'I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'
                } -Links @(
                    New-UDLink -Text 'This is a link' -Url '#!'
                    New-UDLink -Text 'This is a link' -Url '#!'
                ) -Size 'small'
            }

            New-UDHeading -Size 3 -Content "Image Card" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Here is the standard card with an image thumbnail."
            }

            New-UDExample -Example {
                New-UDCCard -Title 'Card Title' -Image (New-UDCImage -Url 'http://materializecss.com/images/sample-1.jpg') -Content {
                    'I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'
                } -Links @(
                    New-UDLink -Text 'This is a link' -Url '#!'
                    New-UDLink -Text 'This is a link' -Url '#!'
                ) -Size 'small'
            }

            New-UDHeading -Size 3 -Content "Reveal" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Here you can add a card that reveals more information once clicked. "
            }

            New-UDExample -Example {
                New-UDCCard -Title 'Card Title' -Image (New-UDCImage -Url 'http://materializecss.com/images/sample-1.jpg' -Attributes @{className = 'activator'}) -Content {
                    'Here is some basic text'
                } -Reveal {
                    "Here is some more information about this product that is only revealed once clicked on."
                } -RevealTitle 'Reveal Title' -Size 'small'
            }
        }
    }
}
