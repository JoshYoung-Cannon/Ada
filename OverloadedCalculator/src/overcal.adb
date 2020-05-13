package body OverCal is

   function maths (a, b : Integer) return Integer is
   begin
      return a + b;
   end maths;
   
   function maths (a, b : Integer) return result is
   begin 
      if b = 0 then
         return 0.0;
      else
         return result(a) / result(b);
      end if;
   end maths;

end OverCal;
