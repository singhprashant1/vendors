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
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("User name"),
                  accountEmail: Text("User email"),
                  currentAccountPicture: CircleAvatar(),
                ),
                ListTile(
                  title: Text("Profile Settings"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("Manage Queue"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("Customer Data"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("View Your Ratings"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("Notifications"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
              ],
            )
          ],
        ),
      ),
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
