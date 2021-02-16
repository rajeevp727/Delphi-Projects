object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form1'
  ClientHeight = 554
  ClientWidth = 783
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 528
    Width = 777
    Height = 23
    Align = alBottom
    Alignment = taCenter
    Caption = 'Chat App'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 77
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 240
    Top = 192
    Width = 52
    Height = 13
    Alignment = taCenter
    Caption = 'User Name'
  end
  object Label3: TLabel
    Left = 246
    Top = 240
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label4: TLabel
    Left = 206
    Top = 392
    Width = 164
    Height = 19
    Caption = 'Don'#39't have an account?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 384
    Top = 392
    Width = 57
    Height = 19
    Cursor = crHandPoint
    Caption = 'Register'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = Label5Click
  end
  object Label6: TLabel
    Left = 455
    Top = 392
    Width = 31
    Height = 19
    Caption = 'here'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    AlignWithMargins = True
    Left = 313
    Top = 189
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 313
    Top = 237
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 313
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Login'
    Default = True
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
