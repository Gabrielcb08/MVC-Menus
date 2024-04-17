unit Menus.Model.Connections.Factory.Connection;

interface

uses
  Menus.Model.Connections.Interfaces,
  Menus.Model.Connections.Firedac;

type
  TModelConnectionsFactoryConnection = class(TInterfacedObject, IModelFactoryConnection)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelFactoryConnection;
    function ConnectionFireDAC: IModelConnection;
  end;
implementation

{ TModelConnectionsFactoryConnection }

function TModelConnectionsFactoryConnection.ConnectionFireDAC: IModelConnection;
begin
  Result := TModelConectionsFiredac.New;
end;

constructor TModelConnectionsFactoryConnection.Create;
begin

end;

destructor TModelConnectionsFactoryConnection.Destroy;
begin

  inherited;
end;

class function TModelConnectionsFactoryConnection.New: IModelFactoryConnection;
begin
  Result := Self.Create;
end;

end.
