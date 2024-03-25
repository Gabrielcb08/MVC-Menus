unit Menus.Controller.ListBox.Itens.Clients;

interface

uses
  Menus.Controller.Interfaces,
  Menus.Controller.ListBox.Itens.Factory,

  FMX.Types;

type
  TControllerListBoxItensClients = class(TInterfacedObject, IControllerListBoxItensForms)
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensForms;
    function Show: TFMXObject;
  end;

implementation

{ TControllerListBoxItensClients }

constructor TControllerListBoxItensClients.Create;
begin

end;

destructor TControllerListBoxItensClients.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensClients.New: IControllerListBoxItensForms;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensClients.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnClients')
              .Text('Clientes')
              .Item;
end;

end.
