unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  TAGraph, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  g,n,k,s:double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin


end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
   n:=StrToInt(InputBox('Ввод начального значения','Введите начальное значение','0'));
   k:=StrToInt(InputBox('Ввод конечного значения','Введите конечное значение','0'));
   Label2.Caption:=('[ ' + FloatToStr(n) + ' ; ' + FloatToStr(k) + ' ]' );
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
   s:=StrToFloat(InputBox('Ввод шага','Введите шаг','0'));
   Label3.Caption:=('Шаг= ' + FloatToStr(s));
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
var k1,y,a,b:double;
begin
   a:=2;
   b:=5;
   Chart1LineSeries1.Clear();
   Chart1LineSeries1.SeriesColor:=ClRed;
   Chart1LineSeries1.Showlines:=True;
   Chart1LineSeries1.Showpoints:=True;
   k1:=n;
   while k1<=k do
      begin
      if g=1 then begin
        y:= a*k1 + b;
        Chart1LineSeries1.AddXY(k1,y);
        end;
      if g=2 then begin
        y:= sin(2*k1);
        Chart1LineSeries1.AddXY(k1,y);
        end;
      k1:=k1+s;
      end;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  g:=1;
  Label1.Caption:=('y=ax+b');
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  g:=2;
  Label1.Caption:=('y=log(2x)');

end;

end.

