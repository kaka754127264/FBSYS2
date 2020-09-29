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
    intgrfldqry2ID: TIntegerField;
    blbfldqry2ͼƬһ: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬ��: TBlobField;
    blbfldqry2ͼƬʮ: TBlobField;
    intgrfldqry2ͼƬ����: TIntegerField;
    pm2: TPopupMenu;
    N3: TMenuItem;
    btn34: TButton;
    intgrfldqry1���к�: TIntegerField;
    wdstrngfldqry1��Ʒ: TWideStringField;
    blbfldqry1ͼƬ: TBlobField;
    wdstrngfldqry1������: TWideStringField;
    wdstrngfldqry1��������: TWideStringField;
    wdstrngfldqry1�����: TWideStringField;
    dtmfldqry1�������: TDateTimeField;
    dtmfldqry1ʱ��: TDateTimeField;
    intgrfldqry1ͼƬ���: TIntegerField;
    btn35: TButton;
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
//    procedure copyImg(img: imgWidthAndHeight);
  private
    { Private declarations }
    //function GetID: Integer;
    type
      imgWidthAndHeight = record //�ȶ���һ��Record��2������ֵ
        jWidth: Integer;
        jHeight: Integer;
      end;
    var
      proNumberStr, proNameStr, IDStr(*, applicantStr, proDescriptionStr, imageDescriptionStr, auditorStr, reviewDateStr,*), pathStr: string;
      imgWidth, imgHeight: Integer;
      JpgImg: TJpegimage;
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
  if dlgOpenPic7.Execute then
    img8.Picture.LoadFromFile(dlgOpenPic7.FileName)
  else
    Exit;
  img8.Tag := 7;
  btn13.Caption := '�Ѽ���';
  picStr6 := dlgOpenPic7.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr6);
end;

procedure TForm3.btn14Click(Sender: TObject);
begin
  if dlgOpenPic8.Execute then
    img9.Picture.LoadFromFile(dlgOpenPic8.FileName)
  else
    Exit;
  img9.Tag := 8;
  btn14.Caption := '�Ѽ���';
  picStr7 := dlgOpenPic8.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr7);
end;

procedure TForm3.btn15Click(Sender: TObject);
begin
  if dlgOpenPic9.Execute then
    img10.Picture.LoadFromFile(dlgOpenPic9.FileName)
  else
    Exit;
  img10.Tag := 9;
  btn15.Caption := '�Ѽ���';
  picStr8 := dlgOpenPic9.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr8);
end;

procedure TForm3.btn16Click(Sender: TObject);
begin
  if dlgOpenPic10.Execute then
    img11.Picture.LoadFromFile(dlgOpenPic10.FileName)
  else
    Exit;
  img11.Tag := 10;
  btn16.Caption := '�Ѽ���';
  picStr9 := dlgOpenPic10.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr9);
end;

procedure TForm3.btn17Click(Sender: TObject);
begin
  if dlgOpenPic11.Execute then
    img12.Picture.LoadFromFile(dlgOpenPic11.FileName)
  else
    Exit;
  img12.Tag := 11;
  btn17.Caption := '�Ѽ���';
  picStr10 := dlgOpenPic11.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr10);
end;

procedure TForm3.btn18Click(Sender: TObject);
begin
  if dlgOpenPic2.Execute then
    img3.Picture.LoadFromFile(dlgOpenPic2.FileName)
  else
    Exit;
  img3.Tag := 2;
  btn18.Caption := '�Ѽ���';
  picStr1 := dlgOpenPic2.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr1);

end;

procedure TForm3.btn19Click(Sender: TObject);
begin
  if dlgOpenPic3.Execute then
    img4.Picture.LoadFromFile(dlgOpenPic3.FileName)
  else
    Exit;
  img4.Tag := 3;
  btn19.Caption := '�Ѽ���';
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
  ShowMessage('ˢ�³ɹ�');

  qry2.Close;
  qry2.SQL.Clear;
  qry2.SQL.Add('exec select_SYS_PIC');
  qry2.Open;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('ˢ�³ɹ�');
end;

procedure TForm3.tempPIC(num: string; qry: TADOQuery);
begin
  //����ͼƬ��
  qry.Close;
  qry.SQL.Clear;
