object frmKullaniciEkle: TfrmKullaniciEkle
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DelphiCan Kullan'#305'c'#305' Ekleme'
  ClientHeight = 121
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 59
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305':'
  end
  object Label2: TLabel
    Left = 8
    Top = 45
    Width = 79
    Height = 13
    Caption = 'Kullan'#305'c'#305' '#350'ifreniz:'
  end
  object Edit1: TEdit
    Left = 8
    Top = 21
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 59
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 86
    Width = 161
    Height = 25
    Caption = 'Kullan'#305'c'#305'y'#305' Kaydet'
    TabOrder = 2
    OnClick = Button1Click
  end
  object UniConnection1: TUniConnection
    Left = 416
    Top = 32
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 320
    Top = 32
  end
  object AccessUniProvider1: TAccessUniProvider
    Left = 216
    Top = 32
  end
end
