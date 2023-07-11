

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color.fromARGB(255, 175, 12, 250),
      child: Center(
          child: Text(
            "Hello Flutter", 
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.7,
              fontStyle: FontStyle.italic
            ),
            )
          ),
    );

    // return const Center(
    //   child: Text("Hello Flutter",textDirection: TextDirection.ltr),
    // );
  }
}