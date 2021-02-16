unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit2, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.QuickRep1.DataSet:= ADOQuery1;

  Form2.QRDBText1.DataSet:= ADOQuery1;
  Form2.QRDBText1.DataField:= 'toEmailAddress';

  Form2.QRDBText2.DataSet:= ADOQuery1;
  Form2.QRDBText2.DataField:= 'Subject';

  Form2.QRDBText3.DataSet:= ADOQuery1;
  Form2.QRDBText3.DataField:= 'emailStatus';

  Form2.QRDBText4.DataSet:= ADOQuery1;
  Form2.QRDBText4.DataField:= 'dateTime';

  Form2.QuickRep1.Preview;
end;

end.
