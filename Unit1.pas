unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Objects, FMX.Ani, FMX.StdCtrls, FMX.TabControl, FMX.Controls.Presentation,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Layouts, FMX.ListBox,Unit2,
  FMX.Colors, FMX.Menus, CPort;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Image2: TImage;
    Button2: TButton;
    Image1: TImage;
    Button9: TButton;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ControlPanel: TPanel;
    RoundRect1: TRoundRect;
    Text13: TText;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    Text14: TText;
    F1Paramettre: TButton;
    F1BtGO: TButton;
    F1BtStop: TButton;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    QuitterControlPanel: TButton;
    ParamettrePanel: TPanel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Text15: TText;
    Text16: TText;
    Text17: TText;
    Text18: TText;
    BtValiderParamettre: TButton;
    CloseParamettre: TImage;
    RoundRect2: TRoundRect;
    Circle4: TCircle;
    Circle5: TCircle;
    Circle6: TCircle;
    Text19: TText;
    Line1: TLine;
    Line2: TLine;
    Line3: TLine;
    Text20: TText;
    PanelHistoriqueInterval: TPanel;
    Memo1: TMemo;
    Text21: TText;
    BtQuitterHistorique: TButton;
    BtParamettreF2: TButton;
    BtGoF2: TButton;
    BtStopF2: TButton;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Panel3: TPanel;
    BtControlPanel: TButton;
    Button6: TButton;
    Text1: TText;
    BtHistoriqueIntervals: TButton;
    CheckF1: TCheckBox;
    CheckF2: TCheckBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SauvegardeHistorique: TButton;
    ComPort1: TComPort;
    procedure Image1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure F1BtGOClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure F1BtStopClick(Sender: TObject);
    procedure BtControlPanelClick(Sender: TObject);
    procedure QuitterControlPanelClick(Sender: TObject);
    procedure F1ParamettreClick(Sender: TObject);
    procedure CloseParamettreClick(Sender: TObject);
    procedure BtValiderParamettreClick(Sender: TObject);
    procedure BtHistoriqueIntervalsClick(Sender: TObject);
    procedure BtQuitterHistoriqueClick(Sender: TObject);
    procedure BtParamettreF2Click(Sender: TObject);
    procedure BtGoF2Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure BtStopF2Click(Sender: TObject);
    procedure CheckF1Click(Sender: TObject);
    procedure CheckF2Click(Sender: TObject);
    procedure SauvegardeHistoriqueClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  Reponse:Boolean;
  Date,heure:String;
implementation

{$R *.fmx}

procedure TForm1.BtControlPanelClick(Sender: TObject);
begin
ControlPanel.Visible:=true;
ControlPanel.Enabled:=true;
PanelHistoriqueInterval.Visible:=false;
Image1.Enabled:=true;
image1.Visible:=true;
image2.Visible:=false;
Panel3.Visible:=false;
panel3.Enabled:=false;
text20.Visible:=false;
line1.Visible:=false;
line2.Visible:=false;
line3.Visible:=false;
end;

procedure TForm1.BtGoF2Click(Sender: TObject);
begin
Circle4.Fill.Color:=$ffff0000;//passe au rouge
Timer5.Enabled:=True;
BtGoF2.Enabled:=false;
BtStopF2.Enabled:=true;
end;

procedure TForm1.BtHistoriqueIntervalsClick(Sender: TObject);
begin
if memo1.Lines.Count=0 then
begin
  if opendialog1.Execute then
 begin
  Memo1.Lines.LoadFromFile(Opendialog1.FileName);
 end;
  PanelHistoriqueInterval.Visible:=true;
  PanelHistoriqueInterval.Enabled:=true;
  ControlPanel.Visible:=false;
  Panel3.Visible:=false;
  image2.visible:=false;
  image1.Enabled:=true;
  image1.Visible:=true;
  text20.Visible:=false;
  line1.Visible:=false;
  line2.Visible:=false;
  line3.Visible:=false;
