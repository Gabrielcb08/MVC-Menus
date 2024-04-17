unit Menus.Model.Entity.Factory;

interface

uses
  Menus.Model.Entity.Interfaces, Menus.Model.Entity.Products,
  Menus.Model.Connections.Interfaces;

type
  TModelEntityFactory = class(TInterfacedObject, IModelEntityFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelEntityFactory;
    function Products(ADataSet: IModelDataSet): IModelEntity;
  end;
implementation

{ TModelEntityFactory }

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin

  inherited;
end;

class function TModelEntityFactory.New: IModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.Products(ADataSet: IModelDataSet): IModelEntity;
begin
  Result := TModelEntityProducts.New(ADataSet);
end;

end.
