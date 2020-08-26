import 'package:flutter/material.dart';
import 'package:vendors/varification.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String _firm, _name, _number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 400.0),
            child: Center(
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('ASSETS/logo.jpg'),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Registered Firm Name',
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (input) {
                      _firm = input;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      labelText: "Owner's Name",
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (input) {
                      _name = input;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Contact No.',
                    ),
                    keyboardType: TextInputType.number,
                    onSaved: (input) {
                      _number = input;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 200,
                    color: Colors.orange[800],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text(
                      "Send OTP",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Varification()));
                    },
                    splashColor: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
