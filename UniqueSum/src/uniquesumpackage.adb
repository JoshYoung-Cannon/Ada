with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body uniqueSumPackage is

   procedure unique_sum (a, b, c : Integer) is
      sum : Integer := 0;
   begin
      if a = b and a = c then
         Put_Line("Sum = 0");
      else
         sum := a + b + c;
         if a = b or a = c then
            sum := sum - (2 * a);
         elsif b = c then
            sum := sum - (2 * b);
         end if;
         Put_Line("Sum = " & Integer'Image(sum));
      end if;
   end unique_sum;
   
   procedure print_arr (inputs : input_args) is
   begin
      for I of inputs loop
         Put(Integer'Image(I) & ", ");
      end loop;
      Put_Line("");
   end print_arr;
   
   function remove_dups (inputs : in out input_args; index : Integer; dup : Integer) return input_args is
   begin
      for I in index..inputs'Last loop
         if inputs(I) = dup then
            inputs(I) := 0;
         end if;
      end loop;
      return inputs;
   end remove_dups;
   
   procedure unique_sum (inputs : input_args) is
      current : input_args := inputs;
      dups_removed : Boolean;
      sum : Integer := 0;
   begin
      for I in current'First..current'Last-1 loop
         if current(I) /= 0 then
            dups_removed := False;
            for J in I+1..current'Last loop
               Put_Line("comparing " & Integer'Image(I) & " to " & Integer'Image(J));
               print_arr(current);
               if current(I) = current(J) then
                  current := remove_dups(inputs => current, index => I, dup => current(I));
                  dups_removed := True;
               end if;
               exit when dups_removed = True;
            end loop;
         end if;
      end loop;
      
      Put("Sum of ");
      for I in current'Range loop
         sum := sum + current(I);
         if I /= current'Last then
            Put(Integer'Image(current(I)) & " +");
         else
            Put(Integer'Image(current(I)) & " =");
         end if;
      end loop;
      Put_Line(Integer'Image(sum));
   end unique_sum;
                     
   function get_inputs return input_args is
      inputs : input_args;
   begin
--        Put_Line("Please enter the 1st number: ");
--        Get(inputs(0));
--        Put_Line("Please enter the 2nd number: ");
--        Get(inputs(1));
--        Put_Line("Please enter the 3rd number: ");
--        Get(inputs(2));
      for I in inputs'Range loop
         Put_Line("Please enter value for index " & Integer'Image(I) & ": ");
         Get(inputs(I));
      end loop;
      return inputs;
   end get_inputs;

end uniqueSumPackage;
