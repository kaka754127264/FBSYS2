unit user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, ExtDlgs,
  ExtCtrls, DBCtrls, jpeg, Vcl.Menus, ComObj, clipbrd;

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
    dbgrd2: TDBGrid;
    qry2: TADOQuery;
    ds2: TDataSource;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    btn22: TButton;
    lbl9: TLabel;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
    img12: TImage;
    dlgOpenPic2: TOpenPictureDialog;
    dlgOpenPic3: TOpenPictureDialog;
    dlgOpenPic4: TOpenPictureDialog;
    dlgOpenPic5: TOpenPictureDialog;
    dlgOpenPic6: TOpenPictureDialog;
    dlgOpenPic7: TOpenPictureDialog;
    dlgOpenPic8: TOpenPictureDialog;
    dlgOpenPic9: TOpenPictureDialog;
    dlgOpenPic10: TOpenPictureDialog;
    dlgOpenPic11: TOpenPictureDialog;
    btn23: TButton;
    btn24: TButton;
    btn25: TButton;
    btn26: TButton;
    btn27: TButton;
    btn28: TButton;
    btn29: TButton;
    btn30: TButton;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    pm2: TPopupMenu;
    N3: TMenuItem;
    btn34: TButton;
    intgrfldqry1序列号: TIntegerField;
    wdstrngfldqry1产品: TWideStringField;
    blbfldqry1图片: TBlobField;
    wdstrngfldqry1申请人: TWideStringField;
    wdstrngfldqry1问题描述: TWideStringField;
    wdstrngfldqry1审核人: TWideStringField;
    dtmfldqry1审核日期: TDateTimeField;
    dtmfldqry1时间: TDateTimeField;
    intgrfldqry1图片序号: TIntegerField;
    btn35: TButton;
    btn36: TButton;
    dlgOpen1: TOpenDialog;
    qry3: TADOQuery;
    ds3: TDataSource;
    intgrfldqry3id: TIntegerField;
    wdstrngfldqry3picStr1: TWideStringField;
    wdstrngfldqry3picStr2: TWideStringField;
    wdstrngfldqry3picStr3: TWideStringField;
    wdstrngfldqry3picStr4: TWideStringField;
    wdstrngfldqry3picStr5: TWideStringField;
    wdstrngfldqry3picStr6: TWideStringField;
    wdstrngfldqry3picStr7: TWideStringField;
    wdstrngfldqry3picStr8: TWideStringField;
    wdstrngfldqry3picStr9: TWideStringField;
    wdstrngfldqry3picStr10: TWideStringField;
    dbgrd3: TDBGrid;
    ds4: TDataSource;
    qry4: TADOQuery;
    dbgrd4: TDBGrid;
    btn37: TButton;
    edt2: TEdit;
    lbl10: TLabel;
    intgrfldqry4ID: TIntegerField;
    wdstrngfldqry4photo1: TWideStringField;
    wdstrngfldqry4photo2: TWideStringField;
    wdstrngfldqry4photo3: TWideStringField;
    wdstrngfldqry4photo4: TWideStringField;
    wdstrngfldqry4photo5: TWideStringField;
    wdstrngfldqry4photo6: TWideStringField;
    wdstrngfldqry4photo7: TWideStringField;
    wdstrngfldqry4photo8: TWideStringField;
    wdstrngfldqry4photo9: TWideStringField;
    wdstrngfldqry4photo10: TWideStringField;
    intgrfldqry4id_1: TIntegerField;
    wdstrngfldqry4picStr1: TWideStringField;
    wdstrngfldqry4picStr2: TWideStringField;
    wdstrngfldqry4picStr3: TWideStringField;
    wdstrngfldqry4picStr4: TWideStringField;
    wdstrngfldqry4picStr5: TWideStringField;
    wdstrngfldqry4picStr6: TWideStringField;
    wdstrngfldqry4picStr7: TWideStringField;
    wdstrngfldqry4picStr8: TWideStringField;
    wdstrngfldqry4picStr9: TWideStringField;
    wdstrngfldqry4picStr10: TWideStringField;
    intgrfldqry4ID_2: TIntegerField;
    blbfldqry4PIC1: TBlobField;
    blbfldqry4PIC2: TBlobField;
    blbfldqry4PIC3: TBlobField;
    blbfldqry4PIC4: TBlobField;
    blbfldqry4PIC5: TBlobField;
    blbfldqry4PIC6: TBlobField;
    blbfldqry4PIC7: TBlobField;
    blbfldqry4PIC8: TBlobField;
    blbfldqry4PIC9: TBlobField;
    blbfldqry4PIC10: TBlobField;
    intgrfldqry4PIC_NO: TIntegerField;
    lbl11: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    edt14: TEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    btn38: TButton;
    img13: TImage;
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
    procedure tempPIC(num: string; qry: TADOQuery);
    procedure tempName(num: string; qry: TADOQuery);
    procedure btn12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure edt8KeyPress(Sender: TObject; var Key: Char);
    procedure btn18Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure btn21Click(Sender: TObject);
    procedure btn22Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure btn23Click(Sender: TObject);
    procedure upPicDemo(img: TImage; qry: TADOQuery; str: string);
    procedure btn24Click(Sender: TObject);
    procedure btn25Click(Sender: TObject);
    procedure btn26Click(Sender: TObject);
    procedure btn27Click(Sender: TObject);
    procedure btn28Click(Sender: TObject);
    procedure btn29Click(Sender: TObject);
    procedure btn30Click(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure btn32Click(Sender: TObject);
    procedure btn33Click(Sender: TObject);
    procedure btn34Click(Sender: TObject);
    procedure openPicDemo(img: TImage; qry: TADOQuery; str: string);
    procedure isNullPic(img: TImage; qry: TADOQuery; str: string);
    procedure ifUpPic(img: TImage; qry: TADOQuery; str: string);
    procedure btn35Click(Sender: TObject);
    function readImg(qry: TADOQuery; str: string): TJPEGImage;
    procedure toExcel(col, row: string; var FWorksheet: OleVariant);
    procedure btn36Click(Sender: TObject);
//    procedure copyImg(img: imgWidthAndHeight);
    procedure pathAdd(qry: TADOQuery; str: string);
    procedure tempPICPath(num: string; qry: TADOQuery);
    procedure btn37Click(Sender: TObject);
    procedure savePhoto(img: TImage; workpath, p: string);
    procedure btn38Click(Sender: TObject);
  private
    { Private declarations }

    var
      proNumberStr, proNameStr, IDStr, PICStr, idpathstr, IDCon(*, applicantStr, proDescriptionStr, imageDescriptionStr, auditorStr, reviewDateStr,*), pathStr: string;
      JpgImg: TJpegimage;
      VDir: string;
      workpath1, workpath2, workpath3, workpath4, workpath5, workpath6, workpath7, workpath8, workpath9, workpath10: string;
      photopath: string;
      p1, p2, p3, p4, p5, p6, p7, p8, p9, p10: string;
  public
    { Public declarations }

  end;

var
  Form3: TForm3;
  proNumInt: integer;
  tempStr, tempStr2: string;
  picStr1, picStr2, picStr3, picStr4, picStr5, picStr6, picStr7, picStr8, picStr9, picStr10: string;

implementation

{$R *.dfm}
uses
  TimerDlg, PIC, DBGrid2Excel;

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
  proNumInt := 0;
  lbl8.caption := inttostr(proNumInt);

end;

procedure TForm3.btn12Click(Sender: TObject);
begin
  lbl8.caption := inttostr(proNumInt + 1);
  tempStr2 := inttostr(proNumInt + 1);
//  ShowMessage('tempStr2' + tempStr2);
  proNumInt := proNumInt + 1;
  tempStr := inttostr(proNumInt);
//  ShowMessage(tempStr);

end;

procedure TForm3.btn13Click(Sender: TObject);
begin
  workpath6 := ExtractFilePath(application.exename);
  if dlgOpenPic7.Execute then
    img8.Picture.LoadFromFile(dlgOpenPic7.FileName)
  else
    Exit;
  p6 := edt10.Text;
  savePhoto(img8, workpath6, p6);
  img8.Tag := 7;
  btn13.Caption := '已加载' + p6;
  picStr6 := dlgOpenPic7.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr6);
