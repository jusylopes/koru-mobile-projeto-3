import 'dart:io';
import '../classes/cliente.dart';
import '../classes/produto.dart';
import '../classes/revendedor.dart';
import '../utils/enums.dart';
import '../utils/mock_produto.dart';
import '../utils/mock_revendedor.dart';
import '../utils/utils.dart';
import 'utils_menu.dart';

class MenuCliente {
  Cliente? cliente;

  void chamarMenuCliente() {
    bool sair = false;

    while (!sair) {
      pularLinha();
      imprimirMensagemComMoldura(' CLIENTE    |     TEAM FIVE   ');
      print('|--------------------------------|');
      print('| 1 - Adicionar Cliente          |');
      print('| 2 - Adicionar Dinheiro         |');
      print('| 3 - Comprar Produto            |');
      print('| 4 - Ver Resumo de Operações    |');
      print('| 5 - Ver Saldo Atual            |');
      print('| 6 - Voltar ao menu principal   |');
      print('|--------------------------------|');
      pularLinha();

      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          cliente = inserirDadosCliente();
          break;
        case '2':
          if (cliente != null) {
            print('Digite o valor a ser adicionado:');
            double valor = double.parse(stdin.readLineSync()!);

            cliente!.adicionarDinheiro(valor);
          } else {
            imprimirUsuarioNaoAdicionado(Usuario.cliente);
          }
          break;
        case '3':
          if (cliente != null) {
            _comprarProduto(cliente!);
          } else {
            imprimirUsuarioNaoAdicionado(Usuario.cliente);
          }
          break;
        case '4':
          if (cliente != null) {
            cliente!.verProdutosComprados();
          } else {
            imprimirUsuarioNaoAdicionado(Usuario.cliente);
          }
          break;
        case '5':
          if (cliente != null) {
            cliente!.verSaldoAtual();
          } else {}
          break;
        case '6':
          sair = true;
          break;
        default:
          imprimirOpcaoInvalida();
          break;
      }
    }
  }

  void _comprarProduto(Cliente cliente) {
    List<Produto> produtos = MockProduto.mockProduto();
    List<Revendedor> revendedor = MockRevendedor.mockRevendedor();

    print('Escolha um produto:');
    for (int i = 0; i < produtos.length; i++) {
      print('${i + 1} - ${produtos[i].nome}');
    }
    int produtoIndex = int.parse(stdin.readLineSync()!) - 1;

    print('Escolha um revendedor:');
    for (int i = 0; i < revendedor.length; i++) {
      print('${i + 1} - ${revendedor[i].nome}');
    }
    int revendedorIndex = int.parse(stdin.readLineSync()!) - 1;

    Produto produtoSelecionado = produtos[produtoIndex];
    Revendedor revendedorSelecionado = revendedor[revendedorIndex];

    cliente.comprarProduto(produtoSelecionado, revendedorSelecionado);
  }
}
