import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback _responder;
  final int _perguntaSelecionada;

  Button(this._responder, this._perguntaSelecionada);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
      ), // Margin on left and right
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xFF4CAF50),
          ), // A nice green color
        ),
        onPressed: this._responder,
        child: Text(
          'Resposta ${_perguntaSelecionada}',
          style: TextStyle(color: Colors.white), // Ensures text is readable
        ),
      ),
    );
  }
}
