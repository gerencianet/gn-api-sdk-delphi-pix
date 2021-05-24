unit BodyChargesClass;

interface
  {$IFDEF UNICODE}
uses xSuperObject, xSuperJSON, System.Generics.Collections, System.SysUtils;

Type

  TCalendar = record
    [Alias('expiracao')]
    expiration: Integer;
  end;

  TStatus = (NOT_INFO, ATIVA, CONCLUIDA, REMOVIDA_PELO_USUARIO_RECEBEDOR, REMOVIDA_PELO_PSP);

  TDebtor = record
    [Alias('cpf')]  cpf: string;
    [Alias('nome')] name: string;
  end;

  TValue = record
    [Alias('original')]
    original: string;
  end;

  TAddInfo = class
    [Alias('nome')]  name: string;
    [Alias('valor')] value: string;
  end;
 {$ENDIF}

  TBodyCobClass = class
  private
    FCalendar    : TCalendar;
    FDebtor      : TDebtor;
    FValue       : TValue;
    FKey         : String;
    FPayerRequest: String;
    FListAddInfo : TObjectList<TAddInfo>;
    FStatus      : TStatus;

    procedure SetCalendar(const Value: TCalendar);
    procedure SetDebtor(const Value: TDebtor);
    procedure SetValue(const Value: TValue);
    procedure SetKey(const Value: String);
    procedure SetPayerRequest(const Value: String);
    procedure SetStatus(const Value: TStatus);

  public
    [Alias('chave')]
    property Key: String read FKey write SetKey;
    [Alias('calendario')]
    property Calendar: TCalendar read FCalendar write SetCalendar;
    [Alias('devedor')]
    property Debtor: TDebtor read FDebtor write SetDebtor;
    [Alias('status')]
    property Status: TStatus read FStatus write SetStatus;
    [Alias('valor')]
    property Value: TValue read FValue write SetValue;
    [Alias('solicitacaoPagador')]
    property PayerRequest: String read FPayerRequest write SetPayerRequest;
    [Alias('infoAdicionais')]
    property ListAddInfo: TObjectList<TAddInfo> read FListAddInfo write FListAddInfo;
    procedure AddItem(const Value: TAddInfo);
    constructor Create;
  end;

implementation

{ TBodyCobClasses }

constructor TBodyCobClass.Create;
begin
  inherited;
end;

procedure TBodyCobClass.SetCalendar(const Value: TCalendar);
begin
  FCalendar := Value;
end;

procedure TBodyCobClass.SetKey(const Value: String);
begin
  FKey := Value;
end;

procedure TBodyCobClass.SetDebtor(const Value: TDebtor);
begin
  FDebtor := Value;
end;

procedure TBodyCobClass.SetValue(const Value: TValue);
begin
  FValue := Value;
end;

procedure TBodyCobClass.SetPayerRequest(const Value: String);
begin
  FPayerRequest := Value;
end;

procedure TBodyCobClass.SetStatus(const Value: TStatus);
begin
  FStatus := Value;
end;

procedure TBodyCobClass.AddItem(const Value: TAddInfo);
begin
  FListAddInfo.Add(TAddInfo.Create);
  FListAddInfo[0].name    := Value.name;
  FListAddInfo[0].value   := Value.value;
end;

end.
