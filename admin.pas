unit admin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Menus, DBCtrls, jpeg, ComObj, Vcl.Clipbrd;

type
  TForm4 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TADOConnection;
    btn5: TButton;
    img1: TImage;
    pm1: TPopupMenu;
    N2: TMenuItem;
    dlgSave1: TSaveDialog;
    btn2: TButton;
    btn6: TButton;
    qry1: TADOQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    intgrfldqry1管理序列号: TIntegerField;
    wdstrngfldqry1开发者: TWideStringField;
    wdstrngfldqry1测试人员: TWideStringField;
    dtmfldqry1产品测试日期: TDateTimeField;
    dtmfldqry1管理上传时间: TDateTimeField;
    wdstrngfldqry1用户产品: TWideStringField;
    wdstrngfldqry1申请人: TWideStringField;
    wdstrngfldqry1问题描述: TWideStringField;
    wdstrngfldqry1审核人: TWideStringField;
    dtmfldqry1审核日期: TDateTimeField;
    blbfldqry1图片: TBlobField;
    dtmfldqry1用户上传时间: TDateTimeField;
    intgrfldqry1用户序列号: TIntegerField;
    intgrfldqry1图片序号: TIntegerField;
    blbfldqry1图片一: TBlobField;
    blbfldqry1图片二: TBlobField;
    blbfldqry1图片三: TBlobField;
    blbfldqry1图片四: TBlobField;
    blbfldqry1图片五: TBlobField;
    blbfldqry1图片六: TBlobField;
    blbfldqry1图片七: TBlobField;
    blbfldqry1图片八: TBlobField;
    blbfldqry1图片九: TBlobField;
    blbfldqry1图片十: TBlobField;
    intgrfldqry1图片序列: TIntegerField;
    qry2: TADOQuery;
    intgrfldqry2ID: TIntegerField;
    blbfldqry2图片一: TBlobField;
    blbfldqry2图片二: TBlobField;
    blbfldqry2图片三: TBlobField;
    blbfldqry2图片四: TBlobField;
    blbfldqry2图片五: TBlobField;
    blbfldqry2图片六: TBlobField;
    blbfldqry2图片七: TBlobField;
    blbfldqry2图片八: TBlobField;
    blbfldqry2图片九: TBlobField;
    blbfldqry2图片十: TBlobField;
    intgrfldqry2图片序列: TIntegerField;
    N1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure N2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    var
      adPNumberStr{, adPNameStr, developerStr, testerStr, proTestDateStr, adminUpTimeStr, userUpTimeStr, userProNumberStr, userProNameStr, applicantStr, proDescriptionStr, imageDescriptionStr, auditorStr, reviewDateStr}: string;
  public
    { Public declarations }

  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  TimerDlg, PIC, user, DBGrid2Excel;

procedure TForm4.btn1Click(Sender: TObject);
var
  developerModify, testerModify, proTestDateModify, loadTimeModify: string;
begin
  loadTimeModify := DateTimeToStr(now);
  developerModify := Trim(edt1.Text);
  testerModify := Trim(edt2.Text);
  proTestDateModify := Trim(edt3.Text);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec modify_SYS_ZS''' + developerModify + ''',''' + testerModify + ''',''' + proTestDateModify + ''',''' + loadTimeModify + ''',''' + adPNumberStr + '''');
  qry1.ExecSQL;

  btn4.Click;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('成功');

end;

procedure TForm4.btn2Click(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
//
  {create variant array where we'll copy our data}
  RowCount := 10;
  ColCount := 10;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] := Format('This is test text #%d-%d', [i, j]);

  {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application');

  {create workbook}
  wb := xls.Workbooks.Add;

  {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1], wb.WorkSheets[1].Cells[RowCount, ColCount]];

  { copy data from the array into an Excel Range, and then use AutoFit to size them }
  Range.Value := arrData;
  Range.Columns.AutoFit;

  {show Excel with our data}
  xls.Visible := True;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  Form3.tempAll(qry1);
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec select_ZS');
  qry1.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('exec select_ZS');
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
  DBGrid2Excel.DBGridToExcel(dbgrd1);
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
(*adminProNumberStr，adminProNameStr,developerStr,testerStr,proTestDateStr,adminUpTimeStr,userUpTimeStr,
    userProNumberStr,userProNameStr, applicantStr, proDescriptionStr, imageDescriptionStr,
     auditorStr, reviewDateStr*)

begin
  adPNumberStr := dbgrd1.DataSource.DataSet.FieldByName('管理序列号').AsString;
  //adPNameStr := dbgrd1.DataSource.DataSet.FieldByName('管理产品').AsString;
//  developerStr := dbgrd1.DataSource.DataSet.FieldByName('开发者').AsString;
//  testerStr := dbgrd1.DataSource.DataSet.FieldByName('测试人员').AsString;
//  proTestDateStr := dbgrd1.DataSource.DataSet.FieldByName('产品测试日期').AsString;
//  adminUpTimeStr := dbgrd1.DataSource.DataSet.FieldByName('管理上传时间').AsString;
//  userUpTimeStr := dbgrd1.DataSource.DataSet.FieldByName('用户上传时间').AsString;
//  userProNumberStr := dbgrd1.DataSource.DataSet.FieldByName('用户序列号').AsString;
//  userProNameStr := dbgrd1.DataSource.DataSet.FieldByName('用户产品').AsString;
//  applicantStr := dbgrd1.DataSource.DataSet.FieldByName('申请人').AsString;
//  proDescriptionStr := dbgrd1.DataSource.DataSet.FieldByName('问题描述').AsString;
//  imageDescriptionStr := dbgrd1.DataSource.DataSet.FieldByName('图片').AsString;
//  auditorStr := dbgrd1.DataSource.DataSet.FieldByName('审核人').AsString;
//  reviewDateStr := dbgrd1.DataSource.DataSet.FieldByName('审核日期').AsString;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  Form4 := nil; //在窗口销毁时，把Form4变量设为nil
end;

procedure TForm4.N1Click(Sender: TObject);
begin

//
end;

procedure TForm4.N2Click(Sender: TObject);
var
  PicStream: TMemoryStream;
  JpgImg: TJpegimage;
begin
         //查看图片
  if not qry1.FieldByName('图片').IsNull then
  begin
    PicStream := TMemoryStream.Create;

    TBlobField(qry1.FieldByName('图片')).SaveToStream(PicStream);
    PicStream.Position := 0;
    img1.Picture.Graphic := nil;

    JpgImg := TJpegimage.Create;
    JpgImg.LoadFromStream(PicStream);

    img1.Picture.Graphic := JpgImg;

    if not Assigned(Form1) then //确保只创建一个窗口
    begin
      Form1 := TForm1.Create(Application);
    end;
    Form1.Show;
    Form1.img1.Stretch := True;
    Form1.img1.Picture.Graphic := JpgImg;
    JpgImg.Free;
    PicStream.Free;

  end
  else
  begin
    ShowMessage('对不起，图片为空.');
  end;
end;

end.

