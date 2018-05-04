
New-UDPage -Name "Preloader" -Icon spinner -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Preloaders" 

            New-UDParagraph -Content {
                "If you have content that will take a long time to load, you should give the user feedback. For this reason we provide a number activity + progress indicators."
            }
            
            New-UDHeading -Size 3 -Text "Linear" 

            New-UDParagraph -Content {
                "There are a couple different types of linear progress bars."
            }

            New-UDHeading -Size 5 -Text "Determinate"

            New-UDElementExample -Example {
                New-UDPreloader -PercentComplete 70 
            }

            New-UDHeading -Size 5 -Text "Indeterminate"

            New-UDElementExample -Example {
                New-UDPreloader 
            }

            New-UDHeading -Size 3 -Text "Circular" 

            New-UDParagraph -Content {
                "There are 4 colors and 3 sizes of circular spinners."
            }

            New-UDElementExample -Example {
                New-UDRow -Columns {
                    New-UDColumn -Size 4 -Content {
                        New-UDPreloader -Circular -Color blue -Size large
                    }
                    New-UDColumn -Size 4 -Content {
                        New-UDPreloader -Circular -Color red -Size medium
                    }
                    New-UDColumn -Size 4 -Content {
                        New-UDPreloader -Circular -Color green -Size small
                    }
                }
            }
        }
    }
}
