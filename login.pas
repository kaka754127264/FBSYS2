unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, System.TypInfo;

type
  TForm10 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    con1: TADOConnection;
    qry1: TADOQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses
  user, admin, TimerDlg;

procedure TForm10.btn1Click(Sender: TObject);
type
  TMyStrSel = (用户, 管理员);
var
  result, msg, userid, password,str: string;
  strSel: TMyStrSel;
begin
  userid := Trim(edt1.Text);
  password := Trim(edt2.Text);

  //  ADOQuery1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('exec login_FB ' + userid + ', ' + password + ',''1'',''1''');
  qry1.open;
  result := qry1.FieldByName('result').AsString;
  msg := qry1.FieldByName('msg').AsString;

  str := msg;
  strSel := TMyStrSel(GetEnumValue(TypeInfo(TMyStrSel), str));

  case strSel of
    管理员:
      begin
        if not Assigned(Form3) then //确保只创建一个窗口
        begin
          Form3 := TForm3.Create(Application);
        end;
        SetDlgAutoClose(2 * 1000, True);
        ShowMessage(msg);
        Form3.ShowModal;
      end;
    用户:
      begin
        if not Assigned(Form4) then //确保只创建一个窗口
        begin
          Form4 := TForm4.Create(Application);
        end;
        SetDlgAutoClose(2 * 1000, True);
        ShowMessage(msg);
        Form4.ShowModal;
      end;
  else
    begin
      SetDlgAutoClose(2 * 1000, True);
      ShowMessage(msg);
    end;
  end;
  (*
  if result = 'False' then
  begin
    if not Assigned(Form3) then //确保只创建一个窗口
    begin
      Form3 := TForm3.Create(Application);
    end;
    SetDlgAutoClose(2 * 1000, True);
    ShowMessage(msg);
    Form3.ShowModal;
  end;

  if result = 'True' then
  begin
    if not Assigned(Form4) then //确保只创建一个窗口
    begin
      Form4 := TForm4.Create(Application);
    end;
    SetDlgAutoClose(2 * 1000, True);
    ShowMessage(msg);
    Form4.ShowModal;
  end;
  *)
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
  Form10.Close;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体
  //Form10.Close;
end;

procedure TForm10.FormDestroy(Sender: TObject);
begin
  Form10 := nil; //在窗口销毁时，把Form10变量设为nil
end;

end.

