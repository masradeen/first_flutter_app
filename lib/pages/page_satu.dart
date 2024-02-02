import 'package:first_flutter_app/pages/page_dua.dart';
import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Text(
          "INI PAGE 1",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) {
              return PageDua();
            },
          ));
        },
        child: Icon(Icons.arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}