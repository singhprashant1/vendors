import 'package:flutter/material.dart';
import 'package:vendors/business.dart';
import 'package:vendors/register.dart';

class Varification extends StatefulWidget {
  @override
  _VarificationState createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  String _otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Business())),
          color: Colors.black,
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: Text(
              "  Verification",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 200.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Enter Your Verification Code',
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (input) {
                        _otp = input;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    height: 50,
                    minWidth: 200,
                    color: Colors.orange[800],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text(
                      "Verify",
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
                ]),
          )
        ],
      ),
    );
  }
}
