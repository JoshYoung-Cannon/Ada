with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings;           use Ada.Strings;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with peopleRecord; use peopleRecord;

procedure Main is

   A : person := (Name => To_Unbounded_String("Bob"), Age => 54, Job_Title => To_Unbounded_String("Zoo Keeper"));
   B : person := (Name => To_Unbounded_String("Steve"), Age => 23, Job_Title => To_Unbounded_String("Plumber"));

   C : Unbounded_String := To_Unbounded_String("Bob");

   arrayList : person_array (0..1) :=
     (0 => A, 1 => B);

begin

   Put_Line("Please Enter a Name: ");

   for I of arrayList loop
      Print_Person(I);
      if I.Name = C then
         Put_Line("This is the droid you are looking for");
      end if;
   end loop;

   Put_Line("End");

end Main;
