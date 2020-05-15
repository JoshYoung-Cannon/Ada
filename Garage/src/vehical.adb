package body Vehical is

   function set_bill (self : in out car) return Integer is
   begin
      self.bill := 100*self.doors;
   end set_bill;
      
   function set_bill (self : in out motorbike) return Integer is
   begin
      self.bill := 10*self.cc;
   end set_bill;   
         
   function set_bill (self : in out plane) return Integer is
   begin
      self.bill := 1000*self.engines;
   end set_bill;

   function add_vehical (current_garage : garage_arr; doors : num_of_doors) return garage_arr is
      updated_garage : garage_arr(current_garage'First..current_garage'Last+1) := current_garage;
      door_total : Integer;
      new_car : car;
   begin
      case doors is
         when two =>
            door_total := 2;
         when four =>
            door_total := 4;
      end case;
      
      new_car := new car(id => updated_garage, vehical_type => "car", doors => door_total);
      new_car := set_bill(new_car);
      
      updated_garage(updated_garage'Last) := new_car;
      
      return updated_garage;
   end add_vehical;
   
   
--     function add_vehical (current_garage : garage_arr; cc : cc_values) return garage_arr is
--     
--     
--     function add_vehical (current_garage : garage_arr; engines : num_of_engines) return garage_arr is
   
   procedure get_bill (self : vehical) is
   begin
      null;
   end get_bill;
   
end Vehical;
