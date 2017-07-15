# Simple Calculator in Lazarus
Simple Calculator prepared as a test for a dead easy calculator class. You can create a calculator in 5 minutes with this. You can also extend this if you wish.

![alt text](https://github.com/adnan360/simple-calculator-lazarus/raw/master/common/screenshots/screenshot-1.png "Simple Calculator in Lazarus - Simple calculator app that could be made 5 minutes! For practically any platform! - Screenshot after typing some digits")

It is prepared to be in a way that is faster to build with.

Just create the buttons. Set appropriate Captions. Copy the class file `calculatorunit.pas` in your project directory.

Include in uses:
```
uses
  ...,
  calculatorunit;
```

Use something like this:
```
procedure TForm1.btnNumberClick(Sender: TObject);
begin
  Calculator.SendInput( TButton(Sender).Caption );
  edtDisplay.Text:=Calculator.GetDisplay;
end;
```

Enter this procedure name in OnClick event field.

And you are almost ready.

Don't forget to create and destroy the class:
```
procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculator:=TCalculator.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Calculator.Free;
end;
```

And also add the variable for the class to hold:
```
var
  Form1: TForm1;
  ...
  ...
  Calculator: TCalculator;
```

Just follow the example project and you'll be fine.
