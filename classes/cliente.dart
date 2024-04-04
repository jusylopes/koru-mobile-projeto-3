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
      ? _efetuarCompra(produto, revendedor)
      : _recusarCompra(produto.nome);
  }

  void _efetuarCompra(Produto produto, Revendedor revendedor){
      revendedor.venderProduto(produto);

      if(produto.qtdEmEstoque > 0){
        produtosComprados.add(produto);
        dinheiro -= produto.valor;
      }
  } 
  
  void _recusarCompra(String nomeProduto){
      print('Cliente $nome não possui dinheiro suficiente para comprar o produto $nomeProduto.');
  }
}
