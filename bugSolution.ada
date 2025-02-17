```ada
function Checked_Conversion(Source : in Integer) return Float is
   Result : Float;
begin
   if Source >= Float'First and Source <= Float'Last then
      Result := Float(Source);
   else
      raise Constraint_Error;
   end if;
   return Result;
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Conversion Error: Value out of range");
      return 0.0; -- Or handle the error appropriately
end Checked_Conversion;

procedure Main is
   X : Integer := 10;
   Y : Float;
begin
   Y := Checked_Conversion(X);
   Ada.Text_IO.Put_Line("Y = " & Float'Image(Y));
   --Test boundary conditions for better coverage
   X := Integer'Last;
   Y := Checked_Conversion(X);
   Ada.Text_IO.Put_Line("Y = " & Float'Image(Y));
   X := Integer'First;
   Y := Checked_Conversion(X);
   Ada.Text_IO.Put_Line("Y = " & Float'Image(Y));
end Main;
```