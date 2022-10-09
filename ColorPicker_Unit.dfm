object FrameColorPicker: TFrameColorPicker
  Left = 0
  Top = 0
  Width = 410
  Height = 344
  TabOrder = 0
  object Shape1: TShape
    Left = 152
    Top = 168
    Width = 65
    Height = 65
    Brush.Color = clFuchsia
    Pen.Color = clYellow
    Pen.Width = 4
  end
  object BrushColorBox: TColorBox
    Left = 120
    Top = 56
    Width = 145
    Height = 22
    DefaultColorColor = clFuchsia
    NoneColorColor = clFuchsia
    Selected = clFuchsia
    TabOrder = 0
    OnChange = BrushColorBoxChange
  end
  object PenColorBox: TColorBox
    Left = 120
    Top = 104
    Width = 145
    Height = 22
    DefaultColorColor = clYellow
    NoneColorColor = clYellow
    Selected = clYellow
    TabOrder = 1
    OnChange = PenColorBoxChange
  end
end