end
else
begin
  PanelHistoriqueInterval.Visible:=true;
  PanelHistoriqueInterval.Enabled:=true;
  ControlPanel.Visible:=false;
  Panel3.Visible:=false;
  image2.visible:=false;
  image1.Enabled:=true;
  image1.Visible:=true;
  text20.Visible:=false;
  line1.Visible:=false;
  line2.Visible:=false;
  line3.Visible:=false;
end;

end;

procedure TForm1.BtParamettreF2Click(Sender: TObject);
begin
ParamettrePanel.Visible:=true;
F1Paramettre.Enabled:=false;

end;

procedure TForm1.BtQuitterHistoriqueClick(Sender: TObject);
begin
PanelHistoriqueInterval.Visible:=false;
image2.Visible:=true;
image1.Enabled:=true;
text20.Visible:=true;
line1.Visible:=true;
line2.Visible:=true;
line3.Visible:=true;
end;

procedure TForm1.BtStopF2Click(Sender: TObject);
begin
timer5.Enabled:=false;
timer6.Enabled:=false;
timer7.Enabled:=false;
Circle4.Fill.Color:=$ff000000;
Circle5.Fill.Color:=$ff000000;
Circle6.Fill.Color:=$ff000000;
BtGoF2.Enabled:=true;
BtStopF2.Enabled:=false;
end;

procedure TForm1.BtValiderParamettreClick(Sender: TObject);//Valider interval
begin
Reponse:=VerifierEntrer(Edit9.Text,Edit10.Text,Edit11.Text);
  Date:=DateToStr(Now);
  heure:=TimeToStr(Now);
if (Edit9.Text = '') or (Edit10.Text = '')or (Edit11.Text = '') then
  begin
    ShowMessage('Veuillez remplir les champs');
    Exit
  end

else if Reponse=false then
  begin
  ShowMessage('Veuillez entrer des nombre entier.');
  Exit;
  end
else if Reponse=true then
  begin
    if CheckF1.IsChecked then
    begin
    Timer2.Interval:=(StrToInt(Edit9.Text)*1000);
    timer3.Interval:=(StrToInt(Edit10.Text)*1000);
    timer4.Interval:=(StrToInt(Edit11.Text)*1000);
    memo1.Lines.Add('');
    Memo1.Lines.Add('F1');
    Memo1.Lines.Add(Date);
    Memo1.Lines.Add(heure);
    Memo1.Lines.Add(Edit9.Text);
    Memo1.Lines.Add(Edit10.Text);
    Memo1.Lines.Add(edit11.Text);
    end;
    if CheckF2.IsChecked then
    begin
    Timer5.Interval:=(StrToInt(Edit9.Text)*1000);
    timer6.Interval:=(StrToInt(Edit10.Text)*1000);
    timer7.Interval:=(StrToInt(Edit11.Text)*1000);
    memo1.Lines.Add('');
    Memo1.Lines.Add('F2');
    Memo1.Lines.Add(Date);
    Memo1.Lines.Add(heure);
    Memo1.Lines.Add(Edit9.Text);
    Memo1.Lines.Add(Edit10.Text);
    Memo1.Lines.Add(edit11.Text);
    end;

  end;
end;

procedure TForm1.Button6Click(Sender: TObject);//Quitter menu (P3)
begin
   Panel3.Visible:=false;
   Image1.Enabled:=true;
   Image1.Visible:=true;
   ControlPanel.Enabled:=true;
   PanelHistoriqueInterval.Enabled:=true;
   Button2.Enabled:=true;
end;

 //pour Btvalider
procedure TForm1.CheckF1Click(Sender: TObject);
begin
if CheckF1.IsChecked then
begin
BtValiderParamettre.Enabled:=false;
end
else
BtValiderParamettre.Enabled:=true;
end;

procedure TForm1.CheckF2Click(Sender: TObject);
begin
  if CheckF2.IsChecked then
  begin
    BtValiderParamettre.Enabled:=false;
  end
  else
    BtValiderParamettre.Enabled:=true;