end;

procedure TForm3.btn14Click(Sender: TObject);
begin
  workpath7 := ExtractFilePath(application.exename);
  if dlgOpenPic8.Execute then
    img9.Picture.LoadFromFile(dlgOpenPic8.FileName)
  else
    Exit;
  p7 := edt11.Text;
  savePhoto(img9, workpath7, p7);
  img9.Tag := 8;
  btn14.Caption := '已加载' + p7;
  picStr7 := dlgOpenPic8.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr7);
end;

procedure TForm3.btn15Click(Sender: TObject);
begin
  workpath8 := ExtractFilePath(application.exename);
  if dlgOpenPic9.Execute then
    img10.Picture.LoadFromFile(dlgOpenPic9.FileName)
  else
    Exit;
  p8 := edt12.Text;
  savePhoto(img10, workpath8, p8);
  img10.Tag := 9;
  btn15.Caption := '已加载' + p8;
  picStr8 := dlgOpenPic9.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr8);
end;

procedure TForm3.btn16Click(Sender: TObject);
begin
  workpath9 := ExtractFilePath(application.exename);
  if dlgOpenPic10.Execute then
    img11.Picture.LoadFromFile(dlgOpenPic10.FileName)
  else
    Exit;
  p9 := edt13.Text;
  savePhoto(img11, workpath9, p9);
  img11.Tag := 10;
  btn16.Caption := '已加载' + p9;
  picStr9 := dlgOpenPic10.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr9);
