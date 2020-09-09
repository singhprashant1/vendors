import 'package:flutter/material.dart';

class CustomerData extends StatefulWidget {
  @override
  _CustomerDataState createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        iconTheme: new IconThemeData(color: Colors.black),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Customer Data                   ",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "  Current Time :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 80),
                      Text(
                        "11:00 AM",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "  Booking Time :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 75),
                      Text(
                        "11:00 AM",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "  Service Type :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 120),
                      Text(
                        "Spa",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "  Token No :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 160),
                      Text(
                        "05",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "  Seats Booked :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 125),
                      Text(
                        "01",
                        style: TextStyle(fontSize: 20),
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
