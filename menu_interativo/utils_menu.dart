import 'dart:io';
import '../classes/brinde.dart';
import '../classes/cliente.dart';
import '../classes/produto.dart';
import '../classes/revendedor.dart';
import '../utils/enums.dart';
import '../utils/mock_brinde.dart';
import '../utils/mock_produto.dart';
import '../utils/mock_revendedor.dart';
import '../utils/utils.dart';

Genero selecionarGeneroNoMenu() {
  print('|-----------------------------|');
  print('| Escolha o gênero:           |');
  print('| 1 - Feminino                |');
  print('| 2 - Masculino               |');
  print('| 3 - Outro                   |');
  print('|-----------------------------|');

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

Humor selecionarHumorNoMenu(Cliente cliente) {
  pularLinha();
  imprimirMensagemComMoldura('TERMOMETRO DO HUMOR  |  ${cliente.nome} ');
  print('|-----------------------------|');
  print('| Escolha seu humor:          |');
  print('| 1 - FELIZ                   |');
  print('| 2 - TRISTE                  |');
  print('| 3 - COM RAIVA               |');
  print('| 4 - COM NOJO                |');
  print('| 5 - ANSIOSO                 |');
  print('| 6 - COM MEDO                |');
  print('| 7 - COM ALEGRIA             |');
  imprimirMensagemComMoldura(' 😁  😰  🤩  🥺  🥶  🤢  😡');

  Cliente clienteX = cliente;
  String? input;
  Humor humor = Humor.alegria;

  while (true) {
    input = stdin.readLineSync();
    switch (input) {
      case '1':
        return Humor.felicidade;
      case '2':
        humor = Humor.tristeza;
      case '3':
        humor = Humor.raiva;
      case '4':
        humor = Humor.nojo;
      case '5':
        humor = Humor.ansiedade;
      case '6':
        humor = Humor.medo;
      case '7':
        humor = Humor.alegria;
      default:
        print('Opção inválida. Tente novamente.');
        return selecionarHumorNoMenu(clienteX);
    }
    break;
  }

  return humor;
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

Brinde selecionarBrindeNoMenu() {
  List<Brinde> brindes = MockBrinde.mockBrinde();

  print('Escolha um brinde 🎁🎁🎁:');
  for (int i = 0; i < brindes.length; i++) {
    print(
        '${i + 1} - ${brindes[i].nomeBrinde} - ${brindes[i].pontosNecessarios} pontos');
  }
  int brindeIndex = int.parse(stdin.readLineSync()!) - 1;
  Brinde brindeSelecionado = brindes[brindeIndex];

  return brindeSelecionado;
}

void imprimirUsuarioNaoAdicionado(Usuario tipoUsuario) {
  print(
      'Usuário não adicionado. Por favor, adicione um ${tipoUsuario == Usuario.revendedor ? 'revendedor' : 'cliente'} primeiro.');
}

void imprimirOpcaoInvalida() {
  print('Opção inválida. Por favor, escolha uma opção válida.');
}

String validarDataDeNascimento(String textInput) {
  RegExp regExpDataNascimento =
      RegExp(r'(19|20)\d{2}-(0[1-9]|1[1,2])-(0[1-9]|[12][0-9]|3[01])$');

  while (!regExpDataNascimento.hasMatch(textInput)) {
    print('Formato de data inválido. Por favor, insira no formato AAAA-MM-DD:');
    textInput = stdin.readLineSync()!;
  }

  return textInput;
}

String validarCpf(String textInput) {
  RegExp regExpCpf = RegExp(
      r'([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})$');

  while (!regExpCpf.hasMatch(textInput)) {
    print('Formato de CPF inválido. Por favor, insira um cpf válido:');
    textInput = stdin.readLineSync()!;
  }

  return textInput;
}
