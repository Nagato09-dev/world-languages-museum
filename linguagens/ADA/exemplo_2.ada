with Ada.Text_IO; use Ada.Text_IO;

procedure Variables is
   X : Integer := 42;
   F : Float := 3.14;
   S : String := "Ada Language";
begin
   Put_Line ("Inteiro: " & Integer'Image(X));
   Put_Line ("Float: " & Float'Image(F));
   Put_Line ("String: " & S);
end Variables;
