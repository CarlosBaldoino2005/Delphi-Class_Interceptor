unit Interceptor.Edit;

interface
uses
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Classes;

type
  TEdit = class(Vcl.StdCtrls.TEdit)
  private
    FShape : TShape;
    FMinLength: Integer;
    FLabelError : TLabel;
    procedure SetMinLength(const Value: Integer);

  protected
    procedure Loaded; override;
    procedure DoEnter; override;
    procedure DoExit; override;
  public
    constructor Create(AOwner : TComponent); override;
    property MinLength : Integer read FMinLength write SetMinLength;
  end;
implementation

uses
  Vcl.Forms, Vcl.Controls, System.SysUtils, Vcl.Graphics;

{ TEdit }

constructor TEdit.Create(AOwner: TComponent);
begin
  inherited;
  FShape := TShape.Create(Self);
  FLabelError := TLabel.Create(Self);
end;

procedure TEdit.DoEnter;
begin
  inherited;
  FShape.Pen.Color := clBlue;
  Self.Brush.Color := clMenu;
  FShape.Brush.Color := Self.Brush.Color;
  FLabelError.Caption := '';
end;

procedure TEdit.DoExit;
begin
  inherited;
  Self.Brush.Color := clWindow;
  FShape.Brush.Color := Self.Brush.Color;
  FShape.pen.Color := clBlack;

  if Length(Self.Text) < FMinLength then
  begin
    FShape.pen.Color := clRed;
    FLabelError.Caption := Format('O Campo deve ter no mínimo %d caracteres', [FMinLength]);
  end;

end;

procedure TEdit.Loaded;
begin
  inherited;
  Self.BorderStyle := bsNone;
  Self.Height := Self.Height - 4;
  Self.Width := Self.Width - 4;
  FShape.Name := Format('Shape%s', [self.name]);
  FShape.Parent := Self.Parent;
  FShape.Top := Self.Top - 4;
  FShape.Left := Self.Left - 4;
  FShape.Width := Self.Width + 7;
  FShape.Height := Self.Height + 5;
  FShape.Align := alNone;
  FShape.Shape := stRoundRect;
  FShape.Brush.Style := bsSolid;
  FShape.Brush.Color := clWhite;
  FShape.Pen.Color := clBlack;
  FShape.pen.Width := 1;
  FShape.Visible := Self.Visible;
  FShape.Enabled := Self.Enabled;

  FLabelError.Name := Format('lbl%s_error', [Self.Name]);
  FLabelError.Parent := Self.Parent;
  FLabelError.Top := Self.Top + 2;
  FLabelError.Left := Self.Left + Self.Width + 10;
  FLabelError.font.Color := clRed;
  FLabelError.Caption := '';

end;

procedure TEdit.SetMinLength(const Value: Integer);
begin
  if Value > 0 then
    FMinLength := Value;
end;

end.
