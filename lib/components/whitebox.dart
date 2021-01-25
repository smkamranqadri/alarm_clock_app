import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  Widget child;

  WhiteBox({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25), right: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 20.0, // has the effect of softening the shadow
            spreadRadius: 2.0, // has the effect of extending the shadow
            offset: Offset(
              0, // horizontal, move right 10
              10.0, // vertical, move down 10
            ),
          )
        ],
      ),
      child: this.child,
    );
  }
}
