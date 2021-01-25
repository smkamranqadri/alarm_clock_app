import 'package:flutter/material.dart';

import '../config/colors.dart';

class DayBox extends StatelessWidget {
  String day;
  bool active;

  DayBox({this.day, this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: this.active ? Primary0 : Secondary0,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        this.day,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}