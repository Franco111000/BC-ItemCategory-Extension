// This codeunit will listen for events happening in the Sales Line table.
codeunit 50100 "Sales Line Events"
{
    // This is an Event Subscriber. It listens for a specific event to happen.
    // It listens to the OnAfterValidateEvent for the "No." field on the "Sales Line" table.
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'No.', false, false)]
    local procedure OnAfterValidateSalesLineNo(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
    var
        ItemRec: Record Item;
    begin
        // This is the same logic as before, just in a more robust location.
        if Rec.Type = Rec.Type::Item then begin
            if Rec."No." <> '' then begin
                if ItemRec.Get(Rec."No.") then
                    Rec."Item Category Detail Code" := ItemRec."Item Category Detail Code"
                else
                    Rec."Item Category Detail Code" := '';
            end else
                Rec."Item Category Detail Code" := '';
        end;
    end;
}
