unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp;

type
  TForm1 = class(TForm)
    ClientSocket1: TClientSocket;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ClientSocket1.Socket.SendText(edit1.Text+':'+edit2.Text);




end;

procedure TForm1.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
  var
  s:string;
  begin
  s:=socket.ReceiveText;
  memo1.Lines.Insert(0,s);
  

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ClientSocket1.Port:=1001;
ClientSocket1.Host:='192.168.35.168';

ClientSocket1.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Clientsocket1.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
memo1.Lines.SaveToFile('histori.txt');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
f:textfile;
s:string;
begin
memo1.Lines.LoadFromFile('histori.txt');
AssignFile(f,'nick.txt');
Reset(f);
readln(f,s);
edit1.text:=s;
closefile(f);

end;

end.
