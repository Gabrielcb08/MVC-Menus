unit Menus.Controller.Connections.Interfaces;

interface

uses
  Menus.Model.Connections.Interfaces;

type
  IControllerConnectionsFactory = interface
    ['{C01F93C5-C2CE-445E-8418-BDC4274B0941}']
    function Connection: IModelConnection;
  end;

  IControllerFactoryDataset = interface
    ['{7899D36A-72F0-40D6-B32C-4CFBC5E0F5DB}']
    function Dataset(AConnection: IModelConnection): IModelDataset;
  end;
implementation

end.
