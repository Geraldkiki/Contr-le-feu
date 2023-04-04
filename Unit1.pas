unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Objects, FMX.Ani, FMX.StdCtrls, FMX.TabControl, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Image1: TImage;
    Panel1: TPanel;
    FloatAnimation1: TFloatAnimation;
    Button3: TButton;
    Button4: TButton;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Text7: TText;
    Edit5: TEdit;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
