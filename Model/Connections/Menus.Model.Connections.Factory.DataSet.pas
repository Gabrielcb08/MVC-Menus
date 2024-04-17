unit Menus.Model.Connections.Factory.DataSet;

interface

uses
  Menus.Model.Connections.Interfaces,
  Menus.Model.Connections.TableFiredac;

type
  TModelConnectionsFactoryDataSet = class(TInterfacedObject, IModelFactoryDataSet)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelFactoryDataSet;
    function DataSetFireDAC(AConnection: IModelConnection): IModelDataSet;
  end;
implementation

{ TModelConnectionsFactoryDataSet }

constructor TModelConnectionsFactoryDataSet.Create;
begin

end;

function TModelConnectionsFactoryDataSet.DataSetFireDAC(AConnection: IModelConnection): IModelDataSet;
begin
  Result := TModelConnectionsTableFireDAC.New(AConnection);
end;

destructor TModelConnectionsFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TModelConnectionsFactoryDataSet.New: IModelFactoryDataSet;
begin
  Result := Self.Create;
end;

end.
