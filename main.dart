import 'classes/produto.dart';
import 'utils.dart';

void main() {
  Produto produto1 = Produto(
    nome: 'Gel de Limpeza Facial Antioxidante Botik Vitamina C 200g',
    valor: 69.90,
    qtdEmEstoque: 2,
    );
    produto1.realizarVenda();
    print("A receita gerada com a venda do produto é de ${produto1.verReceitaGerada()} reais.");
    pularLinha();
    produto1.realizarVenda();
    print("A receita gerada com a venda do produto é de ${produto1.verReceitaGerada()} reais.");
    pularLinha();
    produto1.realizarVenda();
    print("A receita gerada com a venda do produto é de ${produto1.verReceitaGerada()} reais.");
    pularLinha();

    Produto produto2 = Produto(
      nome: 'Privée Fresh Season Eau De Parfum 75ml',
      valor: 399.00,
      qtdEmEstoque: 1,
    );
    produto2.realizarVenda();
    print("A receita gerada com a venda do produto é de ${produto2.verReceitaGerada()} reais.");
    pularLinha();
    produto2.realizarVenda();
    print("A receita gerada com a venda do produto é de ${produto2.verReceitaGerada()} reais.");
}