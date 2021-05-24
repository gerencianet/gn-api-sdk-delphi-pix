unit BodyPixClass;

interface
  {$IFDEF UNICODE}
uses xSuperObject, xSuperJSON;

Type

  TFavored = record
    [Alias('chave')]
    Key: String;
  end;

  TPayer = record
    [Alias('chave')] key: string;
    [Alias('infoPagador')] PayingInfo: string;
  end;

 {$ENDIF}

 TBodyPixClass = class
  private
    FPayer     : TPayer;
    FFavored   : TFavored;
    FValue     : String;

    procedure SetPayer(const Value: TPayer);
    procedure SetFavored(const Value: TFavored);
    procedure SetValue(const Value: String);
  public
    [Alias('valor')]
    property Value: String read FValue write SetValue;
    [Alias('pagador')]
    property Payer: TPayer read FPayer write SetPayer;
    [Alias('favorecido')]
    property Favored: TFavored read FFavored write SetFavored;
  constructor Create;
  end;

  TBodyPixDevolution = class
  private
    FValue : String;
    procedure SetValue(const Value: String);
  public
    [Alias('valor')]
    property Value: String read FValue write SetValue;
  end;

implementation

{ TBodyPixClass }

constructor TBodyPixClass.Create;
begin
  inherited;
end;

procedure TBodyPixClass.SetFavored(const Value: TFavored);
begin
  FFavored := Value;
end;

procedure TBodyPixClass.SetPayer(const Value: TPayer);
begin
  FPayer := Value;
end;

procedure TBodyPixClass.SetValue(const Value: String);
begin
  FValue := Value;
end;

{ TBodyPixDevolution }

procedure TBodyPixDevolution.SetValue(const Value: String);
begin
  FValue := Value;
end;

end.
