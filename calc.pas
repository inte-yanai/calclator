unit calc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, icCompo;

type
  TForm1 = class(TForm)
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_0: TButton;
    btn_dot: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_pl: TButton;
    btn_eq: TButton;
    btn_mi: TButton;
    btn_mu: TButton;
    btn_ac: TButton;
    btn_pm: TButton;
    btn_per: TButton;
    btn_di: TButton;
    lbl_num: TicLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_acClick(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_plClick(Sender: TObject);
    procedure btn_miClick(Sender: TObject);
    procedure btn_muClick(Sender: TObject);
    procedure btn_diClick(Sender: TObject);
    procedure btn_eqClick(Sender: TObject);
  private
    { Private 宣言 }
    label_overwrite: Boolean;      //表示ラベルの上書き
    num_dot: Boolean;              //小数点の有無判定
    dNum_Pool: Currency;           //計算結果をプールする変数
    mType: Char;                   //演算子

    procedure NumDispMethod(btnText: String);
    procedure NumPoolMethod;
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  btn_acClick(nil);
end;


procedure TForm1.btn_0Click(Sender: TObject);
begin
  NumDispMethod('0');
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin
  NumDispMethod('1');
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
  NumDispMethod('2');
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
  NumDispMethod('3');
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
  NumDispMethod('4');
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
  NumDispMethod('5');
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
  NumDispMethod('6');
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
  NumDispMethod('7');
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
  NumDispMethod('8');
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
  NumDispMethod('9');
end;

procedure TForm1.btn_acClick(Sender: TObject);
begin
  lbl_num.Caption := '0';
  dNum_Pool := 0;
  label_overwrite := True;
  num_dot := False;
  mType := '='
end;

procedure TForm1.btn_plClick(Sender: TObject);
begin
  num_dot := False;
  label_overwrite := True;
  NumPoolMethod;
  mType := '+';
end;

procedure TForm1.btn_miClick(Sender: TObject);
begin
  num_dot := False;
  label_overwrite := True;
  NumPoolMethod;
  mType := '-';
end;

procedure TForm1.btn_muClick(Sender: TObject);
begin
  num_dot := False;
  label_overwrite := True;
  NumPoolMethod;
  mType := '*';
end;

procedure TForm1.btn_diClick(Sender: TObject);
begin
  num_dot := False;
  label_overwrite := True;
  NumPoolMethod;
  mType := '/';
end;

procedure TForm1.btn_eqClick(Sender: TObject);
begin
  NumPoolMethod;
  mType := '=';
  num_dot := False;
  label_overwrite := True;
end;

procedure TForm1.NumDispMethod(btnText: String);
begin
  if label_overwrite = True then
  begin
    label_overwrite := False;
    lbl_num.Caption := btnText;
  end
  else
  begin
    lbl_num.Caption := lbl_num.Caption + btnText;
  end;
end;


procedure TForm1.NumPoolMethod;
var
  dNum: Currency;
begin
  dNum := StrToCurr(lbl_num.Caption);

  case mType of
    '=':
    begin
      dNum_Pool := dNum;
    end;

    '+':
    begin
      dNum_Pool := dNum_Pool + dNum;
    end;

    '-':
    begin
      dNum_Pool := dNum_Pool - dNum;
    end;

    '*':
    begin
      dNum_Pool := dNum_Pool * dNum;
    end;

    '/':
    begin
      dNum_Pool := dNum_Pool / dNum;
    end;
  end;

  lbl_num.Caption := CurrToStr(dNum_Pool);
end;


end.
