unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  firstNumberStr: string = '';
  secondNumberStr: string = '';
  act: string = '';
  firstNumberDouble: double = 0;
  secondNumberDouble: double = 0;
  resultNumberDouble: double = 0;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '8';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '4';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '5';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '6';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '1';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '2';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + ',';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  firstNumberStr := Edit1.Text;
  firstNumberDouble := firstNumberStr.ToDouble;
  Label1.Caption := Edit1.Text + '+';
  Edit1.Text := '';
  act := '+';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  firstNumberStr := Edit1.Text;
  firstNumberDouble := firstNumberStr.ToDouble;
  Label1.Caption := Edit1.Text + '-';
  Edit1.Text := '';
  act := '-';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  firstNumberStr := Edit1.Text;
  firstNumberDouble := firstNumberStr.ToDouble;
  Label1.Caption := Edit1.Text + '*';
  Edit1.Text := '';
  act := '*';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  firstNumberStr := Edit1.Text;
  firstNumberDouble := firstNumberStr.ToDouble;
  Label1.Caption := Edit1.Text + '/';
  Edit1.Text := '';
  act := '/';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  secondNumberStr := Edit1.Text;
  secondNumberDouble := secondNumberStr.ToDouble;
  if act = '+' then
    resultNumberDouble := firstNumberDouble + secondNumberDouble;
  if act = '-' then
    resultNumberDouble := firstNumberDouble - secondNumberDouble;
  if act = '*' then
    resultNumberDouble := firstNumberDouble * secondNumberDouble;
  if act = '/' then
    resultNumberDouble := firstNumberDouble / secondNumberDouble;
  Edit1.Text := resultNumberDouble.ToString;
  Label1.Caption := '';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Edit1.Text := '';
  Label1.Caption := '';
  firstNumberDouble := 0;
  secondNumberDouble := 0;
  firstNumberStr := '';
  secondNumberStr := '';
  act := '';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  Edit1.Text := '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '7';
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  secondNumberStr := Edit1.Text;
  secondNumberDouble := secondNumberStr.ToDouble;
  secondNumberDouble := -secondNumberDouble;
  Edit1.Text := secondNumberDouble.ToString;
  secondNumberDouble := 0;
  secondNumberStr := '';
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  secondNumberStr := Edit1.Text;
  secondNumberDouble := secondNumberStr.ToDouble;
  secondNumberDouble := sqrt(secondNumberDouble);
  Edit1.Text := secondNumberDouble.ToString;
  secondNumberDouble := 0;
  secondNumberStr := '';
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  secondNumberStr := Edit1.Text;
  secondNumberDouble := secondNumberStr.ToDouble;
  secondNumberDouble := (firstNumberDouble / 100) * secondNumberDouble;
  Edit1.Text := secondNumberDouble.ToString;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  secondNumberStr := Edit1.Text;
  secondNumberDouble := secondNumberStr.ToDouble;
  secondNumberDouble := 1 / secondNumberDouble;
  Edit1.Text := secondNumberDouble.ToString;
  secondNumberDouble := 0;
  secondNumberStr := '';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '3';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '9';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '0';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Caption := '';
end;

end.
