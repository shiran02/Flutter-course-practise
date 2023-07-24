import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        final snackBar = SnackBar(
          content: const Text(
            'Hello Again',
            style: TextStyle(color: Colors.black)
            ),
          backgroundColor: Colors.amberAccent.shade100,
          );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      },

      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text('Click me'),       
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 150, 10, 243),
          borderRadius: BorderRadius.circular(10),
        ), 
      ),
    );
  }
} 