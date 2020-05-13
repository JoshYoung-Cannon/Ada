with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with OverCal;

procedure Main is

   a : Integer;
   b : Integer;
   sumResult : Integer;
   divResult : OverCal.result;

begin
   Put_Line("Please Enter the 1st Number: ");
   Get(a);
   Put_Line("Please Enter the 2nd Number: ");
   Get(b);

   sumResult := OverCal.maths(a, b);
   Put_Line("Sum = " & Integer'Image(sumResult));

   divResult := OverCal.maths(a, b);
   Put_Line("Div = " & OverCal.result'Image(divResult));



end Main;
