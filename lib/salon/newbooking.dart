import 'package:flutter/material.dart';
import 'package:vendors/salon/booking.dart';
import 'package:vendors/salon/profile.dart';

class NewBooking extends StatefulWidget {
  @override
  _NewBookingState createState() => _NewBookingState();
}

class _NewBookingState extends State<NewBooking> {
  bool isButtonPressed = false;
  bool isButtonPressed1 = false;
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
            Padding(
              padding: const EdgeInsets.only(top: 100),
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
                            height: 50,
                          ),
                          Text("New Booking",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Token No : 51",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
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
                            "Accept",
                            style: TextStyle(color: Colors.orange),
                          ),
                          color: isButtonPressed
                              ? Colors.orange[800]
                              : Colors.white,
                          onPressed: () {
                            setState(() {
                              isButtonPressed = !isButtonPressed;
                            });
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                            "Decline",
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
                        width: 70,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
