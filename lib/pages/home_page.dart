import 'package:first_flutter_app/pages/gallery_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text(
          "HOME PAGE",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //   return GalleryPage();
          // }));
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}