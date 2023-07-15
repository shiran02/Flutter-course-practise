import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({super.key});

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
