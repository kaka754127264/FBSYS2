unit user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体

end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
  Form3 := nil; //在窗口销毁时，把Form3变量设为nil
end;

end.

