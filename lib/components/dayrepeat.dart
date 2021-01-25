import 'package:flutter/material.dart';

import './daybox.dart';

class DayRepeat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Repeat',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  DayBox(
                    day: 'M',
                    active: false,
                  ),
                  DayBox(
                    day: 'T',
                    active: true,
                  ),
                  DayBox(
                    day: 'W',
                    active: false,
                  ),
                  DayBox(
                    day: 'T',
                    active: false,
                  ),
                  DayBox(
                    day: 'F',
                    active: false,
                  ),
                  DayBox(
                    day: 'S',
                    active: true,
                  ),
                  DayBox(
                    day: 'S',
                    active: false,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
