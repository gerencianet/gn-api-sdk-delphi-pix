unit BodyAccountClass;

interface

uses xSuperObject, xSuperJSON, System.RTTI;

Type
  TRefuseAll = record
    [Alias('recusarTodos')] RefuseAll: Boolean;
  end;

  TReceiveKey = class
    [Alias('txidObrigatorio')] TxidMandatory : Boolean;
    [Alias('qrCodeEstatico')] QrCodeStatic : TRefuseAll;
  end;

  TKeyGN = class
    [Alias('recebimento')] Receive : TReceiveKey;
  end;

  TKey = class
    [Alias('aliasKeyGN')] KeyGN : TKeyGN;
  end;

  TPix = class
    [Alias('chaves')] Key : TKey;
    [Alias('receberSemChave')] ReceiveKey: Boolean;
  end;
  
 TBodyAccountClass = class
  private
    FPix     : TPix;
    procedure SetPix(const Value: TPix);
  public
    [Alias('pix')]
    property Pix: TPix read FPix write SetPix;
  constructor Create;
  end;


implementation

{ TBodyAccountPixClass }

constructor TBodyAccountClass.Create;
begin
  inherited;
end;

procedure TBodyAccountClass.SetPix(const Value: TPix);
begin
  FPix := Value;
end;

end.
