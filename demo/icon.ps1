
New-UDPage -Name "Icon" -Content {
    New-UDCRow -Columns {
        New-UDCColumn -Content {
            New-UDHeading -Size 1 -Content "Icons" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Universal Dashboard uses FontAwesome icons. "
            }

            New-UDHeading -Size 3 -Content "Full Set of Icons" -Color '#ee6e73'

            New-UDCRow -Columns {
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon user -size 4x
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon linkedin  -size 4x
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon exclamation -size 4x
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon filter -size 4x
                }
            }
            
            New-UDHeading -Size 3 -Content "Sizes" -Color '#ee6e73'
            
            New-UDCRow -Columns {
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon bug -Size ExtraSmall
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon bug -Size 2x
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon bug -Size 3x
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon bug -Size 5x
                }
            }

            New-UDHeading -Size 3 -Content "Colors" -Color '#ee6e73'
            
            New-UDCRow -Columns {
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon user -size 4x -Color green
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon linkedin  -size 4x -Color blue
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon exclamation -size 4x -Color red
                }
                New-UDCColumn -Size 3 -Content {
                    New-UDIcon -Icon filter -size 4x -Color orange
                }
            }
        }
    }
}
