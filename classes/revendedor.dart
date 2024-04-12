import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.15;

  Revendedor(
      {required String nome,
      required String cpf,
      required DateTime dataDeNascimento,
      required this.matricula,
      required Genero genero})
      : super(
            nome: nome,
            cpf: cpf,
            dataDeNascimento: dataDeNascimento,
            genero: genero);

  void venderProduto(Produto produto){
  try {
    produto.realizarVenda();
    produtosVendidos.add(produto);
  } catch (e) {
    throw e;
  }
  }

  @override
  void falar(String falaDaPessoa) {
    String generoRevendedor;
    switch (genero) {
      case Genero.Feminino:
        generoRevendedor = 'Revendedora';
        break;
      case Genero.Masculino:
        generoRevendedor = 'Revendedor';
        break;
      case Genero.Outro:
        generoRevendedor = 'Pessoa revendedora';
        break;
    }
    print('$generoRevendedor $nome diz: $falaDaPessoa');
  }
}
