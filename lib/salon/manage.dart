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
        iconTheme: new IconThemeData(color: Colors.black),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => null)),
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                ListTile(
                  title: Text("Account"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
