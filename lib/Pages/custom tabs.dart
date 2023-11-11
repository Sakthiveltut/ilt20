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
      home: ButtonTextDisplay(),
    );
  }
}

class ButtonTextDisplay extends StatefulWidget {
  @override
  _ButtonTextDisplayState createState() => _ButtonTextDisplayState();
}

class _ButtonTextDisplayState extends State<ButtonTextDisplay> {
  String displayedText = ''; // Initialize with an empty string

  void displayText(String text) {
    setState(() {
      displayedText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Text Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              displayedText,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => PlayersList(),
              child: Text('button10'),
            ),
            ElevatedButton(
              onPressed: () => Summary(),
              child: Text('button2'),
            ),
          ],
        ),
      ),
    );
  }
}
