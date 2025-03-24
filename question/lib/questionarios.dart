import 'package:flutter/material.dart';
import 'package:question/questao.dart';
import 'package:question/resposta.dart';

class Questionarios extends StatelessWidget {
  final List<Map<String, Object>> _Perguntas;
  final Function(int pontuacao) _responder;
  String title;
  Questionarios(this.title, this._Perguntas, this._responder);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(title),
        ...(_Perguntas).map((texto) {
          return Resposta(
            () => _responder(texto['pontuacao'] as int),
            texto['texto'] as String,
          );
        }).toList(),
      ],
    );
  }
}
