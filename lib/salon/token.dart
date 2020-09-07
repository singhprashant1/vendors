import 'package:flutter/material.dart';
import 'package:vendors/salon/booking.dart';
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
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Appbar1()));
              },
              child: Icon(
                Icons.menu,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.orange[800],
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          CustomPaint(
                            //                       <-- CustomPaint widget

                            painter: MyPainter(),
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
                          child: Text(
                            "Done",
                            style: TextStyle(color: Colors.orange),
                          ),
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
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.orange),
                          ),
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
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.orange),
                          ),
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()));
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

class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    final left = -120.0;
    final top = 100.0;
    final right = 120.0;
    final bottom = -20.0;
    final rect = Rect.fromLTRB(left, top, right, bottom);
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}

class Appbar1 extends StatefulWidget {
  @override
  _Appbar1State createState() => _Appbar1State();
}

class _Appbar1State extends State<Appbar1> {
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
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Booking()));
                      },
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
              context, MaterialPageRoute(builder: (context) => Token()));
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
