unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, StrUtils, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
 PageControl1.Align:= alClient;
 PageControl1.Pages[0].Caption:= 'Chats';
 PageControl1.Pages[1].Caption:= 'Status';

 Label1.Caption:= 'Welcome '+Form1.Edit1.Text;
 end;

end.