end;

procedure TForm3.btn17Click(Sender: TObject);
begin
  workpath10 := ExtractFilePath(application.exename);
  if dlgOpenPic11.Execute then
    img12.Picture.LoadFromFile(dlgOpenPic11.FileName)
  else
    Exit;
  p10 := edt14.Text;
  savePhoto(img12, workpath10, p10);
  img12.Tag := 11;
  btn17.Caption := '已加载' + p10;
  picStr10 := dlgOpenPic11.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr10);
end;

procedure TForm3.savePhoto(img: TImage; workpath, p: string);
var
  photopath: string;
begin
  photopath := 'PIC/' + p1 + '.jpg';
  img.picture.savetofile(workpath + photopath);
end;

procedure TForm3.btn18Click(Sender: TObject);
begin
  workpath1 := ExtractFilePath(application.exename);
  if dlgOpenPic2.Execute then
    img3.Picture.LoadFromFile(dlgOpenPic2.FileName)
  else
    Exit;
  p1 := edt2.text;
  savePhoto(img3, workpath1, p1);
  img3.Tag := 2;
  btn18.Caption := '已加载' + p1;
  picStr1 := dlgOpenPic2.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr1);

end;

procedure TForm3.btn19Click(Sender: TObject);
begin
  workpath2 := ExtractFilePath(application.exename);
  if dlgOpenPic3.Execute then
    img4.Picture.LoadFromFile(dlgOpenPic3.FileName)
  else
    Exit;
  p2 := edt5.text;
  savePhoto(img4, workpath2, p2);
  img4.Tag := 3;
  btn19.Caption := '已加载' + p2;
  picStr2 := dlgOpenPic3.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr2);
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec select_User');
  qry1.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');

  qry2.Close;
  qry2.SQL.Clear;
  qry2.SQL.Add('exec select_SYS_PIC');
  qry2.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');

  qry3.Close;
  qry3.SQL.Clear;
  qry3.SQL.Add('select * from SYS_PICPath');
  qry3.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');

  qry4.Close;
  qry4.SQL.Clear;
  qry4.SQL.Add('exec select_SYS_PhotoName');
  qry4.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');
