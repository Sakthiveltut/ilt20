import 'package:flutter/material.dart';

class PlayersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          teamName(),
          playersList(),
        ],
      ),
    );
  }

  Widget teamName() {
    return IntrinsicWidth(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Text(
              'PLAYING XI',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Image.network(
            "https://sportavideos.blob.core.windows.net/videos/IMAGES/TEAMS/TEA0000660.png",
            height: 70,
            width: 70,
          ),
          Text('DV'),
        ],
      ),
    );
  }

  Widget playersList() {
    List<String> playerName = [
      "Value 1",
      "Value 2",
      "Value 3",
      "Value 4",
      "Value 5",
      "Value 6",
      "Value 7",
      "Value 8",
      "Value 9",
      "Value 10",
      "Value 11"
    ];
    List<String> playerRole = [
      "Value 1",
      "Value 2",
      "Value 3",
      "Value 4",
      "Value 5",
      "Value 6",
      "Value 7",
      "Value 8",
      "Value 9",
      "Value 10",
      "Value 11"
    ];

    return Column(
      children: List.generate(playerName.length, (index) {
        return ListTile(
          contentPadding: EdgeInsets.only(
            left: 20,
            top: 10,
          ),
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(
              "https://ilt20storage.blob.core.windows.net/ilt20storage/players/PYC0000522.png",
              width: 60,
            ),
          ),
          title: Text(
            playerName[index],
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
          subtitle: Text(playerRole[index], textAlign: TextAlign.start),
          isThreeLine: true,
        );
      }),
    );
  }
}
