import './produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  late double _preco;

  VendaItem({required this.produto, this.quantidade = 1});

  double get preco {
    if (produto != null && _preco == null) {
      _preco = produto.precoComDesconto;
    }
    return _preco;
  }

  set preco(double preco) {
    if (preco > 0) {
      _preco = preco;
    }
  }
}
