unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Objects, FMX.Ani, FMX.StdCtrls, FMX.TabControl, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Panel1: TPanel;
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
    Text8: TText;
    Edit6: TEdit;
    Panel2: TPanel;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Button1: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Text12: TText;
    Image2: TImage;
    Button2: TButton;
    Image1: TImage;
    TabItem2: TTabItem;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Text1: TText;
    procedure Text12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button2Click(Sender: TObject);
begin
   Panel2.Visible:=true;
   Panel1.Enabled:=false;
   Image1.Enabled:=false;
   image2.Enabled:=False;
   Button2.Enabled:=false;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   Panel3.Visible:=false;
   Panel1.Enabled:=true;
   Image1.Enabled:=true;
   image2.Enabled:=true;
   Button2.Enabled:=true;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
   Panel3.Visible:=true;
   Panel1.Enabled:=false;
   Image1.Enabled:=false;
   image2.Enabled:=False;
   Button2.Enabled:=false;
end;

procedure TForm1.Text12Click(Sender: TObject);
begin
 Panel2.Visible:=false;
 Panel1.Enabled:=true;
 Panel1.Visible:=true;
end;

end.
