unit admin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm4 = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree; //当关闭窗口时释放窗体
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  Form4 := nil; //在窗口销毁时，把Form4变量设为nil
end;

end.

