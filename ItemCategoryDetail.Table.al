// This is the definition for our new table.
// It will store the custom categories that users can create.
table 50100 "Item Category Detail"
{
    Caption = 'Item Category Detail';
    DataClassification = ToBeClassified;

    fields
    {
        // Field 1: The Primary Key for the table.
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        // Field 2: A longer description for the category.
        field(2; "Description"; Text[100])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        // Defines the primary key for the table.
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
