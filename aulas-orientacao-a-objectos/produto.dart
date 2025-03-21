class Produto {
  String nome;
  double preco;
  int codigo;
  double desconto;

  Produto({
    required this.nome,
    required this.preco,
    required this.codigo,
    this.desconto = 0,
  });

  double get precoComDesconto {
    return preco * (1 - desconto);
  }
}
