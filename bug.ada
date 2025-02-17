```ada
function Unchecked_Conversion(Source : in Integer) return Float is
begin
  return Float(Source);
end Unchecked_Conversion;

procedure Main is
   X : Integer := 10;
   Y : Float;
begin
   Y := Unchecked_Conversion(X);
   Ada.Text_IO.Put_Line("Y = " & Float'Image(Y));
end Main;
```