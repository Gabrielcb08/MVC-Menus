unit Menus.Vew.Products;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, Menus.Controller.ListBox.Factory;

type
  TFrmProducts = class(TForm)
    ToolBar1: TToolBar;
    lblTitle: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducts: TFrmProducts;

implementation

{$R *.fmx}

procedure TFrmProducts.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New
    .Products(Layout1)
    .Expose;
end;

initialization
  RegisterFmxClasses([TFrmProducts]);

end.
