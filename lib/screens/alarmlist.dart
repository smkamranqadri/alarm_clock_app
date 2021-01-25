import 'package:flutter/material.dart';

import '../components/header.dart';
import '../components/whitebox.dart';
import '../components/alarmlistitem.dart';

class AlarmListScreen extends StatelessWidget {
  Function openNewAlarmScreen;

  AlarmListScreen({this.openNewAlarmScreen});

  @override
  Widget build(BuildContext context) {
    return Header(
      openNewAlarmScreen: this.openNewAlarmScreen,
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Text(
              '12:00',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold),
            )),
            Center(
              child: Text(
                'Friday, 12 December',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        )),
        Expanded(
            child: WhiteBox(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AlarmListItem(),
            AlarmListItem(),
            AlarmListItem(),
            AlarmListItem(),
            AlarmListItem(),
          ],
        )))
      ],
    );
  }
}
