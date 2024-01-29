import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            // child: Image(
            //   image: AssetImage("images/images.png")
            //   // image: NetworkImage("https://picsum.photos/350/500"),
            //   fit: BoxFit.cover,
            // ),
            // child: Image.asset("images/images.png"),
            child: Image.network("https://picsum.photos/350/500"),
          ),
        ),
      ),
    );
  }
}