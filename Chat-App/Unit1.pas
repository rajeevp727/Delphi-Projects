unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unit2, unit3, unit4;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btnLogin: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Label5Click(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  with Form2.ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from userList where userName = :a');
    Parameters.ParamByName('a').Value:= Edit1.Text;
    Open;
    if not IsEmpty  then
    begin
    ShowMessage('Logging in...');
    Self.Hide;
    Form3.Show;
    end
    else
    ShowMessage('Invalid username...');
    ExecSQL;
    ShowMessage('Welcome '+Edit1.Text);
  end;
end;


procedure TForm1.FormShow(Sender: TObject);
begin
//  Self.Hide;
  Form4.ShowModal;
//  self
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
    Self.Hide;
    Form2.Show;
end;

end.
