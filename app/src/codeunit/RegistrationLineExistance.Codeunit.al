codeunit 123456713 RegistrationLineExistance implements IRegistrationLineExistance
{

    procedure HandleLinesExist(var SeminarRegistrationLine: Record "Seminar Registration Line ASD"; SeminarNo: code[20])
    var
        NothingToPostErr: Label 'There is nothing to post.';
    begin

        SeminarRegistrationLine.SetRange("Document No.", SeminarNo);
        if SeminarRegistrationLine.IsEmpty() then
            Error(NothingToPostErr);
    end;

}