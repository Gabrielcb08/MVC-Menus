unit Menus.Controller.Connections.Factory.Connection;

interface

uses
  Menus.Controller.Connections.Interfaces,
  Menus.Model.Connections.Factory.Connection,
  Menus.Model.Connections.Interfaces;

type
  TControllerConnectionsFactory = class(TInterfacedObject, IControllerConnectionsFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConnectionsFactory;
    function Connection: IModelConnection;
  end;

implementation

{ TControllerConnectionsFactory }

function TControllerConnectionsFactory.Connection: IModelConnection;
begin
  Result := TModelConnectionsFactoryConnection.New
              .ConnectionFireDAC
              .Params
                .Database('D:\OurSoft\RISE\DB\OURDB.FDB')
                .Username('masterkey')
                .Password('sysdba')
                .DriverID('FB')
                .Port(3050)
              .EndParams
              .Connect;
end;

constructor TControllerConnectionsFactory.Create;
begin

end;

destructor TControllerConnectionsFactory.Destroy;
begin

  inherited;
end;

class function TControllerConnectionsFactory.New: IControllerConnectionsFactory;
begin
  Result := Self.Create;
end;

end.
