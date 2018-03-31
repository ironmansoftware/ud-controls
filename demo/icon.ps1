
New-UDPage -Name "Icon" -Icon smile_o -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Icons" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Universal Dashboard uses FontAwesome icons. "
            }

            New-UDHeading -Size 3 -Content "Full Set of Icons" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDRow -Columns {
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon user -size 4x
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon linkedin  -size 4x
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon exclamation -size 4x
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon filter -size 4x
                    }
                }
            }

            New-UDHeading -Size 3 -Content "Sizes" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDRow -Columns {
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon bug -Size ExtraSmall
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon bug -Size 2x
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon bug -Size 3x
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon bug -Size 5x
                    }
                }
            }
            
            New-UDHeading -Size 3 -Content "Colors" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDRow -Columns {
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon user -size 4x -Color green
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon linkedin  -size 4x -Color blue
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon exclamation -size 4x -Color red
                    }
                    New-UDColumn -Size 1 -Content {
                        New-UDIcon -Icon filter -size 4x -Color orange
                    }
                }
            }
        }
    }
}
