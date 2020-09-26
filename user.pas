unit user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, ExtDlgs,
  ExtCtrls, DBCtrls, jpeg;

type
  TForm3 = class(TForm)
    mmo1: TMemo;
    edt3: TEdit;
    edt1: TEdit;
    edt8: TEdit;
    edt4: TEdit;
    btn7: TButton;
    btn6: TButton;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    con1: TADOConnection;
    qry1: TADOQuery;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    ds1: TDataSource;
    dlgOpenPic1: TOpenPictureDialog;
    img1: TImage;
    btn5: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    //function GetID: Integer;
    //function Now: TDateTime;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses
  TimerDlg;



(*
function TForm3.GetID: Integer;
//var
//  FADOQuery: TADOQuery;
begin
  {
  Result:= -1;
  FADOQuery:= TADOQuery.Create(Self);
  with FADOQuery do
  begin
    Connection:= con1;
    Close;
    SQL.Clear;
    SQL.Text:= 'select isnull(max(id),0) as maxid from SYS_PIC';
    Open;
    Result:= FieldByName('maxid').AsInteger + 1;
  end;
  }
end;
*)

procedure TForm3.btn1Click(Sender: TObject);
begin
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec select_User');
  qry1.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('exec select_User');
end;

procedure TForm3.btn2Click(Sender: TObject);
var
  proName, applicant, proDescription, upLoadTime: string;
begin
  upLoadTime := DateTimeToStr(now);
  //btn2.Caption:=upLoadTime;

  proName := Trim(edt4.Text);
  applicant := Trim(edt1.Text);
  proDescription := Trim(mmo1.Text);

  qry1.Close;
  qry1.SQL.Clear;
  //qry1.SQL.Text := 'exec insert_SYS_User''' + proName + ''',''' + applicant + ''','''+proDescription+''','''+upLoadTime+'''';
  //qry1.SQL.Add('insert into YourTABLE values(:字段1)');
  qry1.SQL.Add('exec insert_SYS_User''' + proName + ''',''' + applicant + ''','''+proDescription+''','''+upLoadTime+'''');
  //qry1.Parameters.ParamByName('字段1').Value := trim(edt1.Text);
  //qry1.Parameters.ParamByName('字段2').Value := trim(edt4.Text);
  qry1.ExecSQL;
  btn1.Click;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  img1.Picture.Graphic := nil;
  img1.Tag := 1;
end;

procedure TForm3.btn7Click(Sender: TObject);
var
  FStream: TMemoryStream;
begin
  if dlgOpenPic1.Execute then
    img1.Picture.LoadFromFile(dlgOpenPic1.FileName)
  else
    Exit;
  img1.Tag := 1;

  FStream := TMemoryStream.Create;
  img1.Picture.Graphic.SaveToStream(FStream);

  FStream.Free;
  {
  qry1.Close;
  qry1.SQL.Text := 'insert into SYS_User(proNumber, imageDescription)values(:ID, :PIC)';
  qry1.Parameters.ParamByName('ID').Value := GetID;
  qry1.Parameters.ParamByName('PIC').LoadFromStream(FStream, ftBlob);
  qry1.ExecSQL;
  }
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体

end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  Form3 := nil; //在窗口销毁时，把Form3变量设为nil
end;

end.

