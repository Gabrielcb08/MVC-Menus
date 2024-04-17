unit Menus.Model.Entity.Products;

interface

uses
  Menus.Model.Entity.Interfaces, System.Classes,
  Menus.Model.Connections.Interfaces;

type
  TModelEntityProducts = class(TInterfacedObject, IModelEntity)
  private
    FDataSet: IModelDataSet;
  public
    constructor Create(ADataSet: IModelDataSet);
    destructor Destroy; override;
    class function New(ADataSet: IModelDataSet): IModelEntity;
    function List: TComponent;
  end;

implementation

Const
  FTABLENAME = 'PRODUTOS';

{ TModelEntityProducts }

constructor TModelEntityProducts.Create(ADataSet: IModelDataSet);
begin
  FDataSet := ADataSet;
end;

destructor TModelEntityProducts.Destroy;
begin

  inherited;
end;

function TModelEntityProducts.List: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityProducts.New(ADataSet: IModelDataSet): IModelEntity;
begin
  Result := Self.Create(ADataSet);
end;

end.
