import './Venda.dart';
import './cliente.dart';
import './produto.dart';
import './venda_item_dart.dart';

void main(List<String> args) {
  var cliente = new Cliente(nome: "Antonio Sitoe", cpf: "ABC-123456");
  var produto1 = new Produto(
    codigo: 123,
    nome: "Lapis",
    preco: 124,
    desconto: 3,
  );
  var produto2 = new Produto(
    codigo: 123,
    nome: "Calse",
    preco: 321,
    desconto: 3,
  );
  var produto3 = new Produto(
    codigo: 123,
    nome: "Celular",
    desconto: 3,
    preco: 123,
  );

  var venda = new Venda(
    cliente: cliente,
    itens: [
      new VendaItem(produto: produto1, quantidade: 2),
      new VendaItem(produto: produto2, quantidade: 3),
      new VendaItem(produto: produto3, quantidade: 1),
    ],
  );

  print(venda.valorTotal);
}
