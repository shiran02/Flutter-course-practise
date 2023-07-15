import 'package:flutter/material.dart';
import 'package:flutter_custom_buttons/flutter_custom_buttons.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Buttons(
        width: 130.0,
        height: 70,
        radius: 12.0,
        elevation: 2.0,
        txt: "Click me",
        textColor: Colors.black,
        fontSize: 20.0,
        background: Colors.cyan.shade50,
        onTap: (){

          final SnackBar snackBar =  SnackBar(content: Text('Thank You'));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },

      ),
    );
  }
}