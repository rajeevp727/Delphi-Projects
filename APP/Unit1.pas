unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ClipBrd, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    Exit1: TMenuItem;
    Help1: TMenuItem;
    AboutUs1: TMenuItem;
    procedure Save1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure AboutUs1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sd: TSaveDialog;
  od: TOpenDialog;
  file1, file2: File;
  text: string;

implementation

{$R *.dfm}

procedure TForm1.AboutUs1Click(Sender: TObject);
begin
  ShowMessage('This is a demo App');
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  od:= TOpenDialog.Create(Self);
  od.Filter:='Any FIle (*.*)';
  if od.Execute = True then
    ShowMessage('file'+ od.FileName+' Opened')
  else
    ShowMessage('File open Cancelled');
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
   sd:= TSaveDialog.Create(Self);
   sd.Filter:= 'Any File (*.*)';
   if sd.Execute = True then
   begin
     ShowMessage('file : '+ sd.FileName+' Saved');
   end
   else
   ShowMessage('File Save Cancelled');

end;

end.
