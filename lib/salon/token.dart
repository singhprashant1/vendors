import 'package:flutter/material.dart';
import 'package:vendors/salon/manage.dart';
import 'package:custom_switch/custom_switch.dart';

class Token extends StatefulWidget {
  @override
  _TokenState createState() => _TokenState();
}

class _TokenState extends State<Token> {
  bool isButtonPressed = false;
  bool isButtonPressed1 = false;
  bool isButtonPressed2 = false;
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
              context, MaterialPageRoute(builder: (context) => ManageQueue())),
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SingleChildScrollView(
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.orange[700],
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Text("Tokens No : Abcd123",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Customer Name : Abcd",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Contact No : 098765421",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Current Token",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Colors.orange[800],
                            ),
                          ),
                          child: Text("Salon"),
                          color: isButtonPressed
                              ? Colors.orange[800]
                              : Colors.white,
                          onPressed: () {
                            setState(() {
                              isButtonPressed = !isButtonPressed;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Colors.orange[800],
                            ),
                          ),
                          child: Text("Salon"),
                          color: isButtonPressed1
                              ? Colors.orange[800]
                              : Colors.white,
                          onPressed: () {
                            setState(() {
                              isButtonPressed1 = !isButtonPressed1;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Colors.orange[800],
                            ),
                          ),
                          child: Text("Salon"),
                          color: isButtonPressed2
                              ? Colors.orange[800]
                              : Colors.white,
                          onPressed: () {
                            setState(() {
                              isButtonPressed2 = !isButtonPressed2;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 345),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "    Upcoming Customers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "    Turn Off Services : ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      CustomSwitch(
                        activeColor: Colors.orange[700],
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
