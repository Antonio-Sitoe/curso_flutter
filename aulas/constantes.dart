import 'dart:io';

main() {
  // Area da circunferencias
  final PI = 3.1415;

  var txt = stdin.readLineSync() ?? '';
  final raio = double.parse(txt);
  final area = PI * raio * raio;

  print(area);
}
