unit Menus.Model.Connections.TableFiredac;

interface

uses
  Menus.Model.Connections.Interfaces,
  FireDAC.Comp.Client,
  System.Classes,
  System.SysUtils;

type
  TModelConnectionsTableFiredac = class(TInterfacedObject, IModelDataSet)
  private
    FTable: TFDTable;
  public
    constructor Create(AConnection: IModelConnection);
    destructor Destroy; override;
    class function New(AConnection: IModelConnection): IModelDataSet;
    function Open(ATable: String): ImodelDataSet;
    function EndDataSet: TComponent;
  end;
implementation

{ TModelConnectionsTableFiredac }

constructor TModelConnectionsTableFiredac.Create(AConnection: IModelConnection);
begin
  FTable := TFDTable.Create(Nil);
  FTable.Connection := TFDConnection(AConnection.EndConnection);
end;

destructor TModelConnectionsTableFiredac.Destroy;
begin
  FreeAndNil(FTable);
  inherited;
end;

function TModelConnectionsTableFiredac.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConnectionsTableFiredac.New(AConnection: IModelConnection): IModelDataSet;
begin
  Result := Self.Create(AConnection);
end;

function TModelConnectionsTableFiredac.Open(ATable: String): ImodelDataSet;
begin
  Result := Self;
  FTable.Open(ATable)
end;

end.
