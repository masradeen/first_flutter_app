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
          backgroundColor: Colors.green[200],
          title: Text("List Tile Practice"),
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Sigit Nugroho Putra"),
              subtitle: Text(
                "This is subtitle okay...",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
              // tileColor: Colors.amber,
              // dense: true,
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Sigit Nugroho Putra"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Sigit Nugroho Putra"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Sigit Nugroho Putra"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Sigit Nugroho Putra"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            Divider(
            color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}