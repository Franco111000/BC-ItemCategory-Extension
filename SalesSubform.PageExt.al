// This object extends the "Sales Order Subform" page (page 46).
// This is the page that shows the lines on a Sales Order.
pageextension 50101 "Sales Subform Ext" extends "Sales Order Subform"
{
    layout
    {
        // Find the existing "Description" field in the grid...
        addafter(Description)
        {
            // ...and add our new field as a new column right after it.
            // All trigger logic has been removed because the "Sales Line Events"
            // codeunit now handles the automation correctly.
            field("Item Category Detail Code"; Rec."Item Category Detail Code")
            {
                ApplicationArea = All;
                ToolTip = 'Shows the custom item category detail code from the item.';
            }
        }
    }
}
