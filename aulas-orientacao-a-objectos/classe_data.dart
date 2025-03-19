class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano);
  Data.com({this.dia = 1, this.mes = 1, this.ano = 2015}) {}

  // Data(int diaInicial, int mesInicial, int anoInicial)
  //     : dia = diaInicial,
  //       mes = mesInicial,
  //       ano = anoInicial;

  String mostrarData() {
    return '${dia}/${mes}/${ano}';
  }
}

void main(List<String> args) {
  var DataNascimento = Data(1, 1, 4);
  final Data dataCompra = Data(1, 1, 2023);

  print(Data.com(ano: 2022));
}
