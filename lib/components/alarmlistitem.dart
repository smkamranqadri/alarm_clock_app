import 'package:flutter/material.dart';

bool isSwitched = true;

class AlarmListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListTile(
          leading: Icon(Icons.alarm, size: 35, color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '08:00',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('Mon,Fri')
                ],
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                },
                activeColor: Color(0xfffc4a88),
              )
            ],
          )),
    );
  }
}
