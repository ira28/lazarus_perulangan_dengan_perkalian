## Lazarus Perulangan Dengan Perkalian

Prosedur Utama

```pascal
procedure TForm1.Button1Click(Sender: TObject);
var n, awal, akhir : Integer;
begin
  awal:=StrToInt(EAwal.Text);
  akhir:=StrToInt(EAkhir.Text);
  MHasil.Clear;
  begin
    if RBFTD.Checked = True then
       begin
         for n:=awal to akhir do
             MHasil.Lines.Append(IntToStr(n) + ' X ' + CBPerkalian.Text + ' = ' + IntToStr(n*StrToInt(CBPerkalian.Text)))
       end
    else
       begin
         for n:=akhir downto awal do
           MHasil.Lines.Append(IntToStr(n) + ' X ' + CBPerkalian.Text + ' = ' + IntToStr(n*StrToInt(CBPerkalian.Text)));
       end;

  end;
end; 
```

## Tampilan
![enter image description here](https://image.prntscr.com/image/ZSGCTc9oRiyfJA6pZjncsw.png)

**Stay Home Yah 😀**
