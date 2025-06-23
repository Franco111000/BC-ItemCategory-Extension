// This is the page that will display the records from our new table.
page 50100 "Item Category Detail List"
{
    PageType = List;
    SourceTable = "Item Category Detail";
    Caption = 'Item Category Detail List';
    UsageCategory = Lists;
    ApplicationArea = All;
    // We link a card page here to allow creating/editing single records.
    CardPageId = "Item Category Detail Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the code for the item category detail.';
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ToolTip = 'Specifies the description of the item category detail.';
                    ApplicationArea = All;
                }
            }
        }
    }
}

// A simple card page to create/edit a single record.
page 50101 "Item Category Detail Card"
{
    PageType = Card;
    SourceTable = "Item Category Detail";
    Caption = 'Item Category Detail Card';
    ApplicationArea = All;
    UsageCategory = None;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the code for the item category detail.';
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ToolTip = 'Specifies the description of the item category detail.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
