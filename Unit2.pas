unit Unit2;


interface
function VerifierEntrer(Edit9,Edit10,Edit11: string): Boolean;
implementation
uses
Character;
function VerifierEntrer(Edit9,Edit10,Edit11: string): Boolean;
var
CharIndex:integer;

begin
Result:=False;
  for CharIndex := 1 to Length(Edit9) do
  begin
    if Edit9[CharIndex].IsDigit then
    begin
      Result := True;
      Break;
    end;

  end;
  for CharIndex := 1 to Length(Edit10) do
  begin
    if Edit10[CharIndex].IsDigit then
    begin
      Result := True;
      Break;
    end;
  end;
  for CharIndex := 1 to Length(Edit11) do
  begin
    if Edit11[CharIndex].IsDigit then
    begin
      Result := True;
      Break;
    end;
  end;
end;

end.
