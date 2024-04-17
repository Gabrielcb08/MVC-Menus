unit Menus.Model.Connections.Interfaces;

interface

uses
  System.Classes;

type
  IModelConnectionParams = interface;

  IModelConnection = interface
    ['{490CA269-B1E9-4F24-9A2D-E1498C594408}']
    function EndConnection: TComponent;
    function Params: IModelConnectionParams;
    function Connect: IModelConnection;
  end;

  IModelConnectionParams = interface
    ['{5F99040B-8B5F-4DC9-AFE8-B898B01816C8}']
    function Database(AValue: String): IModelConnectionParams;
    function Username(AValue: String): IModelConnectionParams;
    function Password(AValue: String): IModelConnectionParams;
    function DriverID(AValue: String): IModelConnectionParams;
    function Server(AValue: String): IModelConnectionParams;
    function Port(AValue: Integer): IModelConnectionParams;
    function EndParams: IModelConnection;
  end;

  IModelDataSet = interface
    ['{451B0ED6-965C-498E-B6E9-8BEB036EE213}']
    function Open(ATable: String): ImodelDataSet;
    function EndDataSet: TComponent;
  end;

  IModelFactoryConnection = interface
    ['{D3C677DB-AE7C-4775-BBC3-D6FBC81D1BD8}']
    function ConnectionFireDAC: IModelConnection;
  end;

  IModelFactoryDataSet = interface
    ['{FC133D98-86B7-4FF7-BCCC-48B776BB59E4}']
    function DataSetFireDAC(AConnection: IModelConnection): IModelDataSet;
  end;
implementation

end.
