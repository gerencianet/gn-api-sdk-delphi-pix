unit BodyWebhookClass;

interface

uses xSuperObject, xSuperJSON;

Type
 TBodyWebhookClass = class
  private
    FWebhookUrl    : String;
    procedure SetWebhookUrl(const Value: String);
  public
    [Alias('webhookUrl')]
    property WebhookUrl: String read FWebhookUrl write SetWebhookUrl;
  constructor Create;
  end;

implementation

{ TBodyWebhookClass }

constructor TBodyWebhookClass.Create;
begin
  inherited;
end;

procedure TBodyWebhookClass.SetWebhookUrl(const Value: String);
begin
  FWebhookUrl := Value;
end;

end.
