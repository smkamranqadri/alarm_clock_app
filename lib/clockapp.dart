import 'package:flutter/material.dart';

import './screens/alarmlist.dart';
import './screens/newalarm.dart';

class ClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Alarm Clock', home: Scaffold(body: AlarmListScreen(
          openNewAlarmScreen: () {
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewAlarmScreen()));
          }
        )));
  }
}
