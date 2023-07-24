import 'package:flutter/material.dart';
import '../custom_button/CustomBtn.dart';
import '../custom_button/button_1.dart';
import '../custom_button/outlineBtn.dart';
import '../custom_button/textBtn.dart';


class ScaffoldExample extends StatelessWidget{
  const ScaffoldExample({super.key});

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


        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.amber,
          child: Icon(Icons.call_end),
          ),

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_time) ,label:'time'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance) ,label:'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance) ,label:'Account'),
        ],onTap: (int index)=>("Tapped item : $index"),),

        backgroundColor: Color.fromARGB(255, 255, 255, 255),

        body:  Container(
          alignment: Alignment.center,
          child:  const Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               CustomButton(),
               CustomBtn(),
               OutlineBtn(),
               TextBtn(),
                // InkWell(
                //   child: const Text(
                //     'Tap me',
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   onTap: () => debugPrint("Tapped"),
                  
                // ),
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