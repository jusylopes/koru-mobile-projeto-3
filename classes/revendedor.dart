import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcetagemLucro = 0.5;

  Revendedor(
      {required String nome,
      required String cpf,
      required DateTime dataDeNascimento,
      required this.matricula})
      : super(nome: nome, cpf: cpf, dataDeNascimento: dataDeNascimento);
}
