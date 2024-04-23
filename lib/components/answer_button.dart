import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.onPressed, this.reponse, {super.key});
  final void Function() onPressed;
  final String reponse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          reponse,
          textAlign: TextAlign.center,
        )
      ),
    );
  }
}
