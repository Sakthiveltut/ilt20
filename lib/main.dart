import 'package:flutter/material.dart';
import 'package:ilt20/Pages/PlayersList.dart';
import 'package:ilt20/Pages/Summary.dart';
import 'package:ilt20/Pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Ilt20'),
            ),
            body: MainWidget(),
          );
        },
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int selectedWidgetIndex = 0;

  void switchWidget(int index) {
    setState(() {
      selectedWidgetIndex = index;
    });
  }

  Widget buildSelectedWidget() {
    switch (selectedWidgetIndex) {
      case 0:
        return Home();
      case 1:
        return PlayersList();
      case 2:
        return Summary();
      case 3:
        return Summary();
      // Add more cases for additional widgets
      default:
        return Container(); // Default case, can be an empty container or a default widget
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5),
              child: Card(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () => switchWidget(0),
                      child: Text('Show Widget 1'),
                    ),
                    TextButton(
                      onPressed: () => switchWidget(1),
                      child: Text('Show Widget 2'),
                    ),
                    TextButton(
                      onPressed: () => switchWidget(2),
                      child: Text('Show Widget 3'),
                    ),
                    TextButton(
                      onPressed: () => switchWidget(3),
                      child: Text('Show Widget 4'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildSelectedWidget(),
        ],
      ),
    );
  }
}
