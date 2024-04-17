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
  TModelConectionsFiredac = class(TInterfacedObject, IModelConnection,
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
    function Connect: IModelConnection;
  end;

implementation

{ TModelConectionsFiredac }

function TModelConectionsFiredac.Connect: IModelConnection;
begin
  Result := Self;
  FConnection.Connected := True;
end;

constructor TModelConectionsFiredac.Create;
begin
  FConnection := TFDConnection.Create(Nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(Nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(Nil);
  ReadParams;
end;

function TModelConectionsFiredac.DataBase(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FDataBase := AValue;
end;

destructor TModelConectionsFiredac.Destroy;
begin
  FreeAndNil(FDGUIxWaitCursor1);
  FreeAndNil(FDPhysFBDriverLink1);
  FreeAndNil(FConnection);
  inherited;
end;

function TModelConectionsFiredac.DriverID(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FDriverID := AValue;
end;

function TModelConectionsFiredac.EndConnection: TComponent;
begin
  Result := FConnection;
end;

function TModelConectionsFiredac.EndParams: IModelConnection;
begin
  Result := Self;
end;

procedure TModelConectionsFiredac.ReadParams;
begin
  FConnection.Params.DataBase := FDataBase;
  FConnection.Params.UserName := FUserName;
  FConnection.Params.Password := FPassword;
  FConnection.Params.DriverID := FDriverID;
  FConnection.Params.Add('Server=' + FServer);
  FConnection.Params.Add('Port' + FPort.ToString);
end;

class function TModelConectionsFiredac.New: IModelConnection;
begin
  Result := Self.Create;
end;

function TModelConectionsFiredac.Params: IModelConnectionParams;
begin
  Result := Self;
end;

function TModelConectionsFiredac.Password(
  AValue: String): IModelConnectionParams;
begin
  Result := Self;
  FPassword := AValue;
end;

function TModelConectionsFiredac.Port(AValue: Integer)
  : IModelConnectionParams;
begin
  Result := Self;
  FPort := AValue;
end;

function TModelConectionsFiredac.Server(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FServer := AValue;
end;

function TModelConectionsFiredac.UserName(AValue: String)
  : IModelConnectionParams;
begin
  Result := Self;
  FUserName := AValue;
end;

end.
