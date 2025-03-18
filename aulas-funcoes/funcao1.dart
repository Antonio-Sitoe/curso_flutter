void main(List<String> args) {
  int a = 2;
  int b = 3;
  int c = 4;

  somaPrint(c + c);
  print(soma2numeros(a, b));
  saudarPessoa(idade: 6, nome: "Manuel");
}

void somaPrint(a) {
  print(a);
}

num soma2numeros(num a, num b) {
  return a + b;
}

void saudarPessoa({required String nome, required int idade}) {
  print(nome);
}
