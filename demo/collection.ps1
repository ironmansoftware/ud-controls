
New-UDPage -Name "Collection" -Icon list -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Content "Collections" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Collections allow you to group list objects together."
            }
            
            New-UDHeading -Size 3 -Content "Basic" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                }
            }
            
            New-UDHeading -Size 3 -Content "Links" -Color '#ee6e73'
            
            New-UDExample -Example {
                New-UDCollection -LinkCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!"
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!" -Active
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!"
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!"
                }
            }

            New-UDHeading -Size 3 -Content "Headers" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                } -Header "First Names"
            }
            
            New-UDHeading -Size 3 -Content "Secondary Content" -Color '#ee6e73'

            New-UDExample -Example {
                New-UDCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" } -SecondaryContent { New-UDIcon -Icon paper_plane }
                    New-UDCollectionItem -Content { "Alvin" } -SecondaryContent { New-UDIcon -Icon paper_plane }
                    New-UDCollectionItem -Content { "Alvin" } -SecondaryContent { New-UDIcon -Icon paper_plane }
                    New-UDCollectionItem -Content { "Alvin" } -SecondaryContent { New-UDIcon -Icon paper_plane }
                } 
            }
        }
    }
}
