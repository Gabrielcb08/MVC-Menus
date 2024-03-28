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
implementation

end.
