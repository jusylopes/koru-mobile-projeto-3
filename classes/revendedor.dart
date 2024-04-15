import '../utils/enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double _porcentagemLucro = 0.15;

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

  double get porcentagemLucro => _porcentagemLucro;

  void venderProduto(Produto produto) {
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

  double calcularMediaProdutosVendidos() {
    double somaValores = 0;
    double media = 0;

    for (int i = 0; i < produtosVendidos.length; i++) {
      somaValores += produtosVendidos[i].valor;
    }

    media = somaValores / produtosVendidos.length;
    return media;
  }

  double calcularTotalVendido() {
    double calcularTotalVendido = 0;
    for (Produto produto in produtosVendidos) {
      calcularTotalVendido += produto.valor;
    }
    return calcularTotalVendido;
  }

  double calcularLucro() {
    double lucroTotal = 0;

    lucroTotal = _porcentagemLucro * calcularTotalVendido();

    return lucroTotal;
  }

  void verResumo() {
    print(
        'O total vendido por $nome foi ${calcularTotalVendido().toStringAsFixed(2)} reais e a média aritmética de valor dos produtos vendidos é ${calcularMediaProdutosVendidos().toStringAsFixed(2)} reais. O lucro recebido foi de ${calcularLucro().toStringAsFixed(2)} reais.');
  }
}
