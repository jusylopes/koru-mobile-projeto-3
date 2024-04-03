import 'classes/enums.dart';
import 'classes/produto.dart';
import 'classes/pessoa.dart';
import 'utils.dart';

void main() {
  // testando a classe Pessoa
  Pessoa pessoaA = Pessoa(
      nome: 'Paulo',
      cpf: '86688200867',
      dataDeNascimento: DateTime.parse('1990-12-23'),
      genero: Genero.Masculino);
  pessoaA.falar('Olá Lua, como ficou?');
  pessoaA.maiorIdade();
  pularLinha();

  Pessoa pessoaB = Pessoa(
      nome: 'Maria',
      cpf: '70098787323',
      dataDeNascimento: DateTime.parse('2020-02-23'),
      genero: Genero.Feminino);
  pessoaB.falar('Oi tudo bem?');
  pessoaB.maiorIdade();
  pularLinha();

  Pessoa pessoaC = Pessoa(
      nome: 'João',
      cpf: '10098787390',
      dataDeNascimento: DateTime.parse('2017-02-13'),
      genero: Genero.Outro);

  pessoaC.falar('Oi, como vai?');
  pessoaC.maiorIdade();
  pularLinha();

  // testando a classe Produto
  Produto produto1 = Produto(
    nome: 'Gel de Limpeza Facial Antioxidante Botik Vitamina C 200g',
    valor: 69.90,
    qtdEmEstoque: 2,
  );
  produto1.realizarVenda();
  print(
      "A receita gerada com a venda do produto é de ${produto1.verReceitaGerada()} reais.");
  pularLinha();
  produto1.realizarVenda();
  print(
      "A receita gerada com a venda do produto é de ${produto1.verReceitaGerada()} reais.");
  pularLinha();
  produto1.realizarVenda();
  print(
      "A receita gerada com a venda do produto é de ${produto1.verReceitaGerada()} reais.");
  pularLinha();

  Produto produto2 = Produto(
    nome: 'Privée Fresh Season Eau De Parfum 75ml',
    valor: 399.00,
    qtdEmEstoque: 1,
  );
  produto2.realizarVenda();
  print(
      "A receita gerada com a venda do produto é de ${produto2.verReceitaGerada()} reais.");
  pularLinha();
  produto2.realizarVenda();
  print(
      "A receita gerada com a venda do produto é de ${produto2.verReceitaGerada()} reais.");
}
