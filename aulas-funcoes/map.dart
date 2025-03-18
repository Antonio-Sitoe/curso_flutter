void main(List<String> args) {
  List<Map<String, dynamic>> alunos = [
    {'nome': 'Maria', "idade": 20},
    {'nome': 'João', "idade": 25},
    {'nome': 'Ana', "idade": 22},
    {'nome': 'Carlos', "idade": 30},
    {'nome': 'Fernanda', "idade": 28},
  ];

  final novosALunos = alunos.map((aluno) {
    aluno['sexo'] = "Maxo";
    return aluno;
  });

  print(novosALunos);
}
