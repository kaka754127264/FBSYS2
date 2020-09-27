unit user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, ExtDlgs,
  ExtCtrls, DBCtrls, jpeg, Vcl.Menus;

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
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dlgOpenPic1: TOpenPictureDialog;
    img1: TImage;
    btn5: TButton;
    pm1: TPopupMenu;
    N1: TMenuItem;
    btn8: TButton;
    lbl6: TLabel;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    N2: TMenuItem;
    img2: TImage;
    lbl7: TLabel;
    lbl8: TLabel;
    btn12: TButton;
    qry1: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    qry1产品: TWideStringField;
    qry1图片: TBlobField;
    qry1申请人: TWideStringField;
    qry1问题描述: TWideStringField;
    qry1审核人: TWideStringField;
    qry1审核日期: TDateTimeField;
    qry1时间: TDateTimeField;
    intgrfldqry1序列号: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure tempAdd(num, tempStrStr: string; qry: TADOQuery);
    procedure tempDelete(num: string; qry: TADOQuery);
    procedure tempAll(qry: TADOQuery);
    procedure btn12Click(Sender: TObject);
//    procedure UploadPICToSqlServer(UserName, path, ConnStr: string);
  private
    { Private declarations }
    //function GetID: Integer;

    var
      proNumberStr, proNameStr, applicantStr, proDescriptionStr, imageDescriptionStr, auditorStr, reviewDateStr, pathStr: string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  proNumInt: integer;
  tempStr: string;

implementation

{$R *.dfm}
uses
  TimerDlg, PIC;

procedure TForm3.btn10Click(Sender: TObject);
begin
  img2.Picture.Graphic := nil;
end;

procedure TForm3.btn11Click(Sender: TObject);
begin
  edt1.Text := '';
  edt4.Text := '';
  mmo1.Text := '';
  edt3.Text := '';
  edt8.Text := '';
  //proNumberStr := qry2.FieldByName('管理序列号').AsString;
  //btn11.Caption := proNumberStr;
end;

procedure TForm3.btn12Click(Sender: TObject);
begin
  lbl8.caption := inttostr(proNumInt + 1);
  proNumInt := proNumInt + 1;
  tempStr := inttostr(proNumInt);
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec select_User');
  qry1.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');
end;

procedure TForm3.tempAdd(num, tempStrStr: string; qry: TADOQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('exec insert_SYS_ZS ''' + num + ''' ,''' + tempStrStr + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('序列号已新建成功');
end;

procedure TForm3.tempDelete(num: string; qry: TADOQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('exec delete_SYS_ZS ''' + num + ''',''' + num + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('序列号已删除成功');
end;

procedure TForm3.tempAll(qry: TADOQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('exec delete_ALL');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('已清空');
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

  tempAdd(inttostr(proNumInt), tempStr, qry1);

  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec insert_SYS_User''' + proName + ''',''' + applicant + ''',''' + proDescription + ''',''' + upLoadTime + ''',''' + tempStr + '''');
  qry1.ExecSQL;
  btn1.Click;

end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  tempDelete(proNumberStr, qry1);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec delete_SYS_User ''' + proNameStr + '''');
  qry1.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('删除成功');
  btn1.Click;

end;

procedure TForm3.btn4Click(Sender: TObject);
var
  proNameModify, applicantModify, proDescriptionModify, upLoadTimeModify: string;
begin
  upLoadTimeModify := DateTimeToStr(now);
  proNameModify := Trim(edt4.Text);
  applicantModify := Trim(edt1.Text);
  proDescriptionModify := Trim(mmo1.Text);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec modify_SYS_User2''' + proNameModify + ''',''' + applicantModify + ''',''' + proDescriptionModify + ''',''' + upLoadTimeModify + ''',''' + proNameStr + '''');
  qry1.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('修改成功');
  btn1.Click;

end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  img1.Picture.Graphic := nil;
  img1.Tag := 1;
  btn8.Caption := '读图';
  lbl6.Caption := '路径';
end;

procedure TForm3.btn6Click(Sender: TObject);
var
  ad, rD: string;
begin
  ad := Trim(edt3.Text);
//  rD := DateTimeToStr(now);
  rD := Trim(edt8.Text);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec modify_SYS_User''' + ad + ''',''' + rD + ''',''' + proNameStr + '''');
  qry1.ExecSQL;
  btn1.Click;

end;

procedure TForm3.btn7Click(Sender: TObject);
var
  PicStream: TMemoryStream;
begin
  if img1.Picture.Graphic <> nil then
  begin
    PicStream := TMemoryStream.Create; //  创建内存流
    img1.Picture.Graphic.SaveToStream(PicStream);
    qry1.Edit;
    TBlobField(qry1.FieldByName('图片')).LoadFromStream(PicStream);
    qry1.Post;
    PicStream.Free;
  end;

  btn1.Click;
end;

procedure TForm3.btn8Click(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
    img1.Picture.LoadFromFile(dlgOpenPic1.FileName)
  else
    Exit;
  img1.Tag := 1;
  btn8.Caption := '已加载';
  lbl6.Caption := dlgOpenPic1.FileName;
  pathStr := lbl6.Caption;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(pathStr);
  //btn1.Click;
end;

procedure TForm3.btn9Click(Sender: TObject);
begin
  tempAll(qry1);
  btn1.Click;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  proNameStr := dbgrd1.DataSource.DataSet.FieldByName('产品').AsString;
  proNumberStr := dbgrd1.DataSource.DataSet.FieldByName('序列号').AsString;
//  applicantStr := dbgrd1.DataSource.DataSet.FieldByName('申请人').AsString;
//  proDescriptionStr := dbgrd1.DataSource.DataSet.FieldByName('问题描述').AsString;
//  imageDescriptionStr := dbgrd1.DataSource.DataSet.FieldByName('图片').AsString;
//  auditorStr := dbgrd1.DataSource.DataSet.FieldByName('审核人').AsString;
//  reviewDateStr := dbgrd1.DataSource.DataSet.FieldByName('审核日期').AsString;

end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体

end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  Form3 := nil; //在窗口销毁时，把Form3变量设为nil
end;

{
procedure TForm3.lbl7Click(Sender: TObject);
begin
  lbl8.caption := inttostr(n + 1);
  n := n + 1;
end;
}
procedure TForm3.N1Click(Sender: TObject);
begin
        //删除该行
  tempDelete(proNumberStr, qry1);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec delete_SYS_User ''' + proNameStr + '''');
  qry1.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('删除成功');
  btn1.Click;
end;

procedure TForm3.N2Click(Sender: TObject);
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
    img2.Picture.Graphic := nil;

    JpgImg := TJpegimage.Create;
    JpgImg.LoadFromStream(PicStream);

    img2.Picture.Graphic := JpgImg;

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

