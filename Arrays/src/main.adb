with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type myArrayType is array (0..9) of Integer;
   myArray : myArrayType;

begin
   for I in myArray'First..myArray'Last loop
      Put_Line(Integer'Image(I));
      myArray(I) := I * (I + 9);
   end loop;

   for I of myArray loop
      Put_Line(Integer'Image(I));
   end loop;

   for I in myArray'First..myArray'Last loop
      if I = myArray'Last then
         Put_Line(Integer'Image(myArray(myArray'First) + myArray(I)));
      else
         Put_Line(Integer'Image(myArray(I) + myArray(I + 1)));
      end if;
   end loop;
end Main;
