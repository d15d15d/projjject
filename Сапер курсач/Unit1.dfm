object Form1: TForm1
  Left = 249
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 583
  ClientWidth = 1218
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1218
    Height = 583
    Align = alClient
    Visible = False
    OnMouseDown = Image1MouseDown
  end
  object Panel1: TPanel
    Left = 496
    Top = 120
    Width = 209
    Height = 209
    TabOrder = 0
    Visible = False
    object Label2: TLabel
      Left = 40
      Top = 56
      Width = 129
      Height = 25
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Edit1: TEdit
      Left = 32
      Top = 96
      Width = 153
      Height = 21
      TabOrder = 0
      Visible = False
    end
    object Button3: TButton
      Left = 40
      Top = 136
      Width = 137
      Height = 41
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100'!'
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 368
    Top = 16
    Width = 441
    Height = 529
    TabOrder = 1
    Visible = False
    object ValueListEditor1: TValueListEditor
      Left = 72
      Top = 24
      Width = 305
      Height = 409
      ScrollBars = ssVertical
      TabOrder = 0
      TitleCaptions.Strings = (
        'Name'
        'Time')
      Visible = False
      ColWidths = (
        150
        149)
    end
    object menuButton: TButton
      Left = 128
      Top = 448
      Width = 201
      Height = 57
      Caption = #1052#1077#1085#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = menuButtonClick
    end
  end
  object Panel5: TPanel
    Left = 432
    Top = 120
    Width = 305
    Height = 233
    TabOrder = 4
    object Button1: TButton
      Left = 52
      Top = 23
      Width = 197
      Height = 50
      Caption = #1053#1072#1095#1072#1090#1100' '#1080#1075#1088#1091
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 52
      Top = 151
      Width = 197
      Height = 50
      Caption = #1042#1099#1081#1090#1080
      TabOrder = 1
      OnClick = Button2Click
    end
    object topButton: TButton
      Left = 52
      Top = 87
      Width = 197
      Height = 50
      Caption = #1056#1077#1082#1086#1088#1076#1099
      TabOrder = 2
      OnClick = topButtonClick
    end
  end
  object Panel4: TPanel
    Left = 448
    Top = 72
    Width = 281
    Height = 313
    TabOrder = 3
    Visible = False
    object professionalButton: TButton
      Left = 56
      Top = 128
      Width = 169
      Height = 41
      Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083
      TabOrder = 0
      Visible = False
      OnClick = professionalButtonClick
    end
    object cancelSelection: TButton
      Left = 56
      Top = 224
      Width = 169
      Height = 41
      Caption = #1053#1072#1079#1072#1076
      TabOrder = 1
      Visible = False
      OnClick = cancelSelectionClick
    end
    object customButton: TButton
      Left = 56
      Top = 176
      Width = 169
      Height = 41
      Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100
      TabOrder = 2
      Visible = False
      OnClick = customButtonClick
    end
    object beginnerButton: TButton
      Left = 56
      Top = 32
      Width = 169
      Height = 41
      Caption = #1053#1086#1074#1080#1095#1086#1082
      TabOrder = 3
      Visible = False
      OnClick = beginnerButtonClick
    end
    object amateurButton: TButton
      Left = 56
      Top = 80
      Width = 169
      Height = 41
      Caption = #1051#1102#1073#1080#1090#1077#1083#1100
      TabOrder = 4
      Visible = False
      OnClick = amateurButtonClick
    end
  end
  object Panel3: TPanel
    Left = 360
    Top = 72
    Width = 449
    Height = 321
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 53
      Top = 56
      Width = 364
      Height = 72
      Caption = 'M * N   Mines'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Californian FB'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 48
      Top = 176
      Width = 331
      Height = 36
      Caption = '(5-32)    (1-18)      (<m*n)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -31
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object MZnach: TEdit
      Left = 56
      Top = 136
      Width = 57
      Height = 21
      TabOrder = 0
      Visible = False
    end
    object NZnach: TEdit
      Left = 176
      Top = 136
      Width = 57
      Height = 21
      TabOrder = 1
      Visible = False
    end
    object MinesZnach: TEdit
      Left = 304
      Top = 136
      Width = 57
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object startCustomButton: TButton
      Left = 120
      Top = 224
      Width = 225
      Height = 57
      Caption = #1053#1072#1095#1072#1090#1100'!!!'
      TabOrder = 3
      Visible = False
      OnClick = startCustomButtonClick
    end
  end
  object MainMenu1: TMainMenu
    object New1: TMenuItem
      Caption = 'Menu'
      object New2: TMenuItem
        Caption = 'New'
        ShortCut = 16462
        OnClick = New2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
        OnClick = About1Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Left = 32
  end
end
