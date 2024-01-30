import 'package:first_flutter_app/main_tabBarWidget.dart';
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
          title: Text("Fitur TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              autofocus: true,
              enableSuggestions: true,
              enableInteractiveSelection: true,
              // enabled: true,
              // obscureText: true,
              // obscuringCharacter: '*',
              keyboardType: TextInputType.phone,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}