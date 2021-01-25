import 'package:flutter/material.dart';

import '../config/colors.dart';

class Header extends StatelessWidget {
  List<Widget> children;
  Function openNewAlarmScreen;

  Header({this.children, this.openNewAlarmScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.25, 0.4],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Primary0,
            Primary50,
            Primary100,
          ],
        ),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          margin: EdgeInsets.only(top: 30, right: 20),
          alignment: Alignment.centerRight,
          child: PopupMenuButton(
            onSelected: (value) {
              this.openNewAlarmScreen();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'New Alarm',
                  child: Text('New Alarm'),
                )
              ];
            },
          ),
        ),
        Expanded(child: Column(children: [...this.children]))
      ]),
    );
  }
}
