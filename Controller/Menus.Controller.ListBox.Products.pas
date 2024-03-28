unit Menus.Controller.ListBox.Products;

interface

uses
  Menus.Controller.Interfaces,

  System.Classes;

type
  TControllerListBoxProducts = class(TInterfacedObject, IControllerListBoxMenus)
  private
    FContainer: TComponent;
  public
    constructor Create(AContainer: TComponent);
    destructor Destroy; override;
    class function New(AContainer: TComponent): IControllerListBoxMenus;
    procedure Expose;
  end;
implementation

{ TControllerListBoxProducts }

uses
  Menus.Controller.ListBox.Factory,
  Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxProducts.Create(AContainer: TComponent);
begin
  FContainer := AContainer;
end;

destructor TControllerListBoxProducts.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxProducts.Expose;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Clients.Show)
    .Expose;
end;

class function TControllerListBoxProducts.New(
  AContainer: TComponent): IControllerListBoxMenus;
begin
  Result := Self.Create(AContainer);
end;

end.
