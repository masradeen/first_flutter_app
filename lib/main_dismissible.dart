import 'package:faker/faker.dart';
import 'package:first_flutter_app/home_dialog.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart){
                print("End to start");
              } else {
                print("Start to end");
              }
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirm"),
                    content: Text("Are you sure to delete this item ?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // print("No");
                          Navigator.of(context).pop(false);
                        }, 
                        child: Text("No"),
                      ),
                      TextButton(
                        onPressed: () {
                          // print("Yes");
                          Navigator.of(context).pop(true);
                        }, 
                        child: Text("Yes"),
                      ),
                    ],
                  );
                }
              );
            },
            key: Key(index.toString()),
            // direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete, 
                size: 25,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Text("${index+1}"),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}