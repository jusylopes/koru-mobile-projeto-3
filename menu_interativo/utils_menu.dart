import 'dart:io';
import '../classes/produto.dart';
import '../classes/revendedor.dart';
import '../utils/enums.dart';
import '../utils/mock_produto.dart';
import '../utils/mock_revendedor.dart';

Genero selecionarGeneroNoMenu() {
  print('Escolha o gênero:');
  print('1 - Feminino');
  print('2 - Masculino');
  print('3 - Outro');

  String? input;
  Genero? genero;

  while (genero == null) {
    input = stdin.readLineSync();
    switch (input) {
      case '1':
        genero = Genero.Feminino;
        break;
      case '2':
        genero = Genero.Masculino;
        break;
      case '3':
        genero = Genero.Outro;
        break;
      default:
        print('Opção inválida. Tente novamente.');
        return selecionarGeneroNoMenu();
    }
  }

  return genero;
}

Produto selecionarProdutoNoMenu() {
  List<Produto> produtos = MockProduto.mockProduto();

  print('Escolha um produto:');
  for (int i = 0; i < produtos.length; i++) {
    print(
        '${i + 1} - ${produtos[i].nome} - ${produtos[i].valor.toStringAsFixed(2)} reais');
  }
  int produtoIndex = int.parse(stdin.readLineSync()!) - 1;
  Produto produtoSelecionado = produtos[produtoIndex];

  return produtoSelecionado;
}

Revendedor selecionarRevendedorNoMenu() {
  List<Revendedor> revendedores = MockRevendedor.mockRevendedor();

  print('Escolha um revendedor:');
  for (int i = 0; i < revendedores.length; i++) {
    print(
        '${i + 1} - ${revendedores[i].nome} - MAT: ${revendedores[i].matricula}');
  }
  int produtoIndex = int.parse(stdin.readLineSync()!) - 1;
  Revendedor revendedorSelecionado = revendedores[produtoIndex];

  return revendedorSelecionado;
}

void imprimirUsuarioNaoAdicionado(Usuario tipoUsuario) {
  print(
      'Usuário não adicionado. Por favor, adicione um ${tipoUsuario == Usuario.revendedor ? 'revendedor' : 'cliente'} primeiro.');
}

void imprimirOpcaoInvalida() {
  print('Opção inválida. Por favor, escolha uma opção válida.');
}

String validarDataDeNascimento(String textInput) {
  RegExp regExpDataNascimento = RegExp(r'^\d{4}-\d{2}-\d{2}$');

  while (regExpDataNascimento.hasMatch(textInput)) {
    print('Formato de data inválido. Por favor, insira no formato AAAA-MM-DD:');
    textInput = stdin.readLineSync()!;
  }

  return textInput;
}

String validarCpf(String textInput) {
  RegExp regExpCpf = RegExp(r'^\d+$');

  while (regExpCpf.hasMatch(textInput)) {
    print('Formato de CPF inválido. Por favor, insira apenas números:');
    textInput = stdin.readLineSync()!;
  }

  return textInput;
}
