import 'dart:io';

void main(List<String> args) {
  bool wasContinue = true;
  final candidatos = [];
  int nulo = 0;
  int white = 0;

  while (wasContinue) {
    print("Deseja Votar S/N");
    String? input = stdin.readLineSync();
    if (input == "N" || input == "n") {
      wasContinue = false;
      break;
    }

    print("Digite o codigo do candidato: 1,2,3,4");
    print("5 = voto nulo");
    print("6 = voto em branco;");

    int? voto = int.parse(stdin.readLineSync()!);
    if (voto == 5) {
      nulo++;
    } else if (voto == 6) {
      white++;
    } else if (voto >= 1 && voto <= 4) {
      candidatos.add(voto);
    }
  }
  final resultado = Map();

  for (var voto in candidatos) {
    if (resultado.containsKey(voto)) {
      resultado[voto] += 1;
    } else {
      resultado[voto] = 1;
    }
  }

  print("Resultado dos votos por candidato: $resultado");
  print("Votos Nulos: $nulo");
  print("Votos em Branco: $white");
}
