import 'package:flutter/material.dart';

class ManageQueue extends StatefulWidget {
  @override
  _ManageQueueState createState() => _ManageQueueState();
}

class _ManageQueueState extends State<ManageQueue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => null)),
          color: Colors.black,
        ),
      ),
    );
  }
}
