import 'package:flutter/material.dart';
import 'package:vendors/image.dart';
import 'package:vendors/salon/manage.dart';
import 'dart:async';

class DoneSpl extends StatefulWidget {
  @override
  _DoneSplState createState() => _DoneSplState();
}

class _DoneSplState extends State<DoneSpl> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ManageQueue())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      RegImage(),
    ]));
  }
}
