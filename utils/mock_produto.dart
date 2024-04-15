import '../classes/produto.dart';

class MockProduto {
  static List<Produto> mockProduto() {
    return [
      Produto(
        nome: 'Gel de Limpeza Facial Antioxidante Botik Vitamina C 200g',
        valor: 69.90,
        qtdEmEstoque: 2,
      ),
      Produto(
        nome: 'Privée Fresh Season Eau De Parfum 75ml',
        valor: 399.00,
        qtdEmEstoque: 10,
      ),
      Produto(
        nome: 'Gloss Labial Vermelho Morango Bubbaloo 5ml',
        valor: 39.90,
        qtdEmEstoque: 20,
      ),
      Produto(
        nome: 'Fleur Suprême Eau de Parfum 75ml',
        valor: 159.90,
        qtdEmEstoque: 10,
      ),
    ];
  }
}
