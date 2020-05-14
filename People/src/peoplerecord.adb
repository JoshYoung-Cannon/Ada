with Ada.Strings;           use Ada.Strings;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;

package body peopleRecord is

   procedure Print_Person (Self : in person) is
   begin
      Put_Line(To_String(Self.Name) & " is a " & Integer'Image(Self.Age) & " year old " & To_String(Self.Job_Title) & ".");
   end Print_Person;


end peopleRecord;
