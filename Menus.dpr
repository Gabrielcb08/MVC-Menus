program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.Vew.Main in 'View\Menus.Vew.Main.pas' {FrmMain},
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Model.Interfaces in 'Model\Menus.Model.Interfaces.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Itens.Products in 'Controller\Menus.Controller.ListBox.Itens.Products.pas',
  Menus.Controller.ListBox.Itens.Clients in 'Controller\Menus.Controller.ListBox.Itens.Clients.pas',
  Menus.Controller.ListBox.Main in 'Controller\Menus.Controller.ListBox.Main.pas',
  Menus.Vew.Products in 'View\Menus.Vew.Products.pas' {FrmProducts},
  Menus.Vew.Clients in 'View\Menus.Vew.Clients.pas' {FrmClients},
  Menus.Controller.ListBox.Products in 'Controller\Menus.Controller.ListBox.Products.pas',
  Menus.Controller.ListBox.Clients in 'Controller\Menus.Controller.ListBox.Clients.pas',
  Menus.Controller.Forms.Default in 'Controller\Menus.Controller.Forms.Default.pas',
  Menus.Model.Connections.Firedac in 'Model\Connections\Menus.Model.Connections.Firedac.pas',
  Menus.Model.Connections.Interfaces in 'Model\Connections\Menus.Model.Connections.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
