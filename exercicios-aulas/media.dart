import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Calculo de Media ");
  print("Digite a primeira nota: ");
  double? nota1 = double.parse(stdin.readLineSync()!);
  print("Digite a primeira nota: ");
  double? nota2 = double.parse(stdin.readLineSync()!);
  print("Digite a primeira nota: ");
  double? nota3 = double.parse(stdin.readLineSync()!);

  print("Escolha o tipo de media ");
  print("a) Geometrica");
  print("b) Ponderada");
  print("c) Harmonica");
  print("d) Aritimetrica");

  String? tipoMedia = stdin.readLineSync();

  double media = 0;

  switch (tipoMedia) {
    case "a":
      media = pow(nota1 * nota2 * nota3, 1 / 3).toDouble();
      break;
    case "b":
      media = (nota1 + (2 * nota2) + (3 * nota3)) / 6;
      break;
    case "c":
      media = 1 / ((1 / nota1) + (1 / nota2) + (1 / nota3));
      break;

    default:
      media = (nota1 + nota2 + nota3) / 3;
      break;
  }

  print("A media é: $media");
}
