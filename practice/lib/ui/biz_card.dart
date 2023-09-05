import 'package:flutter/material.dart';

class BizCard extends StatefulWidget {
  const BizCard({super.key});

  @override
  State<BizCard> createState() => _BizCardState();
}

class _BizCardState extends State<BizCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),

      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvater(),
          ],
        ),
      ),
    );
  }
}



 Container _getAvater(){
   return Container(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          image: DecorationImage(
            image: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
}


Container _getCard() {
  return Container(
    width: 350,
    height: 200,
    margin: EdgeInsets.all(30),
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.circular(14.5),
    ),

    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("paulo Dichone"),
        Text("buildspswithpaulo@gmail.com"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Icon(Icons.person),
          Text(" T :buildspswithpaulo@gmail.com"),
         ],
        )
      ],
    ),
  );
}