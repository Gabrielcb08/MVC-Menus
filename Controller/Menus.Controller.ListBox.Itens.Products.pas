unit Menus.Controller.ListBox.Itens.Products;

interface

uses
  Menus.Controller.Interfaces,
  Menus.Controller.ListBox.Itens.Factory,
  Menus.Controller.Forms.Default,

  FMX.Types;

type
  TControllerListBoxItensProducts = class(TInterfacedObject, IControllerListBoxItensForms)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensForms;
    function Show: TFMXObject;
    procedure DoClick(Sender: TObject);
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

procedure TControllerListBoxItensProducts.DoClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TFrmProducts');
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
              .OnClick(DoClick)
              .Item;
end;

end.
