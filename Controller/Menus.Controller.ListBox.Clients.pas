unit Menus.Controller.ListBox.Clients;

interface

uses
  Menus.Controller.Interfaces,

  System.Classes;

type
  TControllerListBoxClients = class(TInterfacedObject, IControllerListBoxMenus)
  private
    FContainer: TComponent;
  public
    constructor Create(AContainer: TComponent);
    destructor Destroy; override;
    class function New(AContainer: TComponent): IControllerListBoxMenus;
    procedure Expose;
  end;
implementation

{ TControllerListBoxClients }

uses
  Menus.Controller.ListBox.Factory,
  Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxClients.Create(AContainer: TComponent);
begin
  FContainer := AContainer;
end;

destructor TControllerListBoxClients.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxClients.Expose;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Products.Show)
    .Expose;
end;

class function TControllerListBoxClients.New(
  AContainer: TComponent): IControllerListBoxMenus;
begin
  Result := Self.Create(AContainer);
end;

end.
