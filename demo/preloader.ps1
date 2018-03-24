
New-UDPage -Name "Preloader" -Icon spinner -Content {
    New-UDCRow -Columns {
        New-UDCColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Preloaders" -Color '#ee6e73'

            New-UDParagraph -Content {
                "If you have content that will take a long time to load, you should give the user feedback. For this reason we provide a number activity + progress indicators."
            }
            
            New-UDHeading -Size 3 -Content "Linear" -Color '#ee6e73'

            New-UDParagraph -Content {
                "There are a couple different types of linear progress bars."
            }

            New-UDHeading -Size 5 -Content "Determinate"

            New-UDExample -Example {
                New-UDPreloader -PercentComplete 70 
            }

            New-UDHeading -Size 5 -Content "Indeterminate"

            New-UDExample -Example {
                New-UDPreloader 
            }

            New-UDHeading -Size 3 -Content "Circular" -Color '#ee6e73'

            New-UDParagraph -Content {
                "There are 4 colors and 3 sizes of circular spinners."
            }

            New-UDExample -Example {
                New-UDCRow -Columns {
                    New-UDCColumn -Size 4 -Content {
                        New-UDPreloader -Circular -Color blue -Size large
                    }
                    New-UDCColumn -Size 4 -Content {
                        New-UDPreloader -Circular -Color red -Size medium
                    }
                    New-UDCColumn -Size 4 -Content {
                        New-UDPreloader -Circular -Color green -Size small
                    }
                }
            }
        }
    }
}
