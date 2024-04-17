import 'dart:io';

import '../classes/cliente.dart';
import '../utils/utils.dart';
import 'utils_menu.dart';

class MenuClubeDeFidelidade {
  Cliente cliente;

  MenuClubeDeFidelidade({
    required this.cliente,
  });

  void chamarMenuClubeDeFidelidade() {
    bool sair = false;

    while (!sair) {
      pularLinha();
      imprimirMensagemComMoldura(' CLUBE DE FIDELIDADE |  ${cliente.nome} ');
      print('|--------------------------------|');
      print('| 1 - Consultar Pontos           |');
      print('| 2 - Trocar Pontos por Brindes  |');
      print('| 3 - Histórico de trocas        |');
      print('| 4 - Voltar ao menu anterior    |');
      print('|--------------------------------|');
      imprimirEstrelasDoClubeASCII();

      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          break;
        case '2':
          break;
        case '3':
          break;
        case '4':
          sair = true;
          break;
        default:
          imprimirOpcaoInvalida();
          break;
      }
    }
  }
}
