import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Date Format",
            style: TextStyle(
              color: Colors.white,
            ),  
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}