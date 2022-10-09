object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Using Frames for Tabs (runtime)'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 560
    ActivePage = ts_Tab3Frame3
    TabOrder = 0
    object ts_Tab1Frame1: TTabSheet
      Caption = 'Using Radio Buttons'
    end
    object ts_Tab2Frame2: TTabSheet
      Caption = 'Using Colors'
      ImageIndex = 1
    end
    object ts_Tab3Frame3: TTabSheet
      Caption = 'A sorted choice'
      ImageIndex = 2
    end
  end
end
