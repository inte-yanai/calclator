object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #38651#21331
  ClientHeight = 359
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #65325#65331' '#12468#12471#12483#12463
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object lbl_num: TicLabel
    Left = 30
    Top = 25
    Width = 195
    Height = 40
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #65325#65331' '#12468#12471#12483#12463
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    BorderStyle = icbsLowered
  end
  object btn_1: TButton
    Left = 30
    Top = 250
    Width = 45
    Height = 45
    Caption = '1'
    TabOrder = 3
    OnClick = btn_1Click
  end
  object btn_2: TButton
    Left = 80
    Top = 250
    Width = 45
    Height = 45
    Caption = '2'
    TabOrder = 4
    OnClick = btn_2Click
  end
  object btn_3: TButton
    Left = 130
    Top = 250
    Width = 45
    Height = 45
    Caption = '3'
    TabOrder = 5
    OnClick = btn_3Click
  end
  object btn_0: TButton
    Left = 30
    Top = 300
    Width = 95
    Height = 45
    Caption = '0'
    TabOrder = 1
    OnClick = btn_0Click
  end
  object btn_dot: TButton
    Left = 130
    Top = 300
    Width = 45
    Height = 45
    Caption = '.'
    TabOrder = 2
  end
  object btn_4: TButton
    Left = 30
    Top = 200
    Width = 45
    Height = 45
    Caption = '4'
    TabOrder = 6
    OnClick = btn_4Click
  end
  object btn_5: TButton
    Left = 80
    Top = 200
    Width = 45
    Height = 45
    Caption = '5'
    TabOrder = 7
    OnClick = btn_5Click
  end
  object btn_6: TButton
    Left = 130
    Top = 200
    Width = 45
    Height = 45
    Caption = '6'
    TabOrder = 8
    OnClick = btn_6Click
  end
  object btn_7: TButton
    Left = 30
    Top = 150
    Width = 45
    Height = 45
    Caption = '7'
    TabOrder = 9
    OnClick = btn_7Click
  end
  object btn_8: TButton
    Left = 80
    Top = 150
    Width = 45
    Height = 45
    Caption = '8'
    TabOrder = 10
    OnClick = btn_8Click
  end
  object btn_9: TButton
    Left = 130
    Top = 150
    Width = 45
    Height = 45
    Caption = '9'
    TabOrder = 11
    OnClick = btn_9Click
  end
  object btn_pl: TButton
    Left = 180
    Top = 250
    Width = 45
    Height = 45
    Caption = '+'
    TabOrder = 12
    OnClick = btn_plClick
  end
  object btn_eq: TButton
    Left = 180
    Top = 300
    Width = 45
    Height = 45
    Caption = '='
    TabOrder = 0
    OnClick = btn_eqClick
  end
  object btn_mi: TButton
    Left = 180
    Top = 200
    Width = 45
    Height = 45
    Caption = '-'
    TabOrder = 13
    OnClick = btn_miClick
  end
  object btn_mu: TButton
    Left = 180
    Top = 150
    Width = 45
    Height = 45
    Caption = #215
    TabOrder = 14
    OnClick = btn_muClick
  end
  object btn_ac: TButton
    Left = 30
    Top = 100
    Width = 45
    Height = 45
    Caption = 'AC'
    TabOrder = 16
    OnClick = btn_acClick
  end
  object btn_pm: TButton
    Left = 80
    Top = 100
    Width = 45
    Height = 45
    Caption = '+/-'
    TabOrder = 17
  end
  object btn_per: TButton
    Left = 130
    Top = 100
    Width = 45
    Height = 45
    Caption = '%'
    TabOrder = 18
  end
  object btn_di: TButton
    Left = 180
    Top = 100
    Width = 45
    Height = 45
    Caption = #247
    TabOrder = 15
    OnClick = btn_diClick
  end
end
