import 'dart:math';

void exec(Function fnPar, Function fnImpar) {
  return Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
}

void main(List<String> args) {
  final minhaFnPar = () => print("Valor e PAR");
  final minhaFnImPar = () => print("Valor e IMPAR");

  final funcao = exec(minhaFnPar, minhaFnImPar);
}
