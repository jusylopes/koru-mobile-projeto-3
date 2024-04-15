import 'dart:io';
import '../classes/produto.dart';
import '../classes/revendedor.dart';
import '../utils/enums.dart';
import '../utils/mock_produto.dart';
import '../utils/utils.dart';
import 'utils_menu.dart';

class MenuRevendedor {
  Revendedor? revendedor;

  void chamarMenuRevendedor() {
    bool sair = false;

    while (!sair) {
      pularLinha();
      imprimirMensagemComMoldura(' REVENDEDOR |     TEAM FIVE   ');
      print('|--------------------------------|');
      print('| 1 - Adicionar Revendedor       |');
      print('| 2 - Vender Produto             |');
      print('| 3 - Falar uma mensagem         |');
      print('| 4 - Ver Resumo de Operações    |');
      print('| 5 - Voltar ao menu principal   |');
      print('|--------------------------------|');
      pularLinha();

      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          revendedor = inserirDadosRevendedor();
          break;
        case '2':
          if (revendedor != null) {
            _venderProduto(revendedor!);
          } else {
            imprimirUsuarioNaoAdicionado(Usuario.revendedor);
          }
          break;
        case '3':
          if (revendedor != null) {
            print('Digite uma mensagem:');
            String mensagemRevendedor = stdin.readLineSync()!;
            revendedor!.falar(mensagemRevendedor);
          } else {
            imprimirUsuarioNaoAdicionado(Usuario.revendedor);
          }
          break;
        case '4':
          if (revendedor != null) {
            imprimirMensagemComMoldura('Seu resumo de operações: ');
            revendedor!.verResumo();
          } else {
            imprimirUsuarioNaoAdicionado(Usuario.revendedor);
          }
          break;
        case '5':
          sair = true;
          break;
        default:
          imprimirOpcaoInvalida();
          break;
      }
    }
  }

  void _venderProduto(Revendedor revendedor) {
    List<Produto> produtos = MockProduto.mockProduto();

    print('Selecione um produto:');
    for (int i = 0; i < produtos.length; i++) {
      print('${i + 1} - ${produtos[i].nome}');
    }
    int produtoIndex = int.parse(stdin.readLineSync()!) - 1;

    Produto produtoSelecionado = produtos[produtoIndex];
    revendedor.venderProduto(produtoSelecionado);
  }
}
