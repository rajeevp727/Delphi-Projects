unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Unit2, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdMessage, EASendMailObjLib_TLB;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnRegister: TButton;
    btnLogin: TButton;
    Panel2: TPanel;
    Label4: TLabel;
    edtUserName: TEdit;
    edtPassword: TEdit;
    btnRegister1: TButton;
    Panel3: TPanel;
    Label5: TLabel;
    edtusername1: TEdit;
    edtPassword1: TEdit;
    btnLogin1: TButton;
    Panel4: TPanel;
    btnLoginn: TButton;
    edtToMail: TEdit;
    edtSubject: TEdit;
    btnSendMail: TButton;
    Memo1: TMemo;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegister1Click(Sender: TObject);
    procedure btnLogin1Click(Sender: TObject);
    procedure btnLoginnClick(Sender: TObject);
    procedure btnSendMailClick(Sender: TObject);

    procedure Gmail(usrname, pswd, toMail, Subject, Message: string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLogin1Click(Sender: TObject);
begin
  with DataModule2.ADOQry_Login do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from userlist where Username = ''' +edtusername1.Text +
              ''' and Password = '''+edtPassword1.Text + ''' ');
    Open;
    if not Eof then
      begin
        Panel4.Show;
        Panel4.Align:=alClient;
        Label6.Caption:= 'Wlecome "'+ edtusername1.Text+ '"';
      end
    else
      ShowMessage('Invalid Username or password.. Try again');
  end;
end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  Panel3.Show;
  Panel3.Align:= alClient;
  Memo1.Lines.Clear;
end;

procedure TForm1.btnLoginnClick(Sender: TObject);
begin
  Panel2.Hide;
  Panel1.Hide;
  Panel3.Show;
  Panel3.Align:=alClient;
end;

procedure TForm1.btnRegisterClick(Sender: TObject);
begin
  Panel1.Hide;
  Panel2.Show;
  btnLoginn.Hide;
  Panel2.Align:= alClient;
end;

procedure TForm1.btnSendMailClick(Sender: TObject);
var
  userName, password, to_mail, subj, message: string;
  port: Integer;
begin
   userName:= edtusername1.Text;
   password:= edtPassword1.Text;
   to_mail:= edtToMail.Text;
   subj:= edtSubject.Text;
   message:= Memo1.Lines.Text;

  Gmail(userName, password, to_mail, subj, message);

end;

procedure TForm1.btnRegister1Click(Sender: TObject);
var name: string;
begin
    name:= edtUserName.Text;
//    if (DataModule2.ADOQry_Register.FieldByName('Username').ToString = edtUserName.text) then
//    ShowMessage('Username already exists.. please try something else..')
//    else
//    begin
      Unit2.DataModule2.ADOQry_Register.Close;
      Unit2.DataModule2.ADOQry_Register.SQL.Clear;
      Unit2.DataModule2.ADOQry_Register.SQL.Add('insert into userList(Username, Password) values(:a, :b)');
      Unit2.DataModule2.ADOQry_Register.Parameters.ParamByName('a').Value:= Trim(edtusername.Text);
      Unit2.DataModule2.ADOQry_Register.Parameters.ParamByName('b').Value:= Trim(edtPassword.Text);
      Unit2.DataModule2.ADOQry_Register.ExecSQL;

      ShowMessage('Record inserted Successfully..');
      btnLoginn.Show;
      Panel3.Hide;

      Panel1.Show;
      Panel1.Align:= alClient;
//    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
WindowState:= wsMaximized;
  Panel1.Show;
  Panel2.Hide;
  Panel3.Hide;
  Panel4.Hide;
end;

procedure TForm1.Gmail(usrname, pswd, toMail, Subject, Message: string);
var
  SMTP: Tmail;
  status: boolean;
begin
  SMTP:= TMail.Create(nil);
  SMTP.LicenseCode:= 'TryIt';

  SMTP.FromAddr:= edtusername1.Text;
  SMTP.AddRecipientEx(edtToMail.Text, 0);
  smtp.Password:= '';

  SMTP.Subject:= Subject;
  SMTP.BodyText:= Message; //'This is a demo mail.. Hve fun if received...';
  SMTP.ServerAddr:= 'smtp.gmail.com';
  SMTP.ServerPort:= 465;
  SMTP.ConnectType:= 1;

  SMTP.UserName:= usrname;  //'mrrajeev18@gmail.com';
  SMTP.Password:= 'bsiw vbet xmcf ldcn';

  if ( SMTP.SendMail=1 ) then
  begin
    ShowMessage('Mail sent Successfully');
    status:= True;

    DataModule2.ADOQry_Error.Close;
        DataModule2.ADOQry_Error.SQL.Clear;
        DataModule2.ADOQry_Error.SQL.Add('insert into mailInfo values(:a, :b, :c, :d)');
        DataModule2.ADOQry_Error.Parameters.ParamByName('a').Value:= Trim(edtToMail.Text);
        DataModule2.ADOQry_Error.Parameters.ParamByName('b').Value:= Trim(edtSubject.Text);
        DataModule2.ADOQry_Error.Parameters.ParamByName('c').Value:= status.ToInteger;
        DataModule2.ADOQry_Error.Parameters.ParamByName('d').Value:= Now;
        DataModule2.ADOQry_Error.ExecSQL;
        ShowMessage('Success Case..Data inserted into Serevr...');

  end
  else
  status:= False;
      begin
        DataModule2.ADOQry_Error.Close;
        DataModule2.ADOQry_Error.SQL.Clear;
        DataModule2.ADOQry_Error.SQL.Add('insert into mailInfo values(:a, :b, :c, :d)');
        DataModule2.ADOQry_Error.Parameters.ParamByName('a').Value:= Trim(edtToMail.Text);
        DataModule2.ADOQry_Error.Parameters.ParamByName('b').Value:= Trim(edtSubject.Text);
        DataModule2.ADOQry_Error.Parameters.ParamByName('c').Value:= status.ToInteger;
        DataModule2.ADOQry_Error.Parameters.ParamByName('d').Value:= Now;
        DataModule2.ADOQry_Error.ExecSQL;
        ShowMessage('Failure Case...Data inserted into Serevr...');
      end;
end;

end.
