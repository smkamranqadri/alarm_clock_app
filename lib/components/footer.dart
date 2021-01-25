import 'package:alarm_clock_app/config/colors.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
          ),
          Container(
            width: 80,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Primary0, Primary100]),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'Set Alarm',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
