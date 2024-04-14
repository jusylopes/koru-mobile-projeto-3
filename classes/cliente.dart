import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(
      {required String nome,
      required String cpf,
      required DateTime dataDeNascimento,
      required Genero genero,
      this.dinheiro = 0})
      : super(
            nome: nome,
            cpf: cpf,
            dataDeNascimento: dataDeNascimento,
            genero: genero);

  @override
  void falar(String falaDaPessoa) {
    print('Cliente $nome diz: $falaDaPessoa');
  }

  void adicionarDinheiro(double valor) {
    if (valor >= 0) {
      dinheiro += valor;
      print('$nome agora você possui ${dinheiro.toStringAsFixed(2)} reais.');
    } else {
      print('$nome não é permitido fazer esse tipo de Operação.');
    }
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    dinheiro >= produto.valor
        ? _realizarCompra(produto, revendedor)
        : _recusarCompra(produto.nome);
  }

  void _realizarCompra(Produto produto, Revendedor revendedor) {
    try {
      revendedor.venderProduto(produto);
      produtosComprados.add(produto);
      dinheiro -= produto.valor;
    } catch (e) {
      print("Erro ao comprar o produto: $e");
    }
  }

  void _recusarCompra(String nomeProduto) {
    print(
        'Cliente $nome não possui dinheiro suficiente para comprar o produto $nomeProduto.');
  }

  void verSaldoAtual() {
    print(
        'Cliente $nome seu saldo atual é de ${dinheiro.toStringAsFixed(2)} reais');
  }

  void _ordenarProdutosComprados() {
    produtosComprados.sort((a, b) => a.nome.compareTo(b.nome));
  }

  double calcularTotalGasto() {
    double totalDeProdutosComprados = 0;
    for (int i = 0; i < produtosComprados.length; i++) {
      totalDeProdutosComprados += produtosComprados[i].valor;
    }
    return totalDeProdutosComprados;
  }

  double calcularMediaProdutosComprados() {
    double somaValores = calcularTotalGasto();
    double mediaDeProdutosComprados = somaValores / produtosComprados.length;

    return mediaDeProdutosComprados;
  }

  void verProdutosComprados() {
    _ordenarProdutosComprados();

    print('Produtos comprados por $nome: ');
    for (Produto produto in produtosComprados) {
      print('${produto.nome} - ${produto.valor.toStringAsFixed(2)}');
    }
  }

  void verResumo() {
    print(
        "O total gasto por $nome foi de ${calcularTotalGasto().toStringAsFixed(2)} reais e a média dos produtos comprados é de ${calcularMediaProdutosComprados().toStringAsFixed(2)} reais");
  }
}
