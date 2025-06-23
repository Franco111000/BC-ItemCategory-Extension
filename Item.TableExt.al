// This object extends the existing "Item" table.
// It adds our new field to it.
tableextension 50100 "ItemExt" extends Item
{
    fields
    {
        // Add a new field to the Item table.
        field(50100; "Item Category Detail Code"; Code[20])
        {
            Caption = 'Item Category Detail Code';
            DataClassification = ToBeClassified;
            
            // This links our new field to the "Item Category Detail" table.
            // This creates the dropdown relationship automatically.
            TableRelation = "Item Category Detail";
        }
    }
}
