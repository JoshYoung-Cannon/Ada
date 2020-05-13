with modFive; use modFive;
with modThree; use modThree;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   divByFive : Boolean;
   divByThree : Boolean;

begin
   for i in 1..100 loop

      divByFive := modFive.modFive(i);
      divByThree := modThree.modThree(i);

      if divByThree and divByFive then
         Put_Line(" FizzBuzz");
      elsif divByThree then
         Put_Line(" Fizz");
      elsif divByFive then
         Put_Line(" Buzz");
      else
         Put_Line(Integer'Image(i));
      end if;

   end loop;
end Main;
