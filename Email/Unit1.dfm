object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 574
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 574
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 1
      Width = 189
      Height = 25
      Caption = 'Welcome to the app'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 94
      Width = 154
      Height = 25
      Caption = 'Like to Register?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 211
      Width = 141
      Height = 25
      Caption = 'Want to Login?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnRegister: TButton
      Left = 223
      Top = 97
      Width = 75
      Height = 25
      Caption = 'Register'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnRegisterClick
    end
    object btnLogin: TButton
      Left = 223
      Top = 214
      Width = 75
      Height = 25
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnLoginClick
    end
  end
  object Panel2: TPanel
    Left = 56
    Top = 40
    Width = 569
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 96
      Top = 3
      Width = 158
      Height = 25
      Caption = 'Register Yourself'
    end
    object edtUserName: TEdit
      Left = 96
      Top = 56
      Width = 225
      Height = 33
      TabOrder = 0
      TextHint = 'UserName'
    end
    object edtPassword: TEdit
      Left = 96
      Top = 103
      Width = 225
      Height = 33
      TabOrder = 1
      TextHint = 'Password'
    end
    object btnRegister1: TButton
      Left = 114
      Top = 163
      Width = 75
      Height = 25
      Caption = 'Register'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnRegister1Click
    end
    object btnLoginn: TButton
      Left = 223
      Top = 161
      Width = 75
      Height = 25
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnLoginnClick
    end
  end
  object Panel3: TPanel
    Left = 56
    Top = 246
    Width = 569
    Height = 44
    TabOrder = 2
    object Label5: TLabel
      Left = 90
      Top = 12
      Width = 99
      Height = 25
      Caption = 'Login User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtusername1: TEdit
      Left = 85
      Top = 43
      Width = 156
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'UserName'
    end
    object edtPassword1: TEdit
      Left = 85
      Top = 91
      Width = 156
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      TextHint = 'Password'
    end
    object btnLogin1: TButton
      Left = 85
      Top = 152
      Width = 156
      Height = 25
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnLogin1Click
    end
  end
  object Panel4: TPanel
    Left = 56
    Top = 296
    Width = 569
    Height = 113
    TabOrder = 3
    object Label6: TLabel
      Left = 114
      Top = 11
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtToMail: TEdit
      Left = 136
      Top = 205
      Width = 185
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'To Mail'
    end
    object edtSubject: TEdit
      Left = 136
      Top = 232
      Width = 185
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Subject'
    end
    object btnSendMail: TButton
      Left = 191
      Top = 358
      Width = 75
      Height = 25
      Caption = 'Send Mail'
      TabOrder = 2
      OnClick = btnSendMailClick
    end
    object Memo1: TMemo
      Left = 136
      Top = 263
      Width = 185
      Height = 89
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      TabOrder = 3
    end
  end
end
