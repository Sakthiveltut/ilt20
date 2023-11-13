import 'package:flutter/material.dart';
import 'package:ilt20/Pages/PlayersList.dart';
import 'package:ilt20/Pages/Summary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Flutter"),
        // ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: TabBar(
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(
                      text: "Summary",
                    ),
                    Tab(
                      text: "Players",
                    ),
                    Tab(
                      text: "Alarm",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Summary(),
                  ),
                  Center(
                    child: PlayersList(),
                  ),
                  Center(
                    child:Text('hello'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
