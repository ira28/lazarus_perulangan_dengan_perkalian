unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CBPerkalian: TComboBox;
    EAwal: TEdit;
    EAkhir: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MHasil: TMemo;
    RBFTD: TRadioButton;
    RBFDT: TRadioButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


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



end.

