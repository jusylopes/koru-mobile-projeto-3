import 'pessoa.dart';
import 'produto.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(
      {required String nome,
      required String cpf,
      required DateTime dataDeNascimento,
      this.dinheiro = 0})
      : super(nome: nome, cpf: cpf, dataDeNascimento: dataDeNascimento);

  @override
  void falar(String falaDaPessoa) {
    print('Cliente $nome diz: $falaDaPessoa');
  }
}
