import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  const Resultado({this.pontuacao = 0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Parabens! " + pontuacao.toString(),
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }
}
