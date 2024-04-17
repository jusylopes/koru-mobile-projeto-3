import 'dart:io';
import '../classes/cliente.dart';
import '../classes/produto.dart';
import '../classes/revendedor.dart';
import '../utils/enums.dart';
import '../utils/utils.dart';
import 'utils_menu.dart';

class MenuCliente {
  Cliente? cliente;

  void chamarMenuCliente() {
    bool sair = false;

    while (!sair) {
      pularLinha();
      imprimirMensagemComMoldura(
          ' CLIENTE |  ${_criaTituloDoMenuCliente(cliente)} ');
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
          cliente = _inserirDadosCliente();
          break;
        case '2':
          cliente != null
              ? _adicionarDinheiro(cliente!)
              : imprimirUsuarioNaoAdicionado(Usuario.cliente);
        case '3':
          cliente != null
              ? _comprarProduto(cliente!)
              : imprimirUsuarioNaoAdicionado(Usuario.cliente);
          break;
        case '4':
          cliente != null
              ? cliente!.verResumo()
              : imprimirUsuarioNaoAdicionado(Usuario.cliente);
          break;
        case '5':
          cliente != null
              ? cliente!.verSaldoAtual()
              : imprimirUsuarioNaoAdicionado(Usuario.cliente);
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

  String _criaTituloDoMenuCliente(Cliente? cliente) {
    return cliente != null
        ? '${cliente.nome} - saldo \$ ${cliente.dinheiro}'
        : 'TEAM FIVE';
  }

  Cliente _inserirDadosCliente() {
    print('Digite seu nome:');
    String nome = stdin.readLineSync()!;
    print('Digite seu CPF:');
    String cpf = stdin.readLineSync()!;
    print('Digite sua data de nascimento (dessa forma: YYYY-MM-DD):');
    DateTime dataNascimento = DateTime.parse(stdin.readLineSync()!);
    Genero genero = selecionarGeneroNoMenu();

    Cliente cliente = Cliente(
        nome: nome, cpf: cpf, dataDeNascimento: dataNascimento, genero: genero);

    return cliente;
  }

  void _adicionarDinheiro(Cliente cliente) {
    print('Digite o valor a ser adicionado:');
    double valor = double.parse(stdin.readLineSync()!);

    cliente.adicionarDinheiro(valor);
  }

  void _comprarProduto(Cliente cliente) {
    Produto produtoSelecionado = selecionarProdutoNoMenu();
    Revendedor revendedorSelecionado = selecionarRevendedorNoMenu();

    cliente.comprarProduto(produtoSelecionado, revendedorSelecionado);
  }
}
