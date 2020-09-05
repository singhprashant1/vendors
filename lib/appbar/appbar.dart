import 'package:flutter/material.dart';
import 'package:vendors/salon/booking.dart';
import 'package:vendors/salon/manage.dart';
import 'package:vendors/salon/token.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
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
              context, MaterialPageRoute(builder: (context) => ManageQueue())),
          color: Colors.black,
        ),
      ),
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Token()));
                      },
                      child: Text(
                        "Profile Settings",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Manage Queue",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Customer Data",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View Your Ratings",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Notifications",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ManageQueue()));
        },
        child: Icon(
          Icons.clear,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
