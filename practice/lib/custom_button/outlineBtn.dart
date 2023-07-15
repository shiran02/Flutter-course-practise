import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  const OutlineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: () {
          final SnackBar snackBar = SnackBar(content: Text("Outlinr button"));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        style: OutlinedButton.styleFrom(
          //<-- SEE HERE
          side: BorderSide(width: 3.0),
        ),
        child: Text('Download'),
      ),
    );
  }
}
