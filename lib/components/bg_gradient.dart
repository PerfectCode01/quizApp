import 'package:flutter/material.dart';

class BgGradient extends StatelessWidget {
  const BgGradient({super.key});
  void onPressed() {}

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.jpg',
             width: 300,
          ),

          const Text(
            "Test tes connaissances sur la culture générale de la RDC",
            style:TextStyle(
              fontSize: 18,
              color: Colors.grey,
            )
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: onPressed,
            style:OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 206, 9, 108),
              textStyle: const TextStyle(
                fontSize: 20
              ) 
            ),
            icon: const Icon(Icons.arrow_right_alt), 
            label: const Text('Commencer')
          )
        ],
      ),
    );
  }
}