end;

procedure TForm3.tempName(num: string; qry: TADOQuery);
begin
  //添加命名表
  qry.Close;
  qry.SQL.Clear;
//  tempAdd(inttostr(proNumInt), tempStr, qry1);
  qry.SQL.Add('exec insert_SYS_PhotoName2 ''' + num + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('命名表序列号已新建成功');
end;

procedure TForm3.tempPIC(num: string; qry: TADOQuery);
begin
  //添加图片表
  qry.Close;
  qry.SQL.Clear;
//  tempAdd(inttostr(proNumInt), tempStr, qry1);
  qry.SQL.Add('exec insert_SYS_PIC ''' + num + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('图片表序列号已新建成功');
end;

procedure TForm3.tempPICPath(num: string; qry: TADOQuery);
begin
  //添加路径表
  qry.Close;
  qry.SQL.Clear;
//  tempAdd(inttostr(proNumInt), tempStr, qry1);
  qry.SQL.Add('exec insert_SYS_PICPath ''' + num + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('路径表序列号已新建成功');
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

procedure TForm3.btn20Click(Sender: TObject);
begin
  workpath3 := ExtractFilePath(application.exename);
  if dlgOpenPic4.Execute then
    img5.Picture.LoadFromFile(dlgOpenPic4.FileName)
  else
    Exit;
  p3 := edt6.Text;
  savePhoto(img5, workpath3, p3);
  img5.Tag := 4;
  btn20.Caption := '已加载' + p3;
  picStr3 := dlgOpenPic4.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr3);
end;

procedure TForm3.btn21Click(Sender: TObject);
begin
  workpath4 := ExtractFilePath(application.exename);
  if dlgOpenPic5.Execute then
    img6.Picture.LoadFromFile(dlgOpenPic5.FileName)
  else
    Exit;
  p4 := edt7.Text;
  savePhoto(img6, workpath4, p4);
  img6.Tag := 5;
  btn21.Caption := '已加载' + p4;
  picStr4 := dlgOpenPic5.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr4);
end;

procedure TForm3.btn22Click(Sender: TObject);
begin
  workpath5 := ExtractFilePath(application.exename);
  if dlgOpenPic6.Execute then
    img7.Picture.LoadFromFile(dlgOpenPic6.FileName)
  else
    Exit;
  p5 := edt9.Text;
  savePhoto(img7, workpath5, p5);
  img7.Tag := 6;
  btn22.Caption := '已加载' + p5;
  picStr5 := dlgOpenPic6.FileName;

  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr5);
end;

procedure TForm3.btn23Click(Sender: TObject);
begin
  upPicDemo(img3, qry2, '图片一');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');

end;

procedure TForm3.btn24Click(Sender: TObject);
begin
  upPicDemo(img4, qry2, '图片二');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn25Click(Sender: TObject);
begin
  upPicDemo(img5, qry2, '图片三');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn26Click(Sender: TObject);
begin
  upPicDemo(img6, qry2, '图片四');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn27Click(Sender: TObject);
begin
  upPicDemo(img7, qry2, '图片五');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn28Click(Sender: TObject);
begin
  upPicDemo(img8, qry2, '图片六');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn29Click(Sender: TObject);
begin
  upPicDemo(img9, qry2, '图片七');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.upPicDemo(img: TImage; qry: TADOQuery; str: string);
var
  PicDStream: TMemoryStream;
begin
  if img.Picture.Graphic <> nil then
  begin
    PicDStream := TMemoryStream.Create; //  创建内存流
    img.Picture.Graphic.SaveToStream(PicDStream);
    qry.Edit;
    TBlobField(qry.FieldByName(str)).LoadFromStream(PicDStream);
    qry.Post;
    PicDStream.Free;
  end;
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
  tempPIC(tempStr2, qry2);
  tempPICPath(tempStr2, qry3);
  tempName(tempStr2, qry4);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec insert_SYS_User''' + proName + ''',''' + applicant + ''',''' + proDescription + ''',''' + upLoadTime + ''',''' + tempStr + '''');
  qry1.ExecSQL;

  btn1.Click;

