import './pessoa.dart';

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

soma(a, b) {
  print(a + b);
}

void main() {
  var p1 = new Produto('Antonio', 6.5);
  var p3 = new Pessoa("Sonia");

  print(p1.nome);
  int a = 3;
  double b = 3.5;

  var l = 5;
  l = 6;

  soma(a, l);
}
