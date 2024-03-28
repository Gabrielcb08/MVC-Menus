unit Menus.Model.Connections.Firedac;

interface

uses
  Menus.Model.Connections.Interfaces,

  System.Classes,
  Firedac.Comp.Client,
  System.SysUtils,
  Firedac.Comp.UI,
  Firedac.Phys.FB;

type
  TControllerConectionsFiredac = class(TInterfacedObject, IModelConnection,
    IModelConnectionParams)
  private
    FConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDatabase: String;
    FUserName: String;
    FPassword: String;
    FDriverID: String;
    FServer: String;
    FPort: Integer;
    procedure ReadParams;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConnection;
    function EndConnection: TComponent;
    function Params: IModelConnectionParams;
    function Database(AValue: String): IModelConnectionParams;
    function UserName(AValue: String): IModelConnectionParams;
    function Password(AValue: String): IModelConnectionParams;
    function DriverID(AValue: String): IModelConnectionParams;
    function Server(AValue: String): IModelConnectionParams;
    function Port(AValue: Integer): IModelConnectionParams;
    function EndParams: IModelConnection;
  end;

implementation

{ TControllerConectionsFiredac }

constructor TControllerConectionsFiredac.Create;
begin
  FConnection := TFDConnection.Create(Nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(Nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(Nil);
  ReadParams;
end;

function TControllerConectionsFiredac.DataBase(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FDataBase := AValue;
end;

destructor TControllerConectionsFiredac.Destroy;
begin
  FreeAndNil(FDGUIxWaitCursor1);
  FreeAndNil(FDPhysFBDriverLink1);
  FreeAndNil(FConnection);
  inherited;
end;

function TControllerConectionsFiredac.DriverID(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FDriverID := AValue;
end;

function TControllerConectionsFiredac.EndConnection: TComponent;
begin
  Result := FConnection;
end;

function TControllerConectionsFiredac.EndParams: IModelConnection;
begin
  Result := Self;
end;

procedure TControllerConectionsFiredac.ReadParams;
begin
  FConnection.Params.DataBase := FDataBase;
  FConnection.Params.UserName := FUserName;
  FConnection.Params.Password := FPassword;
  FConnection.Params.DriverID := FDriverID;
  FConnection.Params.Add('Server=' + FServer);
  FConnection.Params.Add('Port' + FPort.ToString);
end;

class function TControllerConectionsFiredac.New: IModelConnection;
begin
  Result := Self.Create;
end;

function TControllerConectionsFiredac.Params: IModelConnectionParams;
begin
  Result := Self;
end;

function TControllerConectionsFiredac.Password(
  AValue: String): IModelConnectionParams;
begin
  Result := Self;
  FPassword := AValue;
end;

function TControllerConectionsFiredac.Port(AValue: Integer)
  : IModelConnectionParams;
begin
  Result := Self;
  FPort := AValue;
end;

function TControllerConectionsFiredac.Server(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FServer := AValue;
end;

function TControllerConectionsFiredac.UserName(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FUserName := AValue;
end;

end.
