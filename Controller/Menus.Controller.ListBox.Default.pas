unit Menus.Controller.ListBox.Default;

interface

uses
  Menus.Controller.Interfaces,

  System.Classes,
  FMX.ListBox,
  System.SysUtils,
  FMX.Types,
  FMX.Layouts;

type
  TControllerListBoxDefault = class(TInterfacedObject, IControllerListBoxDefault)
  private
    FContainer: TComponent;
    FListBox: TListBox;
  public
    constructor Create(AContainer: TComponent);
    destructor Destroy; override;
    class function New(AContainer: TComponent): IControllerListBoxDefault;
    function Name(AValue: string): IControllerListBoxDefault;
    function Align(AValue: TAlignLayout): IControllerListBoxDefault;
    function ItemHeight(AValue: Integer): IControllerListBoxDefault;
    function AddItem(AValue: TFMXObject): IControllerListBoxDefault;
    function Lista: TFMXObject;
    procedure Expose;
  end;

implementation

{ TControllerListBoxDefault }

function TControllerListBoxDefault.AddItem(
  AValue: TFMXObject): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.AddObject(AValue);
end;

function TControllerListBoxDefault.Align(
  AValue: TAlignLayout): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Align := AValue;
end;

constructor TControllerListBoxDefault.Create(AContainer: TComponent);
begin
  FContainer := AContainer;
  FListBox := TListBox.Create(nil);
  FListBox.Name := 'ListaDefault';
  FListBox.Align := TAlignLayout.Client;
  FListBox.ItemHeight := 60;
end;

destructor TControllerListBoxDefault.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxDefault.Expose;
begin
  TLayout(FContainer).AddObject(FListBox);
end;

function TControllerListBoxDefault.ItemHeight(
  AValue: Integer): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.ItemHeight := AValue;
end;

function TControllerListBoxDefault.Lista: TFMXObject;
begin
  Result := FListBox;
end;

function TControllerListBoxDefault.Name(
  AValue: string): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Name := AValue;
end;

class function TControllerListBoxDefault.New(AContainer: TComponent): IControllerListBoxDefault;
begin
  Result := Self.Create(AContainer)
end;

end.
