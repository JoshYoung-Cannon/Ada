with Ada.Text_IO; use Ada.Text_IO;

package uniqueSumPackage is

   type input_args is array (0..4) of Integer;
   
   procedure unique_sum (a, b, c : Integer);
   
   procedure unique_sum (inputs : input_args);
   
   function get_inputs return input_args;
   
private
   
   function remove_dups (inputs : in out input_args; index : Integer; dup : Integer) return input_args;
   
   procedure print_arr (inputs : input_args);

end uniqueSumPackage;
