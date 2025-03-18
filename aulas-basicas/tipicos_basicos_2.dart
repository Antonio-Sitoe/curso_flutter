void main(List<String> args) {
  const aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael', 'Sonia'];

  aprovados.forEach((elemento) => print(elemento.toLowerCase()));

  print(aprovados[aprovados.length - 1]);

  Map telefones = {"nome": "Iphone", "modelo": "iphone 5", "Joao": 46656};

  var conjunto = {'Vasco', 'Flamengo', 'Fortaleza', 'Sao paulo'};

  print(telefones.remove('nome'));
  print(conjunto.add('Vasco'));
  print(conjunto);
}
