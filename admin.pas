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
    qry2: TADOQuery;
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
    N1: TMenuItem;
    intgrfldqry1�������к�: TIntegerField;
    wdstrngfldqry1������: TWideStringField;
    wdstrngfldqry1������Ա: TWideStringField;
    dtmfldqry1��Ʒ��������: TDateTimeField;
    dtmfldqry1�����ϴ�ʱ��: TDateTimeField;
    wdstrngfldqry1�û���Ʒ: TWideStringField;
    wdstrngfldqry1������: TWideStringField;
    wdstrngfldqry1��������: TWideStringField;
    wdstrngfldqry1�����: TWideStringField;
    dtmfldqry1�������: TDateTimeField;
    blbfldqry1ͼƬ: TBlobField;
    dtmfldqry1�û��ϴ�ʱ��: TDateTimeField;
    intgrfldqry1�û����к�: TIntegerField;
    intgrfldqry1ͼƬ���: TIntegerField;
    blbfldqry1ͼƬһ: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬ��: TBlobField;
    blbfldqry1ͼƬʮ: TBlobField;
    intgrfldqry1ͼƬ����: TIntegerField;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
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
    procedure openPicDemo(img: TImage; qry: TADOQuery; str: string);
    procedure isNullPic(img: TImage; qry: TADOQuery; str: string);
//    procedure InsertPicture(ActiveSheet: OleVariant; ImageFilePath: string; ImageHeight, PictureTop: Integer);
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
  ShowMessage('�ɹ�');

end;

procedure TForm4.btn2Click(Sender: TObject);
var
  FExcel, FWorkBook, FWorksheet: OleVariant;
  col, row, jcol, jrow: integer;
  Cell1, Cell2, Range: Variant;

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


  col := dbgrd1.DataSource.DataSet.FieldCount;
  row := dbgrd1.DataSource.DataSet.RecordCount;

  FExcel.ActiveSheet.Rows[1].Font.Name := '����';
  FExcel.ActiveSheet.Rows[1].Font.Color := clBlack;
  FExcel.ActiveSheet.Rows[1].Font.Bold := True;
  FExcel.ActiveSheet.Rows[1].Font.UnderLine := False;

  Application.ProcessMessages;

  for col := 1 to dbgrd1.FieldCount do
  begin
        //��ͷ���ݸ�ֵ
    FWorksheet.Cells[1, col] := dbgrd1.Fields[col - 1].DisplayName;
        //��һ������Ӵ�
    FWorksheet.Cells[1, col].Font.Bold := True;
        //����ָ���еĿ���
    FWorksheet.Columns[col].ColumnWidth := dbgrd1.Fields[col - 1].DisplayWidth;
        //��Ԫ���ʽ��
    if (dbgrd1.Fields[col - 1].DataType = ftString) or (dbgrd1.Fields[col - 1].DataType = ftWideString) then
    begin           //���ڡ��ַ���������������Excel��Ԫ��Ϊ���ı�����
      FWorksheet.Columns[col].NumberFormatLocal := '@';
    end;
  end;
  Inc(col);

//  while not dbgrd1.DataSource.DataSet.Eof do
//  begin
//     for col := 0 to dbgrd1.Columns.Count - 1 do
//     begin
//       FWorksheet.cells[jcol + 1, col + 1] := dbgrd1.Columns.Items[col].Field.AsString;
//       FWorksheet.cells[1,]
//     end;
//     Inc(jcol);
//     dbgrd1.DataSource.DataSet.Next;
//  end;



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
(*adminProNumberStr��adminProNameStr,developerStr,testerStr,proTestDateStr,adminUpTimeStr,userUpTimeStr,
    userProNumberStr,userProNameStr, applicantStr, proDescriptionStr, imageDescriptionStr,
     auditorStr, reviewDateStr*)

begin
  adPNumberStr := dbgrd1.DataSource.DataSet.FieldByName('�������к�').AsString;
  //adPNameStr := dbgrd1.DataSource.DataSet.FieldByName('������Ʒ').AsString;
//  developerStr := dbgrd1.DataSource.DataSet.FieldByName('������').AsString;
//  testerStr := dbgrd1.DataSource.DataSet.FieldByName('������Ա').AsString;
//  proTestDateStr := dbgrd1.DataSource.DataSet.FieldByName('��Ʒ��������').AsString;
//  adminUpTimeStr := dbgrd1.DataSource.DataSet.FieldByName('�����ϴ�ʱ��').AsString;
//  userUpTimeStr := dbgrd1.DataSource.DataSet.FieldByName('�û��ϴ�ʱ��').AsString;
//  userProNumberStr := dbgrd1.DataSource.DataSet.FieldByName('�û����к�').AsString;
//  userProNameStr := dbgrd1.DataSource.DataSet.FieldByName('�û���Ʒ').AsString;
//  applicantStr := dbgrd1.DataSource.DataSet.FieldByName('������').AsString;
//  proDescriptionStr := dbgrd1.DataSource.DataSet.FieldByName('��������').AsString;
//  imageDescriptionStr := dbgrd1.DataSource.DataSet.FieldByName('ͼƬ').AsString;
//  auditorStr := dbgrd1.DataSource.DataSet.FieldByName('�����').AsString;
//  reviewDateStr := dbgrd1.DataSource.DataSet.FieldByName('�������').AsString;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //���رմ���ʱ�ͷŴ���
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  Form4 := nil; //�ڴ�������ʱ����Form4������Ϊnil
end;

procedure TForm4.N1Click(Sender: TObject);
begin
//
  if MessageDlg('ȷ��Ҫ����', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    isNullPic(img3, qry1, 'ͼƬ��');
    isNullPic(img4, qry1, 'ͼƬ��');
    isNullPic(img5, qry1, 'ͼƬ��');
    isNullPic(img6, qry1, 'ͼƬ��');
    isNullPic(img7, qry1, 'ͼƬ��');
    isNullPic(img8, qry1, 'ͼƬ��');
    isNullPic(img9, qry1, 'ͼƬ��');
    isNullPic(img10, qry1, 'ͼƬ��');
    isNullPic(img11, qry1, 'ͼƬʮ');
  end;

end;

procedure TForm4.isNullPic(img: TImage; qry: TADOQuery; str: string);
begin
   //   �ж��Ƿ���ͼƬ
  if not qry.FieldByName(str).IsNull then
  begin
    openPicDemo(img, qry, str);
    SetDlgAutoClose(2 * 1000, True);
    ShowMessage('����' + str);
  end;
end;

procedure TForm4.openPicDemo(img: TImage; qry: TADOQuery; str: string);
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

procedure TForm4.N2Click(Sender: TObject);
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
    img1.Picture.Graphic := nil;

    JpgImg := TJpegimage.Create;
    JpgImg.LoadFromStream(PicStream);

    img1.Picture.Graphic := JpgImg;

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

end.

