void main(List<String> args) {
  var notas = [8.2 + 1, 8.7, 12, 7, 7.7, 71, 5.7, 1, 8.6 + 1];
  var notasFiltradas = notas.where((nota) => nota > 7).toList();
  print(notasFiltradas);

  bool Function(num) notasBoasFn = (num nota) => nota >= 7;

  var notasBoas = notas.where(notasBoasFn);
  print(notasBoas);
}
