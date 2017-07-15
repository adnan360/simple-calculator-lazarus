unit frm1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  calculatorunit;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnNumber: TButton;
    btnNumber1: TButton;
    btnNumber10: TButton;
    btnOperation: TButton;
    btnNumber2: TButton;
    btnNumber3: TButton;
    btnNumber4: TButton;
    btnNumber5: TButton;
    btnNumber6: TButton;
    btnNumber7: TButton;
    btnNumber8: TButton;
    btnNumber9: TButton;
    btnOperationSubtract: TButton;
    btnOperationSubtract1: TButton;
    btnOperationSubtract2: TButton;
    btnOperationSubtract3: TButton;
    btnOperationSubtract4: TButton;
    btnOperationSubtract5: TButton;
    btnOperationSubtract6: TButton;
    btnOperationSubtract7: TButton;
    edtDisplay: TEdit;
    procedure btnNumberClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  Calculator: TCalculator;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnNumberClick(Sender: TObject);
begin
  Calculator.SendInput( TButton(Sender).Caption );
  edtDisplay.Text:=Calculator.GetDisplay;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculator:=TCalculator.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Calculator.Free;
end;

end.

