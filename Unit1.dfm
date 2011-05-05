object Form1: TForm1
  Left = 214
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Chat'
  ClientHeight = 189
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 51
    Height = 13
    Caption = 'Nick name'
  end
  object Edit1: TEdit
    Left = 104
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'NoName'
  end
  object Button1: TButton
    Left = 8
    Top = 152
    Width = 75
    Height = 25
    Caption = 'send'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 120
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 521
    Height = 73
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button2: TButton
    Left = 448
    Top = 96
    Width = 75
    Height = 25
    Caption = 'connect'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 448
    Top = 128
    Width = 75
    Height = 25
    Caption = 'disconnect'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnRead = ClientSocket1Read
    Left = 496
    Top = 16
  end
end
