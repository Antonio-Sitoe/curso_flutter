import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          this.texto,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }
}
