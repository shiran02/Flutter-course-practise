import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  const TextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          //<-- SEE HERE
          side: BorderSide(width: 3.0),
        ),
        child: Text('Download'),
      ),
    );
  }
}
