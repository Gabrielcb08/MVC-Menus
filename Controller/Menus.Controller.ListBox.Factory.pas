unit Menus.Controller.ListBox.Factory;

interface

uses
  Menus.Controller.Interfaces,
  Menus.Controller.ListBox.Default,
  Menus.Controller.ListBox.Main,
  Menus.Controller.ListBox.Products,
  Menus.Controller.ListBox.Clients,

  System.Classes;

type
  TControllerListBoxFactory = class(TInterfacedObject, IControllerListBoxFactory)
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxFactory;
    function Default(AContainer: TComponent): IControllerListBoxDefault;
    function Main(AContainer: TComponent): IControllerListBoxMenus;
    function Products(AContainer: TComponent): IControllerListBoxMenus;
    function Clients(AContainer: TComponent): IControllerListBoxMenus;
  end;

implementation



{ TControllerListBoxFactory }

function TControllerListBoxFactory.Clients(
  AContainer: TComponent): IControllerListBoxMenus;
begin
  Result := TControllerListBoxClients.New(AContainer);
end;

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(AContainer: TComponent): IControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(AContainer)
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

function TControllerListBoxFactory.Main(
  AContainer: TComponent): IControllerListBoxMenus;
begin
  Result := TControllerListBoxMain.New(AContainer);
end;

class function TControllerListBoxFactory.New: IControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Products(
  AContainer: TComponent): IControllerListBoxMenus;
begin
  Result := TControllerListBoxProducts.New(AContainer);
end;

end.
