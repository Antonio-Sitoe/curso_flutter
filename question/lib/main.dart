import 'package:flutter/material.dart';
import 'package:question/questionarios.dart';
import 'package:question/resultado.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _Perguntas = const [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": [
        {'texto': 'Preto', 'pontuacao': 3},
        {'texto': 'Vermelho', 'pontuacao': 4},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 9},
      ],
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 3},
        {'texto': 'Elefante', 'pontuacao': 2},
        {'texto': 'Leão', 'pontuacao': 10},
      ],
    },
    {
      "texto": "Qual é o seu time favorito?",
      "respostas": [
        {'texto': 'Flamengo', 'pontuacao': 10},
        {'texto': 'Corinthians', 'pontuacao': 5},
        {'texto': 'São Paulo', 'pontuacao': 3},
        {'texto': 'Palmeiras', 'pontuacao': 8},
      ],
    },
  ];
  void _responder(int pontuacao) {
    if (TemPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print("Pontuacao Total: $_pontuacaoTotal");
  }

  bool get TemPerguntaSelecionada {
    return _perguntaSelecionada < _Perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  _perguntaSelecionada = 0;
                });
              },
            ),
          ],
        ),
        body:
            TemPerguntaSelecionada
                ? Questionarios(
                  _Perguntas[_perguntaSelecionada]['texto'] as String,
                  _Perguntas[_perguntaSelecionada]['respostas']
                      as List<Map<String, Object>>,
                  _responder,
                )
                : Resultado(pontuacao: _pontuacaoTotal),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