end;

procedure TForm3.btn30Click(Sender: TObject);
begin
  upPicDemo(img10, qry2, '图片八');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn31Click(Sender: TObject);
begin
  upPicDemo(img11, qry2, '图片九');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.btn32Click(Sender: TObject);
begin
  upPicDemo(img12, qry2, '图片十');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
end;

procedure TForm3.ifUpPic(img: TImage; qry: TADOQuery; str: string);
begin
  if img.Picture.Graphic <> nil then
  begin
    upPicDemo(img, qry, str);
  end;
end;

procedure TForm3.btn33Click(Sender: TObject);
begin
  ifUpPic(img3, qry2, '图片一');
  ifUpPic(img4, qry2, '图片二');
  ifUpPic(img5, qry2, '图片三');
  ifUpPic(img6, qry2, '图片四');
  ifUpPic(img7, qry2, '图片五');
  ifUpPic(img8, qry2, '图片六');
  ifUpPic(img9, qry2, '图片七');
  ifUpPic(img10, qry2, '图片八');
  ifUpPic(img11, qry2, '图片九');
  ifUpPic(img12, qry2, '图片十');
  btn1.Click;
end;

procedure TForm3.btn34Click(Sender: TObject);
begin
  img3.Picture.Graphic := nil;
  img4.Picture.Graphic := nil;
  img5.Picture.Graphic := nil;
  img6.Picture.Graphic := nil;
  img7.Picture.Graphic := nil;
  img8.Picture.Graphic := nil;
  img9.Picture.Graphic := nil;
  img10.Picture.Graphic := nil;
  img11.Picture.Graphic := nil;
  img12.Picture.Graphic := nil;
  btn18.Caption := '加载1';
  btn19.Caption := '加载2';
  btn20.Caption := '加载3';
  btn21.Caption := '加载4';
  btn22.Caption := '加载5';
  btn13.Caption := '加载6';
  btn14.Caption := '加载7';
  btn15.Caption := '加载8';
  btn16.Caption := '加载9';
  btn17.Caption := '加载10';
end;

function TForm3.readImg(qry: TADOQuery; str: string): TJPEGImage;
var
  PicStream: TMemoryStream;
  MyFormat: Word;
  AData: THandle;      //临时句柄变量。
  APalette: HPALETTE;  //临时变量。
begin
   //
  PicStream := TMemoryStream.Create;

  TBlobField(qry.FieldByName(str)).SaveToStream(PicStream);
  PicStream.Position := 0;

  JpgImg := TJpegimage.Create;
  JpgImg.LoadFromStream(PicStream);

  Result := JpgImg;
//
  JpgImg.SaveToClipboardFormat(MyFormat, AData, APalette);
  ClipBoard.SetAsHandle(MyFormat, AData);

end;

procedure TForm3.toExcel(col, row: string; var FWorksheet: OleVariant);
begin
  FWorksheet.Range[col, row].select;
  FWorksheet.Paste;
end;

procedure TForm3.btn35Click(Sender: TObject);
var
  FExcel, FWorkBook, FWorksheet: OleVariant;
  col, row: integer;
begin
//
  //创建Excel
  FExcel := CreateOleObject('Excel.Application');
  //创建FWorkBook
  FWorkBook := FExcel.WorkBooks.Add;
  //创建FWorksheet
  FWorksheet := FWorkBook.Worksheets['sheet1'];

  FWorksheet.Select;
  FExcel.visible := true;

  col := dbgrd2.DataSource.DataSet.FieldCount;
  row := dbgrd2.DataSource.DataSet.RecordCount;

  FExcel.ActiveSheet.Rows[1].Font.Name := '宋体';
  FExcel.ActiveSheet.Rows[1].Font.Color := clBlack;
  FExcel.ActiveSheet.Rows[1].Font.Bold := True;
  FExcel.ActiveSheet.Rows[1].Font.UnderLine := False;

