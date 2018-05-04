
New-UDPage -Name "Collection" -Icon list -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Collections" 

            New-UDParagraph -Content {
                "Collections allow you to group list objects together."
            }
            
            New-UDHeading -Size 3 -Text "Basic" 

            New-UDElementExample -Example {
                New-UDCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                }
            }
            
            New-UDHeading -Size 3 -Text "Links" 
            
            New-UDElementExample -Example {
                New-UDCollection -LinkCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!"
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!" -Active
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!"
                    New-UDCollectionItem -Content { "Alvin" } -Url "#!"
                }
            }

            New-UDHeading -Size 3 -Text "Headers" 

            New-UDElementExample -Example {
                New-UDCollection -Content {
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                    New-UDCollectionItem -Content { "Alvin" }
                } -Header { "First Names" }
            }
            
            New-UDHeading -Size 3 -Text "Secondary Content" 

            New-UDElementExample -Example {
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
