import './cliente.dart';
import './venda_item_dart.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    return itens
        .map((item) => item.quantidade * item.preco)
        .reduce((t, a) => t + a);
  }
}
