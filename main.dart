import 'classes/cliente.dart';
import 'classes/enums.dart';
import 'classes/produto.dart';
import 'classes/pessoa.dart';
import 'classes/revendedor.dart';
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
  inserirSeparador();

  imprimirNomeQtdProduto(produto1.nome, produto1.qtdEmEstoque);
  produto1.realizarVenda(); 
  inserirSeparador();

  imprimirNomeQtdProduto(produto1.nome, produto1.qtdEmEstoque);
  produto1.realizarVenda(); 
  inserirSeparador();

  Produto produto2 = Produto(
    nome: 'Privée Fresh Season Eau De Parfum 75ml',
    valor: 399.00,
    qtdEmEstoque: 10,
  );

  imprimirNomeQtdProduto(produto2.nome, produto2.qtdEmEstoque);
  produto2.realizarVenda(); 
  inserirSeparador();

  imprimirNomeQtdProduto(produto2.nome, produto2.qtdEmEstoque);
  produto2.realizarVenda(); 
  inserirSeparador();

  pularLinha();
  imprimirNomeClasse('Revendedor');
  Revendedor revendedor1 = Revendedor(
    nome: 'Eduardo',
    cpf: '000.123.456.789',
    dataDeNascimento: DateTime.parse('1992-02-21'),
    matricula: '508726',
    genero: Genero.Outro,
  );
  revendedor1.falar('Olá! Temos promoções!');
  revendedor1.venderProduto(produto1);
  inserirSeparador();

  Revendedor revendedor2 = Revendedor(
    nome: 'Angelina',
    cpf: '456.789.012.34',
    dataDeNascimento: DateTime.parse('1982-10-21'),
    matricula: '505744',
    genero: Genero.Feminino,
  );
  revendedor2.falar('Sou sua consultora Boti!');
  revendedor2.venderProduto(produto2);
  pularLinha();

  imprimirNomeClasse('Cliente');
  Cliente cliente1 = Cliente(
    nome: 'Willian',
    cpf: '000.777.888-99',
    dataDeNascimento: DateTime.parse('2000-02-13'),
    genero: Genero.Masculino,
  );
  cliente1.falar('Boa noite galera');
  cliente1.adicionarDinheiro(800);
  cliente1.comprarProduto(produto2, revendedor1);
  cliente1.comprarProduto(produto1, revendedor1);
  cliente1.comprarProduto(produto2, revendedor1);
  cliente1.verSaldoAtual();

  inserirSeparador();
  Cliente cliente2 = Cliente(
    nome: 'Lucas',
    cpf: '111.222.333-99',
    dataDeNascimento: DateTime.parse('2002-02-13'),
    genero: Genero.Outro,
  );
  cliente2.falar('Gostaria de um produto');
  cliente2.adicionarDinheiro(80);
  cliente2.comprarProduto(produto1, revendedor1);
  cliente2.verSaldoAtual();
  inserirSeparador();
}
