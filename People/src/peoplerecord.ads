with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package peopleRecord is

   type person is record
      
      Name : Unbounded_String;
      Age : Integer;
      Job_Title : Unbounded_String;
      
   end record;

   type person_array is array (Integer range <>) of person;
   
   procedure Print_Person(Self : in person);

end peopleRecord;
