import 'dart:io';
import '../classes/produto.dart';
import '../classes/revendedor.dart';
import '../utils/utils.dart';
import 'utils_menu.dart';

class MenuRevendedor {
  Revendedor? revendedorSelecionado;

  void chamarMenuRevendedor() {
    bool sair = false;

    while (!sair) {
      pularLinha();
      imprimirMensagemComMoldura(
          '${_criaTituloDoMenuRevendedor(revendedorSelecionado)}');
      print('|--------------------------------|');
      print('| 1 - Selecionar Revendedor      |');
      print('| 2 - Vender Produto             |');
      print('| 3 - Falar uma mensagem         |');
      print('| 4 - Ver Resumo de Operações    |');
      print('| 5 - Voltar ao menu principal   |');
      print('|--------------------------------|');
      pularLinha();

      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          revendedorSelecionado = selecionarRevendedorNoMenu();
          break;
        case '2':
          revendedorSelecionado != null
              ? _venderProduto(revendedorSelecionado!)
              : _imprimirRevendedorNaoSelecionado();
          break;
        case '3':
          revendedorSelecionado != null
              ? _falarMensagem(revendedorSelecionado!)
              : _imprimirRevendedorNaoSelecionado();
          break;
        case '4':
          revendedorSelecionado != null
              ? _verResumoDeRevendedor(revendedorSelecionado!)
              : _imprimirRevendedorNaoSelecionado();
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

  String _criaTituloDoMenuRevendedor(Revendedor? revendedorSelecionado) {
    return revendedorSelecionado != null
        ? '${revendedorSelecionado.getGeneroRevendedor().toUpperCase()} | ${revendedorSelecionado.nome} - mat ${revendedorSelecionado.matricula}'
        : 'REVENDEDOR | TEAM FIVE';
  }

  void _venderProduto(Revendedor revendedor) {
    Produto produtoSelecionado = selecionarProdutoNoMenu();
    revendedor.venderProduto(produtoSelecionado);
  }

  void _falarMensagem(Revendedor revendedor) {
    print('Digite uma mensagem:');
    String mensagemRevendedor = stdin.readLineSync()!;
    revendedor.falar(mensagemRevendedor);
  }

  void _verResumoDeRevendedor(Revendedor revendedor) {
    imprimirMensagemComMoldura(
        'Resumo de operações de ${revendedor.nome} - mat: ${revendedor.matricula}: ');
    revendedor.verResumo();
  }

  void _imprimirRevendedorNaoSelecionado() {
    print(
        'Revendedor não selecionado. Por favor, selecione um revendedor primeiro.');
  }
}
