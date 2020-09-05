import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:vendors/salon/newbooking.dart';
import 'package:vendors/salon/token.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  bool status = false;
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
              context, MaterialPageRoute(builder: (context) => Token())),
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Appbar2()));
                },
                child: Icon(
                  Icons.menu,
                  size: 26.0,
                ),
              )),
        ],
      ),
      // endDrawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       Column(
      //         children: <Widget>[
      //           UserAccountsDrawerHeader(
      //             accountName: Text("User name"),
      //             accountEmail: Text("User email"),
      //             currentAccountPicture: CircleAvatar(),
      //           ),
      //           ListTile(
      //             title: Text("Profile Settings"),
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context, MaterialPageRoute(builder: (context) => null));
      //             },
      //           ),
      //           ListTile(
      //             title: Text("Manage Queue"),
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context, MaterialPageRoute(builder: (context) => null));
      //             },
      //           ),
      //           ListTile(
      //             title: Text("Customer Data"),
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context, MaterialPageRoute(builder: (context) => null));
      //             },
      //           ),
      //           ListTile(
      //             title: Text("View Your Ratings"),
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context, MaterialPageRoute(builder: (context) => null));
      //             },
      //           ),
      //           ListTile(
      //             title: Text("Notifications"),
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context, MaterialPageRoute(builder: (context) => null));
      //             },
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Text(
                    "Take New Bookings!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.5,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "    Turn On Services :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomSwitch(
                        activeColor: Colors.orange[800],
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewBooking()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Appbar2 extends StatefulWidget {
  @override
  _Appbar2State createState() => _Appbar2State();
}

class _Appbar2State extends State<Appbar2> {
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
              context, MaterialPageRoute(builder: (context) => Booking())),
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
                      onPressed: () {},
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
              context, MaterialPageRoute(builder: (context) => Booking()));
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
