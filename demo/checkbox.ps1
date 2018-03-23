
New-UDPage -Name "Checkbox" -Content {
    New-UDCRow -Columns {
        New-UDCColumn -Content {
            New-UDHeading -Size 1 -Content "Checkboxes" -Color '#ee6e73'

            New-UDParagraph -Content {
                "Use checkboxes when looking for yes or no answers. "
            }
            
            New-UDCheckbox -Label Unchecked
            New-UDCheckbox -Label Checked -Checked
            New-UDCheckbox -Label 'Filled In' -Checked -FilledIn
            New-UDCheckbox -Label 'Disabled' -Checked -FilledIn -Disabled
        }
    }
}
