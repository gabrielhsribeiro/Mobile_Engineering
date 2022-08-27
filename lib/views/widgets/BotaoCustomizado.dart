import 'package:flutter/material.dart';

class BotaoCustomizado extends StatelessWidget {
  // const BotaoCustomizado({Key? key, required String texto, required Null Function() onPressed}) : super(key: key);

  final String texto;
  final Color corTexto;
  final VoidCallback onPressed;

  BotaoCustomizado(
      {required this.texto,
      this.corTexto = Colors.white,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return ElevatedButton(
      style: style,
      onPressed: () {
        this.onPressed;
      },
      child: Text(
        this.texto,
      ),
    );
  }
}
