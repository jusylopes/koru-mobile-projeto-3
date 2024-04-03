import 'classes/enums.dart';
import 'classes/produto.dart';
import 'classes/pessoa.dart';
import 'utils.dart';

void main() {
  imprimirNomeClasse('Pessoa');
  Pessoa pessoaA = Pessoa(
      nome: 'Paulo',
      cpf: '86688200867',
      dataDeNascimento: DateTime.parse('1990-12-23'),
      genero: Genero.Masculino);
  pessoaA.falar('Olá Lua, como ficou?');
  pessoaA.maiorIdade();
  inserirSeparador();

  Pessoa pessoaB = Pessoa(
      nome: 'Maria',
      cpf: '70098787323',
      dataDeNascimento: DateTime.parse('2020-02-23'),
      genero: Genero.Feminino);
  pessoaB.falar('Oi tudo bem?');
  pessoaB.maiorIdade();
  inserirSeparador();

  Pessoa pessoaC = Pessoa(
      nome: 'João',
      cpf: '10098787390',
      dataDeNascimento: DateTime.parse('2017-02-13'),
      genero: Genero.Outro);

  pessoaC.falar('Oi, como vai?');
  pessoaC.maiorIdade();
  inserirSeparador();

  pularLinha();
  imprimirNomeClasse('Produto');
  Produto produto1 = Produto(
    nome: 'Gel de Limpeza Facial Antioxidante Botik Vitamina C 200g',
    valor: 69.90,
    qtdEmEstoque: 2,
  );

  imprimirNomeQtdProduto(produto1.nome, produto1.qtdEmEstoque);
  produto1.realizarVenda();
  imprimirReceitaGerada(produto1.verReceitaGerada());
  inserirSeparador();

  imprimirNomeQtdProduto(produto1.nome, produto1.qtdEmEstoque);
  produto1.realizarVenda();
  imprimirReceitaGerada(produto1.verReceitaGerada());
  inserirSeparador();

  imprimirNomeQtdProduto(produto1.nome, produto1.qtdEmEstoque);
  produto1.realizarVenda();
  imprimirReceitaGerada(produto1.verReceitaGerada());
  inserirSeparador();

  Produto produto2 = Produto(
    nome: 'Privée Fresh Season Eau De Parfum 75ml',
    valor: 399.00,
    qtdEmEstoque: 1,
  );

  imprimirNomeQtdProduto(produto2.nome, produto2.qtdEmEstoque);
  produto2.realizarVenda();
  imprimirReceitaGerada(produto2.verReceitaGerada());
  inserirSeparador();

  imprimirNomeQtdProduto(produto2.nome, produto2.qtdEmEstoque);
  produto2.realizarVenda();
  imprimirReceitaGerada(produto2.verReceitaGerada());
  inserirSeparador();

  // imprimirNomeClasse('Revendedor');
  // imprimirNomeClasse('Cliente');
}
