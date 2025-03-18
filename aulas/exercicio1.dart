import 'dart:io';

void main() {
  print("Digite a quantidade de pinos (entre 0 e 28):");

  int? quantidadePinos = int.tryParse(stdin.readLineSync() ?? '');

  if (quantidadePinos == null || quantidadePinos < 0 || quantidadePinos > 28) {
    print("Quantidade inválida. Deve ser entre 0 e 28.");
    return;
  }

  int pinosRestantes = quantidadePinos;
  int fila = 1;

  while (pinosRestantes >= fila) {
    print('Fila $fila: ' + 'O ' * fila);
    pinosRestantes -= fila;
    fila++;
  }

  if (pinosRestantes > 0) {
    print("$pinosRestantes pino(s) não puderam ser enfileirados.");
  }
}
