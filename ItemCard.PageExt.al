// This object extends the existing "Item Card" page (page 30).
// It adds our new field to the user interface.
pageextension 50100 "Item Card Ext" extends "Item Card" // "Item Card" is page 30
{
    layout
    {
        // Find the existing "Item Category Code" field...
        addafter("Item Category Code") 
        {
            // ...and add our new field right after it.
            field("Item Category Detail Code"; Rec."Item Category Detail Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the custom item category detail code for this item.';
            }
        }
    }
}
