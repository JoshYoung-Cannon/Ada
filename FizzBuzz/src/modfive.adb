with Ada.Text_IO; use Ada.Text_IO;
package body modFive is

   function modFive (i : Integer) return Boolean is
   begin
      if i mod 5 = 0 then
         return True;
      else
         return False;
      end if;
   end modFive;
   
end modFive;
