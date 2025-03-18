void main(List<String> args) {
  var vlista = [3, 4, 6, 7, 8, 8];
  retorna2elemento<int>(vlista);
}

E? retorna2elemento<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}
