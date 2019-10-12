import 'package:flutter/material.dart';

class ClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        )
      ),
    );
  }
}
