// This object extends the existing "Sales Line" table.
tableextension 50101 "Sales Line Ext" extends "Sales Line"
{
    fields
    {
        // Add our new field to the Sales Line table structure.
        field(50100; "Item Category Detail Code"; Code[20])
        {
            Caption = 'Item Category Detail Code';
            DataClassification = ToBeClassified;
            // This field should not be editable by the user directly.
            // It gets its value from the item.
            Editable = false;
        }
    }

    // The invalid "modify" block has been removed from this file.
    // The trigger logic has been moved to the Sales Subform page extension, which is the correct place for it.
}
