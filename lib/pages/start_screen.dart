import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(248, 0, 78, 1))),
      home: Scaffold(
        appBar: AppBar(title:  const Text('QUIZ APP')),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/logo.jpg', width: 300),
              const Text(
                'Tes tes connaissance en culture générale',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton.icon(
                onPressed: () {
                  startQuiz();
                },
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20)),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Commencer'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
