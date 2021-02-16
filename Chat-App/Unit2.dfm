object Form2: TForm2
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form2'
  ClientHeight = 521
  ClientWidth = 794
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 280
    Top = 202
    Width = 52
    Height = 13
    Caption = 'User Name'
  end
  object Label2: TLabel
    Left = 286
    Top = 230
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 294
    Top = 258
    Width = 38
    Height = 13
    Caption = 'Email ID'
  end
  object edtUserName: TEdit
    Left = 340
    Top = 199
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 340
    Top = 226
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtEmail: TEdit
    Left = 340
    Top = 254
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnRRegister: TButton
    Left = 294
    Top = 281
    Width = 167
    Height = 25
    Caption = 'Register'
    TabOrder = 3
    OnClick = btnRRegisterClick
  end
  object btnLogin: TButton
    Left = 294
    Top = 312
    Width = 167
    Height = 25
    Caption = 'Login'
    TabOrder = 4
    OnClick = btnLoginClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Delphi@123;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=Chatapp;Data Source=DESKTOP-F9IN6D' +
      'F'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 472
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from userList')
    Left = 648
    Top = 64
  end
end
