List<K> filtrar<K>(List<K> lista, bool Function(K) fn) {
  List<K> novaLista = [];

  for (K elemento in lista) {
    if (fn(elemento)) {
      novaLista.add(elemento);
    }
  }
  return novaLista;
}

void main(List<String> args) {
  List<double> Lista = [
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    1,
    23,
    12,
    14,
    15,
    16,
    54,
    23,
    2,
    1,
    21,
    23,
    34,
    43,
  ];

  var notas = filtrar(Lista, (double nota) => nota >= 7.5);

  print(notas);
}
