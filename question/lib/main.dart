import 'package:flutter/material.dart';
import './button.dart';
import 'package:question/questao.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> Perguntas = [
      {
        "texto": "Qual é a sua cor favorita?",
        "respostas": ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        "texto": "Qual é o seu animal favorito?",
        "respostas": ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        "texto": "Qual é o seu time favorito?",
        "respostas": ['Flamengo', 'Corinthians', 'São Paulo', 'Palmeiras'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Questao(Perguntas[_perguntaSelecionada]['texto'] as String),
            Button(_responder, _perguntaSelecionada),
            Button(_responder, _perguntaSelecionada),
            Button(_responder, _perguntaSelecionada),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
