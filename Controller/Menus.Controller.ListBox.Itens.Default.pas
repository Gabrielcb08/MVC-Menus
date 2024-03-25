unit Menus.Controller.ListBox.Itens.Default;

interface

uses
  Menus.Controller.Interfaces,

  FMX.ListBox,
  System.SysUtils,
  System.Classes,
  FMX.Types;

type
  TControllerListBoxItensDefault = class(TInterfacedObject, IControllerListBoxItensDefault)
  private
    FListBoxItem: TListBoxItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensDefault;
    function Name(AValue: string): IControllerListBoxItensDefault;
    function Text(AValue: string): IControllerListBoxItensDefault;
    function StyleLookup(AValue: string): IControllerListBoxItensDefault;
    function OnClick(AValue: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFMXObject;
  end;

implementation

{ TControllerListBoxItensDefault }

constructor TControllerListBoxItensDefault.Create;
begin
  FListBoxItem := TListBoxItem.Create(nil);
  FListBoxItem.Name := 'btnDefault';
  FListBoxItem.Text := 'Default';
  FListBoxItem.StyleLookup := 'listboxitemdetaillabel';
end;

destructor TControllerListBoxItensDefault.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensDefault.Item: TFMXObject;
begin
  Result := FListBoxItem;
end;

function TControllerListBoxItensDefault.Name(
  AValue: string): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Name := AValue;
end;

class function TControllerListBoxItensDefault.New: IControllerListBoxItensDefault;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensDefault.OnClick(
  AValue: TNotifyEvent): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.OnClick := AValue;
end;

function TControllerListBoxItensDefault.StyleLookup(
  AValue: string): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.StyleLookup := AValue;
end;

function TControllerListBoxItensDefault.Text(
  AValue: string): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Text := AValue;
end;

end.
