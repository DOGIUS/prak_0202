unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, TAGraph,
  TASeries;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  g,n,k,s:double;


implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.ComboBox1Change(Sender: TObject);
begin

     g:=1;
  if ComboBox1.ItemIndex = 1 then
     g:=2;
end;

procedure TForm2.Button1Click(Sender: TObject);
var a,b,k1,y:double;
begin
  n:=StrToInt(Edit2.Text);
   k:=StrToInt(Edit4.Text);
  a:=2;
   b:=5;
   Chart1LineSeries1.Clear();
   Chart1LineSeries1.SeriesColor:=ClRed;
   Chart1LineSeries1.Showlines:=True;
   Chart1LineSeries1.Showpoints:=True;
   k1:=n;
   while k1<=k do
      begin
      if ComboBox1.ItemIndex = 0 then begin
        y:= a*k1 + b;
        Chart1LineSeries1.AddXY(k1,y);
        end;
      if ComboBox1.ItemIndex = 1 then begin
        y:= sin(2*k1);
        Chart1LineSeries1.AddXY(k1,y);
        end;
      k1:=k1+s;
      end;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin


end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
  s:=StrToFloat(Edit3.Text);

end;

end.

