object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Directivas Firedac'
  ClientHeight = 457
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 577
    Height = 265
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btSQLite: TButton
    Left = 97
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Abrir SQLLite'
    TabOrder = 1
    OnClick = btSQLiteClick
  end
  object btFirebird: TButton
    Left = 16
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Abrir Firebird'
    TabOrder = 2
    OnClick = btSQLiteClick
  end
  object DBFirebird: TFDConnection
    Params.Strings = (
      'ConnectionDef=DemoCodeRageXII')
    ResourceOptions.AssignedValues = [rvAutoConnect, rvAutoReconnect]
    LoginPrompt = False
    OnLost = DBFirebirdLost
    OnRecover = DBFirebirdRecover
    Left = 745
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = DBFirebird
    FetchOptions.AssignedValues = [evMode, evLiveWindowParanoic]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select {IF FIREFIRD} first 10 {fi} CODIGO,'
      'NOMBRE,'
      'DIRECCION,'
      'TELEFONO,'
      'EMAIL, VALOR from clientes'
      '{IF SQLITE} limit 10 {fi}')
    Left = 744
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 744
    Top = 232
  end
  object DBSQLIte: TFDConnection
    Params.Strings = (
      'Database=C:\CodeRAgeXII\BD\Demo.db'
      'DriverID=SQLite')
    ResourceOptions.AssignedValues = [rvAutoConnect, rvAutoReconnect]
    LoginPrompt = False
    OnLost = DBFirebirdLost
    OnRecover = DBFirebirdRecover
    Left = 641
    Top = 16
  end
end
