with Ada.Text_IO; use Ada.Text_IO;

procedure Loops is
begin
   for I in 1 .. 5 loop
      Put_Line ("Iteração: " & Integer'Image(I));
   end loop;
end Loops;
