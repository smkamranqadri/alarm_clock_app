import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

import '../config/colors.dart';

class TimePicker extends StatefulWidget {
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TimePickerSpinner(
      is24HourMode: true,
      normalTextStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      highlightedTextStyle:
          TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Primary0),
      spacing: 50,
      itemHeight: 80,
      itemWidth: 80,
      isForce2Digits: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    ));
  }
}
