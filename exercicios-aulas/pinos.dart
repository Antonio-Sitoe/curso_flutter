import 'dart:io';

void main(List<String> args) {
  print(
    'Digite o numero de Pinos para o jogo de Boliche, deve ser entre 0 a 28',
  );
  String? input = stdin.readLineSync();
  try {
    int pinos = int.parse(input.toString());

    if (pinos < 0 || pinos > 28) {
      print('Numero de pinos invalido, deve ser entre 0 a 28');
      return;
    }

    int valor = 0;

    for (int i = 1; i < pinos; i++) {
      valor += i;
      int pinosRestantes = pinos - valor;
      print('Fila ${i}: $i pinos, restam $pinosRestantes pinos');

      if (pinosRestantes == 0)
        break;
      else if (i > pinosRestantes) {
        print(
          'Não há pinos suficientes para uma Fila ${i + 1} (que precisaria de ${i + 1} pinos).',
        );
        break;
      }
    }
  } catch (e) {
    print('Erro: Digite um numero inteiro');
    return;
  }
}