//  Application.ProcessMessages;

  for col := 1 to dbgrd2.FieldCount do
  begin
        //表头数据赋值
    FWorksheet.Cells[1, col] := dbgrd2.Fields[col - 1].DisplayName;
        //第一行字体加粗
    FWorksheet.Cells[1, col].Font.Bold := True;
        //设置指定列的宽度
//    FWorksheet.Columns[col].ColumnWidth := dbgrd2.Fields[col - 1].DisplayWidth;
    FWorksheet.Columns[col].ColumnWidth := 55;
//    FWorksheet.Rows[2].RowHeight := 10/0.035;
        //单元格格式化
    if (dbgrd2.Fields[col - 1].DataType = ftString) or (dbgrd2.Fields[col - 1].DataType = ftWideString) then
    begin           //对于“字符串”型数据则设Excel单元格为“文本”型
      FWorksheet.Columns[col].NumberFormatLocal := '@';
    end;

  end;
  Inc(col);
  readImg(qry2, '图片一');
  toExcel('B2', 'H2', FWorksheet);
//
  readImg(qry2, '图片二');
  toExcel('C2', 'H3', FWorksheet);

end;

procedure TForm3.pathAdd(qry: TADOQuery; str: string);
begin
  qry.Close;
  qry.SQL.Add(str);
  qry.ExecSQL;           //
end;