//  tempAdd(inttostr(proNumInt), tempStr, qry1);
  qry.SQL.Add('exec insert_SYS_PIC ''' + num + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('ͼƬ�����к����½��ɹ�');
end;

procedure TForm3.tempAdd(num, tempStrStr: string; qry: TADOQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('exec insert_SYS_ZS ''' + num + ''' ,''' + tempStrStr + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('���к����½��ɹ�');
end;

procedure TForm3.tempDelete(num: string; qry: TADOQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('exec delete_SYS_ZS ''' + num + ''',''' + num + '''');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('���к���ɾ���ɹ�');
end;

procedure TForm3.tempAll(qry: TADOQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('exec delete_ALL');
  qry.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('�����');
end;

procedure TForm3.btn20Click(Sender: TObject);
begin
  if dlgOpenPic4.Execute then
    img5.Picture.LoadFromFile(dlgOpenPic4.FileName)
  else
    Exit;
  img5.Tag := 4;
  btn20.Caption := '�Ѽ���';
  picStr3 := dlgOpenPic4.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr3);
end;

procedure TForm3.btn21Click(Sender: TObject);
begin
  if dlgOpenPic5.Execute then
    img6.Picture.LoadFromFile(dlgOpenPic5.FileName)
  else
    Exit;
  img6.Tag := 5;
  btn21.Caption := '�Ѽ���';
  picStr4 := dlgOpenPic5.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr4);
end;

procedure TForm3.btn22Click(Sender: TObject);
begin
  if dlgOpenPic6.Execute then
    img7.Picture.LoadFromFile(dlgOpenPic6.FileName)
  else
    Exit;
  img7.Tag := 6;
  btn22.Caption := '�Ѽ���';
  picStr5 := dlgOpenPic6.FileName;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage(picStr5);
end;

procedure TForm3.btn23Click(Sender: TObject);
begin
  upPicDemo(img3, qry2, 'ͼƬһ');

end;

procedure TForm3.btn24Click(Sender: TObject);
begin
  upPicDemo(img4, qry2, 'ͼƬ��');

end;

procedure TForm3.btn25Click(Sender: TObject);
begin
  upPicDemo(img5, qry2, 'ͼƬ��');

end;

procedure TForm3.btn26Click(Sender: TObject);
begin
  upPicDemo(img6, qry2, 'ͼƬ��');

end;

procedure TForm3.btn27Click(Sender: TObject);
begin
  upPicDemo(img7, qry2, 'ͼƬ��');

end;

procedure TForm3.btn28Click(Sender: TObject);
begin
  upPicDemo(img8, qry2, 'ͼƬ��');

end;

procedure TForm3.btn29Click(Sender: TObject);
begin
  upPicDemo(img9, qry2, 'ͼƬ��');

end;

procedure TForm3.upPicDemo(img: TImage; qry: TADOQuery; str: string);
var
  PicDStream: TMemoryStream;
begin
  if img.Picture.Graphic <> nil then
  begin
    PicDStream := TMemoryStream.Create; //  �����ڴ���
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
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec insert_SYS_User''' + proName + ''',''' + applicant + ''',''' + proDescription + ''',''' + upLoadTime + ''',''' + tempStr + '''');
  qry1.ExecSQL;

  btn1.Click;

end;

procedure TForm3.btn30Click(Sender: TObject);
begin
  upPicDemo(img10, qry2, 'ͼƬ��');

end;

procedure TForm3.btn31Click(Sender: TObject);
begin
  upPicDemo(img11, qry2, 'ͼƬ��');

end;

procedure TForm3.btn32Click(Sender: TObject);
begin
  upPicDemo(img12, qry2, 'ͼƬʮ');

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
  ifUpPic(img3, qry2, 'ͼƬһ');
  ifUpPic(img4, qry2, 'ͼƬ��');
  ifUpPic(img5, qry2, 'ͼƬ��');
  ifUpPic(img6, qry2, 'ͼƬ��');
  ifUpPic(img7, qry2, 'ͼƬ��');
  ifUpPic(img8, qry2, 'ͼƬ��');
  ifUpPic(img9, qry2, 'ͼƬ��');
  ifUpPic(img10, qry2, 'ͼƬ��');
  ifUpPic(img11, qry2, 'ͼƬ��');
  ifUpPic(img12, qry2, 'ͼƬʮ');
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
  btn18.Caption := '����1';
  btn19.Caption := '����2';
  btn20.Caption := '����3';
  btn21.Caption := '����4';
  btn22.Caption := '����5';
  btn13.Caption := '����6';
  btn14.Caption := '����7';
  btn15.Caption := '����8';
  btn16.Caption := '����9';
  btn17.Caption := '����10';
end;

function TForm3.readImg(qry: TADOQuery; str: string): TJPEGImage;
var
  PicStream: TMemoryStream;
  MyFormat: Word;
  AData: THandle;      //��ʱ���������
  APalette: HPALETTE;  //��ʱ������
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
  //����Excel
  FExcel := CreateOleObject('Excel.Application');
  //����FWorkBook
  FWorkBook := FExcel.WorkBooks.Add;
  //����FWorksheet
  FWorksheet := FWorkBook.Worksheets['sheet1'];

  FWorksheet.Select;
  FExcel.visible := true;

  col := dbgrd2.DataSource.DataSet.FieldCount;
  row := dbgrd2.DataSource.DataSet.RecordCount;

  FExcel.ActiveSheet.Rows[1].Font.Name := '����';
  FExcel.ActiveSheet.Rows[1].Font.Color := clBlack;
  FExcel.ActiveSheet.Rows[1].Font.Bold := True;
  FExcel.ActiveSheet.Rows[1].Font.UnderLine := False;

//  Application.ProcessMessages;

  for col := 1 to dbgrd2.FieldCount do
  begin
        //��ͷ���ݸ�ֵ
    FWorksheet.Cells[1, col] := dbgrd2.Fields[col - 1].DisplayName;
        //��һ������Ӵ�
    FWorksheet.Cells[1, col].Font.Bold := True;
        //����ָ���еĿ���
//    FWorksheet.Columns[col].ColumnWidth := dbgrd2.Fields[col - 1].DisplayWidth;
    FWorksheet.Columns[col].ColumnWidth := 55;
//    FWorksheet.Rows[2].RowHeight := 10/0.035;
        //��Ԫ���ʽ��
    if (dbgrd2.Fields[col - 1].DataType = ftString) or (dbgrd2.Fields[col - 1].DataType = ftWideString) then
    begin           //���ڡ��ַ���������������Excel��Ԫ��Ϊ���ı�����
      FWorksheet.Columns[col].NumberFormatLocal := '@';
    end;


  end;
  Inc(col);

  readImg(qry2, 'ͼƬһ');
  toExcel('B2', 'H2', FWorksheet);
//
  readImg(qry2, 'ͼƬ��');
  toExcel('C2', 'H3', FWorksheet);

end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  tempDelete(proNumberStr, qry1);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec delete_SYS_User ''' + proNameStr + '''');
  qry1.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('ɾ���ɹ�');
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
  ShowMessage('�޸ĳɹ�');
  btn1.Click;

end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  img1.Picture.Graphic := nil;
  img1.Tag := 1;
  btn8.Caption := '��ͼ';
  lbl6.Caption := '·��';
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
    PicStream := TMemoryStream.Create; //  �����ڴ���
    img1.Picture.Graphic.SaveToStream(PicStream);
    qry1.Edit;
    TBlobField(qry1.FieldByName('ͼƬ')).LoadFromStream(PicStream);
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
  btn8.Caption := '�Ѽ���';
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
  proNameStr := dbgrd1.DataSource.DataSet.FieldByName('��Ʒ').AsString;
  proNumberStr := dbgrd1.DataSource.DataSet.FieldByName('���к�').AsString;
  IDStr := dbgrd1.DataSource.DataSet.FieldByName('ͼƬ���').AsString;

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
  Action := caFree; //���رմ���ʱ�ͷŴ���

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  proNumInt := 0;
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  Form3 := nil; //�ڴ�������ʱ����Form3������Ϊnil
end;

procedure TForm3.N1Click(Sender: TObject);
begin
        //ɾ������
  tempDelete(proNumberStr, qry1);
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec delete_SYS_User ''' + proNameStr + '''');
  qry1.ExecSQL;
  SetDlgAutoClose(2 * 1000, True);
  ShowMessage('ɾ���ɹ�');
  btn1.Click;
end;

procedure TForm3.N2Click(Sender: TObject);
var
  PicStream: TMemoryStream;
  JpgImg: TJpegimage;
begin
     //�鿴ͼƬ
  if not qry1.FieldByName('ͼƬ').IsNull then
  begin
    PicStream := TMemoryStream.Create;

    TBlobField(qry1.FieldByName('ͼƬ')).SaveToStream(PicStream);
    PicStream.Position := 0;
    img2.Picture.Graphic := nil;

    JpgImg := TJpegimage.Create;
    JpgImg.LoadFromStream(PicStream);

    img2.Picture.Graphic := JpgImg;

    if not Assigned(Form1) then //ȷ��ֻ����һ������
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
    ShowMessage('�Բ���ͼƬΪ��.');
  end;
end;

procedure TForm3.openPicDemo(img: TImage; qry: TADOQuery; str: string);
var
  PicOStream: TMemoryStream;
  JpgImg: TJpegimage;
begin
   //  ��ͼ

  if not qry.FieldByName(str).IsNull then
  begin
    PicOStream := TMemoryStream.Create;

    TBlobField(qry.FieldByName(str)).SaveToStream(PicOStream);
    PicOStream.Position := 0;
    img.Picture.Graphic := nil;

    JpgImg := TJpegimage.Create;
    JpgImg.LoadFromStream(PicOStream);

    img.Picture.Graphic := JpgImg;

    if not Assigned(Form1) then //ȷ��ֻ����һ������
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
    ShowMessage('�Բ���ͼƬΪ��.');
  end;

end;

procedure TForm3.isNullPic(img: TImage; qry: TADOQuery; str: string);
begin
   //   �ж��Ƿ���ͼƬ
  if not qry.FieldByName(str).IsNull then
  begin
    openPicDemo(img, qry, str);
    SetDlgAutoClose(2 * 1000, True);
    ShowMessage('����' + str);
  end;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
  isNullPic(img3, qry2, 'ͼƬһ');
  isNullPic(img4, qry2, 'ͼƬ��');
  isNullPic(img5, qry2, 'ͼƬ��');
  isNullPic(img6, qry2, 'ͼƬ��');
  isNullPic(img7, qry2, 'ͼƬ��');
  isNullPic(img8, qry2, 'ͼƬ��');
  isNullPic(img9, qry2, 'ͼƬ��');
  isNullPic(img10, qry2, 'ͼƬ��');
  isNullPic(img11, qry2, 'ͼƬ��');
  isNullPic(img12, qry2, 'ͼƬʮ');
end;

end.