end;

procedure TForm1.CloseParamettreClick(Sender: TObject);
begin
ParamettrePanel.Visible:=false;
BtParamettreF2.Enabled:=true;
F1Paramettre.Enabled:=true;
end;

procedure TForm1.F1BtGOClick(Sender: TObject);
begin
Circle1.Fill.Color:=$ffff0000;//passe au rouge
Timer2.Enabled:=True;
F1BtGO.Enabled:=false;
F1BtStop.Enabled:=true;
try
ComPort1:= TComPort.Create(nil);
ComPort1.Open;
//commande pour allumer la première LED
ComPort1.WriteStr('1');
finally
ComPort1.Free;
  end;
end;
end;

procedure TForm1.F1BtStopClick(Sender: TObject);
begin
timer2.Enabled:=false;
timer3.Enabled:=false;
timer4.Enabled:=false;
Circle1.Fill.Color:=$ff000000;
Circle2.Fill.Color:=$ff000000;
Circle3.Fill.Color:=$ff000000;
F1BtGO.Enabled:=true;
F1BtStop.Enabled:=false;
try
ComPort1.WriteStr('0'); //Eteint toute les leds
finally
  ComPort1.free;
end;
end;

procedure TForm1.F1ParamettreClick(Sender: TObject);
begin
ParamettrePanel.Visible:=true;
BtParamettreF2.Enabled:=false;
end;

procedure TForm1.Image1Click(Sender: TObject);//Menu
begin
   Panel3.Visible:=true;
   panel3.Enabled:=true;
   Image1.Enabled:=false;
   Image1.Visible:=false;
   Button2.Enabled:=false;
   ControlPanel.Enabled:=false;
   PanelHistoriqueInterval.Enabled:=false;
end;

procedure TForm1.QuitterControlPanelClick(Sender: TObject);
begin
ControlPanel.Visible:=false;
ControlPanel.Enabled:=false;
Image2.Visible:=true;
text20.Visible:=true;
line1.Visible:=true;
line2.Visible:=true;
line3.Visible:=true;
end;

procedure TForm1.SauvegardeHistoriqueClick(Sender: TObject);
begin
      if opendialog1.Execute then
    begin
      memo1.Lines.SaveToFile(opendialog1.FileName);
    end
    else
    begin
      if savedialog1.Execute then
      begin
        memo1.Lines.SaveToFile(savedialog1.FileName);
      end;
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);// Demarage
begin
Image3.Visible:=false;
Timer1.Enabled:=false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Circle1.Fill.Color:=$ff000000; //passe au noir
Circle3.Fill.Color:=$ff00ff00; //passe au vert
Timer2.Enabled:=false;
timer3.Enabled:=true;
try
  ComPort1.WriteStr('2');
  ComPort1.WriteStr('4');
finally
  ComPort1.free;
end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
circle3.Fill.Color:=$ff000000;
circle2.Fill.Color:=$ffffff00;
timer3.Enabled:=false;
timer4.Enabled:=true;
try
  ComPort1.WriteStr('3');
  ComPort1.WriteStr('5');
finally
  ComPort1.free;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
circle2.Fill.Color:=$ff000000;
Circle1.Fill.Color:=$ffff0000;
timer4.Enabled:=false;
timer2.Enabled:=true;
try
  ComPort1.WriteStr('1');
  ComPort1.WriteStr('6');
finally
  ComPort1.free;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
Circle4.Fill.Color:=$ff000000; //passe au noir
Circle6.Fill.Color:=$ff00ff00; //passe au vert
Timer5.Enabled:=false;
timer6.Enabled:=true;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
circle6.Fill.Color:=$ff000000;
circle5.Fill.Color:=$ffffff00;
timer6.Enabled:=false;
timer7.Enabled:=true;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
circle5.Fill.Color:=$ff000000;
Circle4.Fill.Color:=$ffff0000;
timer7.Enabled:=false;
timer5.Enabled:=true;
end;

end.
