unit Menus.Controller.Connections.Factory.Dataset;

interface

uses
  Menus.Controller.Connections.Interfaces,
  Menus.Model.Connections.Interfaces,
  Menus.Model.Connections.Factory.DataSet;

type
  TControllerFactoryDataset = class(TInterfacedObject, IControllerFactoryDataset)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerFactoryDataset;
    function Dataset(AConnection: IModelConnection): IModelDataset;
  end;

implementation

{ TControllerFactoryDataset }

constructor TControllerFactoryDataset.Create;
begin

end;

function TControllerFactoryDataset.Dataset(AConnection: IModelConnection): IModelDataset;
begin
  Result := TModelConnectionsFactoryDataSet.New
              .DataSetFireDAC(AConnection);
end;

destructor TControllerFactoryDataset.Destroy;
begin

  inherited;
end;

class function TControllerFactoryDataset.New: IControllerFactoryDataset;
begin
  Result := Self.Create;
end;

end.
