with Ada.Text_IO; use Ada.Text_IO;

procedure Procedures is
   function Add (A, B : Integer) return Integer is
   begin
      return A + B;
   end Add;
   
   Result : Integer;
begin
   Result := Add(10, 20);
   Put_Line ("Resultado: " & Integer'Image(Result));
end Procedures;
