package Vehical is
   
   type vehical is tagged record
      id : Integer;
      vehical_type : String(1..9);
      bill : Integer;
   end record;
   
   type garage_arr is array (Integer range <>) of vehical'Class;
   
   type num_of_doors is (two, four);
   type car is new vehical with record
      doors : Integer;
   end record;
   
   function add_vehical (current_garage : garage_arr; doors : num_of_doors) return garage_arr;
   
   type cc_values is (cc150, cc200, cc250);
   type motorbike is new vehical with record 
      cc : Integer;
   end record;

--     function add_vehical (current_garage : garage_arr; cc : cc_values) return garage_arr;
   
   type num_of_engines is (one, two);
   type plane is new vehical with record
      engines : Integer;
   end record;
   
--     function add_vehical (current_garage : garage_arr; engines : num_of_engines) return garage_arr;
   
   procedure get_bill (self : vehical);
   
private
   function set_bill (self : car) return Integer;
   function set_bill (self : motorbike) return Integer;
   function set_bill (self : plane) return Integer;
   
end Vehical;
