unit Menus.Controller.ListBox.Factory;

interface

uses
  Menus.Controller.Interfaces,
  Menus.Controller.ListBox.Default,

  System.Classes, Menus.Controller.ListBox.Main;

type
  TControllerListBoxFactory = class(TInterfacedObject, IControllerListBoxFactory)
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxFactory;
    function Default(AContainer: TComponent): IControllerListBoxDefault;
    function Main(AContainer: TComponent): IControllerListBoxMenus;
  end;

implementation



{ TControllerListBoxFactory }

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

end.