procedure TForm3.btn36Click(Sender: TObject);
begin
  pathAdd(qry3, 'exec modify_SYS_PICPath''' + picStr1 + ''',''' + picStr2 + ''',''' + picStr3 + ''',''' + picStr4 + ''',''' + picStr5 + ''',''' + picStr6 + ''',''' + picStr7 + ''',''' + picStr8 + ''',''' + picStr9 + ''',''' + picStr10 + ''',''' + IDStr + '''');
  pathAdd(qry4, 'exec insert_SYS_PhotoName''' + p1 + ''',''' + p2 + ''',''' + p3 + ''',''' + p4 + ''',''' + p5 + ''',''' + p6 + ''',''' + p7 + ''',''' + p8 + ''',''' + p9 + ''',''' + p10 + ''',''' + IDStr + '''');
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('路径上传成功');

  qry3.Close;
  qry3.SQL.Clear;
  qry3.SQL.Add('select * from SYS_PICPath');
  qry3.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');

  qry4.Close;
  qry4.SQL.Clear;
  qry4.SQL.Add('exec select_SYS_PhotoName');
  qry4.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('刷新成功');

end;

procedure TForm3.btn37Click(Sender: TObject);
begin
  DBGrid2Excel.DBGridToExcel(dbgrd1);
  DBGrid2Excel.DBGridToExcel(dbgrd2);
  DBGrid2Excel.DBGridToExcel(dbgrd3);
  DBGrid2Excel.DBGridToExcel(dbgrd4);
end;

//procedure TForm3.succeeded();
//begin
// //
//end;

procedure TForm3.btn38Click(Sender: TObject);
var
  msImg, msImg2, msImg3, msImg4, msImg5, msImg6, msImg7, msImg8, msImg9, msImg10: TMemoryStream;
  jpeg, jpeg2, jpeg3, jpeg4, jpeg5, jpeg6, jpeg7, jpeg8, jpeg9, jpeg10: TJPEGImage;
  Excel, sheet: Variant;
  iRec, col: Integer;
begin
//
  iRec := 1;
  Excel := CreateOleObject('Excel.Application');
  Excel.WorkBooks.Add;

  sheet := Excel.WorkSheets[1];
  sheet.Activate;

  col := dbgrd2.DataSource.DataSet.FieldCount;

  try

    qry2.SQL.Clear;
    qry2.SQL.Add('exec select_SYS_PIC');
    qry2.Open;
    qry2.First;

    for col := 1 to dbgrd2.FieldCount do
    begin
        //表头数据赋值
      Excel.Cells[1, col] := dbgrd2.Fields[col - 1].DisplayName;
        //第一行字体加粗
      Excel.Cells[1, col].Font.Bold := True;
        //设置指定列的宽度
//    Excel.Columns[col].ColumnWidth := dbgrd2.Fields[col - 1].DisplayWidth;
      Excel.Columns[col].ColumnWidth := 55;
//    Excel.Rows[2].RowHeight := 10/0.035;
        //单元格格式化
      if (dbgrd2.Fields[col - 1].DataType = ftString) or (dbgrd2.Fields[col - 1].DataType = ftWideString) then
      begin           //对于“字符串”型数据则设Excel单元格为“文本”型
        Excel.Columns[col].NumberFormatLocal := '@';
      end;

    end;
    while not qry2.Eof do
    begin
      try
        jpeg := TJPEGImage.Create;
        msImg := TMemoryStream.Create;
   // 字段导入
        Excel.Cells[iRec, 1].Value := qry2.Fields[0].AsString;

        // 图片导入1

        TBlobField(qry2.FieldByName('图片一')).SaveToStream(msImg);
        msImg.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg.LoadFromStream(msImg);

        img13.Picture.Graphic := jpeg;
        img13.Picture.Assign(jpeg);
        sheet.Range['B2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;
        Inc(iRec);
        qry2.Next;


        // 图片导入2
        jpeg2 := TJPEGImage.Create;
        msImg2 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片二')).SaveToStream(msImg2);
        msImg2.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg2.LoadFromStream(msImg2);

        img13.Picture.Graphic := jpeg2;
        img13.Picture.Assign(jpeg2);
        sheet.Range['C2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;

         // 图片导入3
        jpeg3 := TJPEGImage.Create;
        msImg3 := TMemoryStream.Create;

        Excel.Cells[iRec,3].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片三')).SaveToStream(msImg3);
        msImg3.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg3.LoadFromStream(msImg3);

        img13.Picture.Graphic := jpeg3;
        img13.Picture.Assign(jpeg3);
        sheet.Range['D2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;

         // 图片导入4
        jpeg4 := TJPEGImage.Create;
        msImg4 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片四')).SaveToStream(msImg4);
        msImg4.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg4.LoadFromStream(msImg4);

        img13.Picture.Graphic := jpeg4;
        img13.Picture.Assign(jpeg4);
        sheet.Range['E2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;

         // 图片导入5
        jpeg5 := TJPEGImage.Create;
        msImg5 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片五')).SaveToStream(msImg5);
        msImg5.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg5.LoadFromStream(msImg5);

        img13.Picture.Graphic := jpeg5;
        img13.Picture.Assign(jpeg5);
        sheet.Range['F2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;

         // 图片导入6
        jpeg6 := TJPEGImage.Create;
        msImg6 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片六')).SaveToStream(msImg6);
        msImg6.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg6.LoadFromStream(msImg6);

        img13.Picture.Graphic := jpeg6;
        img13.Picture.Assign(jpeg6);
        sheet.Range['G2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;


         // 图片导入7
        jpeg7 := TJPEGImage.Create;
        msImg7 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片七')).SaveToStream(msImg7);
        msImg7.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg7.LoadFromStream(msImg7);

        img13.Picture.Graphic := jpeg7;
        img13.Picture.Assign(jpeg7);
        sheet.Range['H2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;


         // 图片导入8
        jpeg8 := TJPEGImage.Create;
        msImg8 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片八')).SaveToStream(msImg8);
        msImg8.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg8.LoadFromStream(msImg8);

        img13.Picture.Graphic := jpeg8;
        img13.Picture.Assign(jpeg8);
        sheet.Range['I2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;


         // 图片导入9
        jpeg9 := TJPEGImage.Create;
        msImg9 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片九')).SaveToStream(msImg9);
        msImg9.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg9.LoadFromStream(msImg9);

        img13.Picture.Graphic := jpeg9;
        img13.Picture.Assign(jpeg9);
        sheet.Range['J2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;


         // 图片导入10
        jpeg10 := TJPEGImage.Create;
        msImg10 := TMemoryStream.Create;

        Excel.Cells[iRec, 2].Value := qry2.Fields[0].AsString;

        TBlobField(qry2.FieldByName('图片十')).SaveToStream(msImg10);
        msImg10.Position := 0;
        sheet.Rows[iRec].RowHeight := 5 / 0.035; // 设置行高度以适合图片

        jpeg10.LoadFromStream(msImg10);

        img13.Picture.Graphic := jpeg10;
        img13.Picture.Assign(jpeg10);
        sheet.Range['K2 : Z2'].Select;
        Clipboard.Assign(img13.Picture);
        sheet.Paste;

      finally
        msImg.Free;
        jpeg.Free;

        msImg2.Free;
        jpeg2.Free;

        msImg3.Free;
        jpeg3.Free;

        msImg4.Free;
        jpeg4.Free;

        msImg5.Free;
        jpeg5.Free;

        msImg6.Free;
        jpeg6.Free;

        msImg7.Free;
        jpeg7.Free;

        msImg8.Free;
        jpeg8.Free;

        msImg9.Free;
        jpeg9.Free;

        msImg10.Free;
        jpeg10.Free;
      end;
    end;

    Excel.Visible := True;
  finally

  end;
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
  IDCon := dbgrd2.DataSource.DataSet.FieldByName('ID').AsString;
  IDStr := dbgrd1.DataSource.DataSet.FieldByName('图片序号').AsString;
  PICStr := dbgrd4.DataSource.DataSet.FieldByName('ID').AsString;
  idpathstr := dbgrd4.DataSource.DataSet.FieldByName('ID').AsString;
end;

procedure TForm3.edt3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn6Click(nil);
end;

procedure TForm3.edt8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn6Click(nil);
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  proNumInt := 0;
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  Form3 := nil; //在窗口销毁时，把Form3变量设为nil
end;

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

procedure TForm3.openPicDemo(img: TImage; qry: TADOQuery; str: string);
var
  PicOStream: TMemoryStream;
  JpgImg: TJpegimage;
begin
   //  看图

  if not qry.FieldByName(str).IsNull then
  begin
    PicOStream := TMemoryStream.Create;

    TBlobField(qry.FieldByName(str)).SaveToStream(PicOStream);
    PicOStream.Position := 0;
    img.Picture.Graphic := nil;

    JpgImg := TJpegimage.Create;
    JpgImg.LoadFromStream(PicOStream);

    img.Picture.Graphic := JpgImg;

    if not Assigned(Form1) then //确保只创建一个窗口
    begin
      Form1 := TForm1.Create(Application);
    end;
    Form1.Show;
    Form1.img1.Stretch := True;
    Form1.img1.Picture.Graphic := JpgImg;
    Form1.Caption := str;
    JpgImg.Free;
    PicOStream.Free;

  end
  else
  begin
    ShowMessage('对不起，图片为空.');
  end;

end;

procedure TForm3.isNullPic(img: TImage; qry: TADOQuery; str: string);
begin
   //   判断是否有图片
  if not qry.FieldByName(str).IsNull then
  begin
    openPicDemo(img, qry, str);
    SetDlgAutoClose(2 * 1000, True);
    ShowMessage('打开了' + str);
  end;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
  isNullPic(img3, qry2, '图片一');
  isNullPic(img4, qry2, '图片二');
  isNullPic(img5, qry2, '图片三');
  isNullPic(img6, qry2, '图片四');
  isNullPic(img7, qry2, '图片五');
  isNullPic(img8, qry2, '图片六');
  isNullPic(img9, qry2, '图片七');
  isNullPic(img10, qry2, '图片八');
  isNullPic(img11, qry2, '图片九');
  isNullPic(img12, qry2, '图片十');
end;

end.

