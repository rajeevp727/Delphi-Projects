unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    edtUserName: TEdit;
    Label2: TLabel;
    edtPassword: TEdit;
    Label3: TLabel;
    edtEmail: TEdit;
    btnRRegister: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    btnLogin: TButton;
    procedure btnRRegisterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses unit1;
{$R *.dfm}

procedure TForm2.btnLoginClick(Sender: TObject);
begin
  self.hide;
  Form1.Show;
end;

procedure TForm2.btnRRegisterClick(Sender: TObject);
begin
  if (edtUserName.Text = '') or (edtPassword.Text = '') or (edtEmail.Text = '') then
  ShowMessage('Please fill your detials...')
  else
  begin
    with ADOQuery1 do
    begin
      close;
      SQL.Clear;
      sql.Add('insert into userList values(:a, :b, :c)');
      Parameters.ParamByName('a').Value:= edtUserName.Text;
      Parameters.ParamByName('b').Value:= edtPassword.Text;
      Parameters.ParamByName('c').Value:= edtEmail.Text;


//      if (Parameters.ParamByName('a').Value = edtUserName.Text ) then
//      begin
//      ShowMessage('Username already exists, try different username');
//      end
//      else
//      begin
        ExecSQL;
        ShowMessage('Record Inserted successfully');
        btnLogin.Show;
//      end;
    end;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  btnLogin.Hide;
end;

end.
