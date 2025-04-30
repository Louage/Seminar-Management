codeunit 123456746 "SpyRegLineExistance" implements IRegistrationLineExistance
{
    var
        _visited: Boolean;

    procedure GetVisited(): Boolean
    begin
        exit(_visited);
    end;

    procedure HandleLinesExist(var SeminarRegistrationLine: Record "Seminar Registration Line ASD"; SeminarNo: code[20])
    begin
        _visited := true;
    end;
}
