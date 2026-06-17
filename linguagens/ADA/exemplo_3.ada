with Ada.Text_IO; use Ada.Text_IO;

procedure Conditional is
   Val : Integer := 15;
begin
   if Val > 10 then
      Put_Line ("Maior que 10");
   else
      Put_Line ("Menor ou igual a 10");
   end if;
end Conditional;
