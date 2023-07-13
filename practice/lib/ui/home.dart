

import 'package:flutter/material.dart';


class ScaffoldExample extends StatelessWidget{

  _tapButton(){
    debugPrint("Tapped Button");
  }

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
          backgroundColor: Colors.amber,
          actions: <Widget>[
            IconButton(onPressed:()=>debugPrint('Email required'), icon:Icon(Icons.email)),
            IconButton(onPressed:_tapButton, icon:Icon(Icons.access_alarm)),
          ],
        ),

        backgroundColor: Colors.redAccent.shade200,

        body:  Container(
          alignment: Alignment.center,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: const Text(
                    'Tap me',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () => debugPrint("Tapped"),
                  
                ),
              ],
          ),
        ),
      );
  }
}



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