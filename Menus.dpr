program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.Vew.Main in 'Menus.Vew.Main.pas' {Form1},
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Model.Interfaces in 'Model\Menus.Model.Interfaces.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Itens.Products in 'Controller\Menus.Controller.ListBox.Itens.Products.pas',
  Menus.Controller.ListBox.Itens.Clients in 'Controller\Menus.Controller.ListBox.Itens.Clients.pas',
  Menus.Controller.ListBox.Main in 'Controller\Menus.Controller.ListBox.Main.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
