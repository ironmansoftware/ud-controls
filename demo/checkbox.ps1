
New-UDPage -Name "Checkbox" -Icon check_square -Content {
    New-UDRow -Columns {
        New-UDColumn -Size 12 -Content {
            New-UDHeading -Size 1 -Text "Checkboxes" 

            New-UDParagraph -Content {
                "Use checkboxes when looking for yes or no answers. "
            }
            
            New-UDElementExample -Example {
                New-UDCheckbox -Label Unchecked
                New-UDCheckbox -Label Checked -Checked
                New-UDCheckbox -Label 'Filled In' -Checked -FilledIn
                New-UDCheckbox -Label 'Disabled' -Checked -FilledIn -Disabled
            }

            New-UDHeading -Size 3 -Text "OnChange Event " 

            New-UDElementExample -Example {
                New-UDElement -Id "CheckboxState" -Tag "span" 

                New-UDCheckbox -Id CheckBox -Label "Check me" -OnChange {
                    $Element = Get-UDElement -Id CheckBox
                    Set-UDElement -Id "CheckboxState" -Content $Element.Attributes["checked"]
                }
            }
        }
    }
}
