import 'dart:io';
import 'menu_interativo/menu_cliente.dart';
import 'menu_interativo/menu_revendedor.dart';
import 'menu_interativo/utils_menu.dart';
import 'utils/utils.dart';

void main() {
  pularLinha();
  bool sairMenuPrincipal = false;

  while (!sairMenuPrincipal) {
    imprimirMensagemComMoldura('SISTEMA DE COMPRAS | TEAM FIVE');
    print('|--------------------------------|');
    print('| Opção 1 - Revendedor           |');
    print('| Opção 2 - Cliente              |');
    print('| Opção 3 - Sair                 |');
    print('|--------------------------------|');
    pularLinha();

    imprimirLogoASCII();

    String? opcao = stdin.readLineSync();
    switch (opcao) {
      case '1':
        MenuRevendedor().chamarMenuRevendedor();
        break;
      case '2':
        MenuCliente().chamarMenuCliente();
        break;
      case '3':
        sairMenuPrincipal = true;
        break;
      default:
        imprimirOpcaoInvalida();
        break;
    }
  }
}
