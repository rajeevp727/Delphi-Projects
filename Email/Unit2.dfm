object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 492
  Width = 666
  object ADOConn_Register: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Delphi@123;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=Delphi;Data Source=DESKTOP-F9IN6DF'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 80
  end
  object ADOQry_Register: TADOQuery
    Connection = ADOConn_Register
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Delphi.dbo.userList')
    Left = 192
    Top = 80
  end
  object ADOQry_Login: TADOQuery
    Active = True
    Connection = ADOConn_Register
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from userList')
    Left = 184
    Top = 168
  end
  object ADOQry_Error: TADOQuery
    Connection = ADOConn_Register
    Parameters = <>
    SQL.Strings = (
      'select * from mailInfo')
    Left = 120
    Top = 312
  end
end
