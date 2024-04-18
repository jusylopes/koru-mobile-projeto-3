import '../classes/brinde.dart';

class MockBrinde {
  static List<Brinde> mockBrinde() {
    return [
      Brinde(
          nomeBrinde: 'Chaveiro Clube Boti',
          pontosNecessarios: 2,
          qtdEmEstoque: 2),
      Brinde(
          nomeBrinde: 'Batom Cremoso Vermelho Revolution Red Make B. 3,6g',
          pontosNecessarios: 5,
          qtdEmEstoque: 4),
      Brinde(
          nomeBrinde:
              'Creme Hidratante para Mãos o Boticário Nativa SPA Ameixa',
          pontosNecessarios: 10,
          qtdEmEstoque: 4),
      Brinde(
          nomeBrinde: 'Desodorante Roll-on Cuide-se Bem Zero Alumínio 55ml',
          pontosNecessarios: 10,
          qtdEmEstoque: 2),
      Brinde(
          nomeBrinde: 'Creme Pós-Barba Azulen Men 40g',
          pontosNecessarios: 5,
          qtdEmEstoque: 5)
    ];
  }
}
