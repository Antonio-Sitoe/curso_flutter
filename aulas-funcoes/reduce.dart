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

  final double total = Lista.reduce((acc, item) => acc += item);

  print(total);
}
