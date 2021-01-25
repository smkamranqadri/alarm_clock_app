import 'package:flutter/material.dart';

import '../components/header.dart';
import '../components/whitebox.dart';
import '../components/dayrepeat.dart';
import '../components/footer.dart';

import '../containers/timepicker.dart';

class NewAlarmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Header(children: [
      Expanded(
        child: WhiteBox(
            child: Column(
          children: <Widget>[
            TimePicker(),
            DayRepeat(),
            Footer(),
          ],
        )),
      )
    ]);
  }
}
