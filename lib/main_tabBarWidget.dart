import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("My Apps (TapBar)"),
//           bottom: PreferredSize(
//             preferredSize: Size.fromHeight(50),
//             child: DefaultTabController(
//               length: 3,
//               child: TabBar(
//                 tabs: [
//                   Tab(
//                     text: "Tab 1",
//                   ),
//                   Tab(
//                     text: "Tab 2",
//                   ),
//                   Tab(
//                     text: "Tab 3",
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {

  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "Tab 2",
      icon: Icon(Icons.ac_unit),
    ),
    Tab(
      text: "Tab 3",
      icon: Icon(Icons.accessibility_rounded),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        // initialIndex: 2,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            title: Text("My Apps (TapBar)"),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              // indicatorColor: Colors.black,
              // indicatorWeight: 10,
              // indicatorPadding: EdgeInsets.all(2),
              // indicator: BoxDecoration(
                
              //   color: Colors.amber,
              //   border: Border(
              //     bottom: BorderSide(
              //       color: Colors.black,
              //       width: 5,
              //     ),
              //   ),
              // ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(fontSize: 40),  
                ),
              ),
              Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(fontSize: 40),  
                ),
              ),
              Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(fontSize: 40),  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}