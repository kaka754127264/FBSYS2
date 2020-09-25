unit TimerDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls;


// 如果指定的时间没有操作对话框,则自动关闭
procedure ResetDlgAutoClose;

procedure SetDlgAutoClose(nTime: Integer; ADoHint: Boolean = False);

implementation

{** 如果对话框被打开,则在指定时间后关闭,并在标题栏进行提示 }
var
  nWndCount: Integer = 0;
  SavWnds, SavWnds2: array of THandle;
  hDlgWnd: THandle = 0;
  hTimerk: Integer = 0;
  nTimerTick: Integer = 0;
  nLastTrk: Integer = 0;
  nDoHint: Integer = 0;
  nCapCt: Integer = 0;
  nSavCapt: string = '';
  fTimer1: TTimer = nil;

function MyEnumProc(hWnd: THandle; lParam: Integer): Boolean; stdcall;
var
  n: Integer;
begin
  Result := True;
  if lParam = 0 then
  begin
    if not IsWindowEnabled(hWnd) then
      Exit;
    if not IsWindowVisible(hWnd) then
      Exit;
  end;
  n := (nWndCount + 10) div 10 * 10;
  SetLength(SavWnds, n);
  SavWnds[nWndCount] := hWnd;
  Inc(nWndCount);
end;

procedure MyTimerProc(hWnd: THandle; uMsg: Integer; idEvent: Integer; dwTime: Integer);
var
  i, t: Integer;

  function FindInArray(ar: array of THandle; hd: THandle): Boolean;
  var
    t: Integer;
  begin
    Result := False;
    for t := Low(ar) to High(ar) do
    begin
      Result := ar[t] = hd;
      if Result then
        Break;
    end;
  end;

begin
  if (hDlgWnd = 0) and (SavWnds = nil) and (SavWnds2 <> nil) then
  begin
    nWndCount := 0;
    EnumThreadWindows(GetCurrentThreadId, @MyEnumProc, 0);
    SetLength(SavWnds, nWndCount);
    for i := Low(SavWnds) to High(SavWnds) do
    begin
      if not FindInArray(SavWnds2, SavWnds[i]) then
      begin
        if SavWnds[i] = GetActiveWindow then
        begin
          hDlgWnd := SavWnds[i];
        end;
      end;
    end;
    if hDlgWnd = 0 then
      ResetDlgAutoClose;
    nLastTrk := GetTickCount;
    SetLength(nSavCapt, 500);
    t := GetWindowText(hDlgWnd, PChar(nSavCapt), 500);
    SetLength(nSavCapt, t);
    nCapCt := 0;
  end
  else if (hDlgWnd <> 0) then
  begin
    if not IsWindow(hDlgWnd) or not IsWindowVisible(hDlgWnd) or not IsWindowEnabled(hDlgWnd) then
    begin
      ResetDlgAutoClose;
      Exit;
    end;
    t := GetTickCount;
    t := (nTimerTick - (t - nLastTrk) - 1);
    if t <= 0 then
    begin
      PostMessage(hDlgWnd, WM_CLOSE, 0, 0);
      ResetDlgAutoClose;
    end
    else if (nDoHint > 0) then
    begin
      t := (t + 1000) div 1000;
      if nCapCt <> t then
      begin
        SetWindowText(hDlgWnd, PChar(Format('(%d)%2s%s', [t, ' ', nSavCapt])));
        nCapCt := t;
      end;
    end;
  end;
end;

procedure TimerFunc(Sender: TObject);
begin
  MyTimerProc(0, 0, 0, 0);
end;

procedure SetDlgAutoClose(nTime: Integer; ADoHint: Boolean = False);
var
  FakeEvt: TNotifyEvent;
  Ptrs: array[1..2] of Pointer absolute FakeEvt;
begin
  ResetDlgAutoClose;
  nWndCount := 0;
  EnumThreadWindows(GetCurrentThreadId, @MyEnumProc, 1);
  SetLength(SavWnds, nWndCount);
  SavWnds2 := SavWnds;
  SavWnds := nil;
  if not Assigned(fTimer1) then
  begin
    fTimer1 := TTimer.Create(Application);
    Ptrs[2] := nil;
    Ptrs[1] := @TimerFunc;
    fTimer1.OnTimer := FakeEvt;
    fTimer1.Interval := 100;
    fTimer1.Enabled := True;
  end;
  nLastTrk := GetTickCount;
  nDoHint := Ord(ADoHint);
  nTimerTick := nTime;
end;

procedure ResetDlgAutoClose;
begin
  if hDlgWnd <> 0 then
  begin
    SetWindowText(hDlgWnd, PChar(nSavCapt));
  end;
  if Assigned(fTimer1) then
    FreeAndNil(fTimer1);
  nWndCount := 0;
  hDlgWnd := 0;
  SavWnds := nil;
  SavWnds2 := nil;
  nTimerTick := 0;
end;

end.

