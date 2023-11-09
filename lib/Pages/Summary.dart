import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Card(
          margin: EdgeInsets.all(20),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 30,
                  color: Color(0xFFebeefa),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Centered Text',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      CustomCard(
                        imageNetworkURL:
                            'https://sportavideos.blob.core.windows.net/videos/IMAGES/TEAMS/TEA0000660.png',
                      ),
                      Text('DV'),
                    ]),
                    Text('Vs'),
                    Column(children: [
                      CustomCard(
                        imageNetworkURL:
                            'https://sportavideos.blob.core.windows.net/videos/IMAGES/TEAMS/TEA0000663.png',
                      ),
                      Text('GG'),
                    ]),
                  ],
                ),
                SizedBox(height: 20),
                Column(children: [
                  MyProgressBar(a: 146, b: 56, progressName: 'Runs Scored'),
                  MyProgressBar(a: 546, b: 5365, progressName: 'Wicket Lost'),
                  MyProgressBar(a: 456, b: 564, progressName: 'Boundary 4'),
                  MyProgressBar(a: 455, b: 456, progressName: 'Boundary 6'),
                  MyProgressBar(a: 213, b: 675, progressName: 'Dot Balls'),
                  MyProgressBar(a: 23, b: 567, progressName: "100's"),
                  MyProgressBar(a: 3245, b: 675, progressName: "50's"),
                  MyProgressBar(a: 0, b: 0, progressName: '50+ Partnership'),
                  MyProgressBar(
                      a: 2345, b: 34, progressName: '100+ Partnership'),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imageNetworkURL;

  CustomCard({required this.imageNetworkURL});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      elevation: 8.0,
      color: Colors.white,
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Center(
          child: Image.network(
            imageNetworkURL, // Use the provided image URL
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}

class MyProgressBar extends StatelessWidget {
  final int a;
  final int b;
  final String progressName;

  MyProgressBar(
      {Key? key, required this.a, required this.b, required this.progressName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, boxConstraints) {
      var percent;
      var x = boxConstraints.maxWidth;
      if (a == 0 && b == 0) {
        return Container(
          child: Column(
            children: [
              progressBarText(),
              Container(
                color: Color(0xFFBDDED5FF),
                height: 20,
              )
            ],
          ),
        );
      } else {
        percent = (a / (a + b)) * x;
      }
      return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(children: [
            progressBarText(),
            Stack(
              children: [
                Container(
                  width: x,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xffff0000),
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(20.5),
                    //     bottomLeft: Radius.circular(20.5)),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: percent,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(50.0),
                    //     topRight: Radius.circular(50.0)),
                  ),
                ),
              ],
            ),
          ]));
    });
  }

  Widget progressBarText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // Adjust the padding as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            a.toString(),
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            progressName.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            b.toString(),
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
