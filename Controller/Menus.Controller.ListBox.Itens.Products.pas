unit Menus.Controller.ListBox.Itens.Products;

interface

uses
  Menus.Controller.Interfaces,
  Menus.Controller.ListBox.Itens.Factory,

  FMX.Types;

type
  TControllerListBoxItensProducts = class(TInterfacedObject, IControllerListBoxItensForms)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensForms;
    function Show: TFMXObject;
  end;

implementation

{ TControllerListBoxItensProdutos }

constructor TControllerListBoxItensProducts.Create;
begin

end;

destructor TControllerListBoxItensProducts.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProducts.New: IControllerListBoxItensForms;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensProducts.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnProducts')
              .Text('Produtos')
              .Item;
end;

end.
