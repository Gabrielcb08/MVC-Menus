unit Menus.Vew.Clients;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, Menus.Controller.ListBox.Factory;

type
  TFrmClients = class(TForm)
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
  FrmClients: TFrmClients;

implementation

{$R *.fmx}

procedure TFrmClients.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New
    .Clients(Layout1)
    .Expose;
end;

initialization
  RegisterFmxClasses([TFrmClients]);
end.
