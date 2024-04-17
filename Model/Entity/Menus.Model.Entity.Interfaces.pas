unit Menus.Model.Entity.Interfaces;

interface

uses
  System.Classes,
  Menus.Model.Connections.Interfaces;

type
  IModelEntity = interface
    ['{55E578EF-5EC1-41D5-8EBE-254AAC13B4AA}']
    function List: TComponent;
  end;

  IModelEntityFactory = interface
    ['{A302FBCC-1C4F-480C-BE2A-337FC06419E9}']
    function Products(ADataSet: IModelDataSet): IModelEntity;
  end;

implementation

end.
