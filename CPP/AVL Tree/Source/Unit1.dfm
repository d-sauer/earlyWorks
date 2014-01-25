object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'AVL Tree'
  ClientHeight = 280
  ClientWidth = 580
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
  object SpeedButton6: TSpeedButton
    Left = 359
    Top = 5
    Width = 92
    Height = 22
    Caption = 'Refresh'
    Flat = True
    OnClick = SpeedButton6Click
  end
  object SpeedButton5: TSpeedButton
    Left = 485
    Top = 5
    Width = 92
    Height = 22
    Caption = 'Exit'
    Flat = True
    OnClick = SpeedButton5Click
  end
  object Label3: TLabel
    Left = 1
    Top = 269
    Width = 422
    Height = 11
    Caption = 
      'Autor: Davor Sauer 33898/03-R     Sveu'#269'ili'#353'te u Zagrebu, Fakulte' +
      't organizacije i informatike, Vara'#382'din'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 353
    Height = 73
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 98
      Height = 13
      Caption = 'Niz brojeva za unos:'
    end
    object SpeedButton1: TSpeedButton
      Left = 128
      Top = 43
      Width = 98
      Height = 22
      Caption = 'Kreiraj AVL stablo'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 241
      Top = 43
      Width = 98
      Height = 22
      Caption = 'Obrisi AVL stablo'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object Edit1: TEdit
      Left = 120
      Top = 16
      Width = 219
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 79
    Width = 353
    Height = 83
    Caption = 'Funkcije nad AVL stablom'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Vrijednost'
    end
    object SpeedButton3: TSpeedButton
      Left = 149
      Top = 27
      Width = 92
      Height = 22
      Caption = 'Dodaj'
      Flat = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 247
      Top = 27
      Width = 92
      Height = 22
      Caption = 'Obrisi'
      Flat = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton7: TSpeedButton
      Left = 247
      Top = 55
      Width = 92
      Height = 22
      Caption = 'Trazi'
      Flat = True
      OnClick = SpeedButton7Click
    end
    object Edit2: TEdit
      Left = 70
      Top = 26
      Width = 73
      Height = 21
      TabOrder = 0
    end
  end
  object Memo1: TMemo
    Left = 1
    Top = 168
    Width = 353
    Height = 97
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object TW: TTreeView
    Left = 360
    Top = 33
    Width = 217
    Height = 232
    Indent = 19
    TabOrder = 3
  end
end
