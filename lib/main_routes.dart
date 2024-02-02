import 'package:first_flutter_app/pages/gallery_page.dart';
import 'package:first_flutter_app/pages/photo_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        PhotoPage.nameRoute: (context) => PhotoPage(),
      },
    );
  }
}