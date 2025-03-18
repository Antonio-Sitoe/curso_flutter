void main(List<String> args) {
  String nome = 'Joak';
  String status = 'aprovado';
  double nota = 56;

  String frase = nome + status + nota.toString();
  String frase2 = "$nome esta ${status} porque tirou ${nota.toString()}";

  print(frase);
  print(frase2);
}
