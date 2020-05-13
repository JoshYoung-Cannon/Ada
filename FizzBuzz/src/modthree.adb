with Ada.Text_IO; use Ada.Text_IO;
package body modThree is

   function modThree (i : Integer) return Boolean is
   begin
      if i mod 3 = 0 then
         return True;
      else
         return False;
      end if;
   end modThree;
   
end modThree;
