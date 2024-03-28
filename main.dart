import 'classes/pessoa.dart';
import 'utils.dart';

void main() {
  Pessoa pessoaA = Pessoa(
    nome: 'Paulo',
    cpf: '86688200867',
    dataDeNascimento: DateTime.parse('1990-12-23'),
  );
  pessoaA.falar('Olá Lua, como ficou?');
  pessoaA.maiorIdade();
  pularLinha();

  Pessoa pessoaB = Pessoa(
    nome: 'Maria',
    cpf: '70098787323',
    dataDeNascimento: DateTime.parse('2020-02-23'),
  );
  pessoaB.falar('Oi tudo bem?');
  pessoaB.maiorIdade();
  pularLinha();

  Pessoa pessoaC = Pessoa(
    nome: 'João',
    cpf: '10098787390',
    dataDeNascimento: DateTime.parse('2017-02-13'),
  );

  pessoaC.falar('Oi, como vai?');
  pessoaC.maiorIdade();
  pularLinha();
}
