unit Menus.Controller.Forms.Default;

interface

uses
  FMX.Types,
  System.Classes, FMX.Forms, System.SysUtils;
type
  TControllerFormsDefault = class
    class procedure CreateForm(AClassName: String);
  end;
implementation

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(AClassName: String);
var
  ObjFmx: TFmxObjectClass;
  NewForm: TCustomForm;
begin
  ObjFmx := TFmxObjectClass(GetClass(AClassName));
  try
    NewForm := TCustomForm(ObjFmx.Create(Nil));
    try
      NewForm.ShowModal;
    Finally
      FreeAndNil(NewForm);
    End;
  except
    raise Exception.Create(Format('Cannot create form, class [%s] not found in records!',[AClassName]));
  end;
end;

end.
