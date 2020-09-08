import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';

class Manage extends StatefulWidget {
  @override
  _ManageState createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  SfRangeValues _values = SfRangeValues(
      DateTime(2010, 01, 01, 12, 00, 00), DateTime(2010, 01, 01, 18, 00, 00));

  String _number;

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Manage Queue                       ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          "Salon Timings ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SfRangeSlider(
                      min: DateTime(2010, 01, 01, 0, 00, 00),
                      max: DateTime(2010, 01, 01, 24, 00, 00),
                      values: _values,
                      interval: 3,
                      showTicks: true,
                      showLabels: true,
                      showTooltip: true,
                      activeColor: Colors.orange[800],
                      tooltipTextFormatterCallback:
                          (dynamic actualValue, String formattedText) {
                        return DateFormat('h:mm a').format(actualValue);
                      },
                      onChanged: (SfRangeValues newValues) {
                        setState(() {
                          _values = newValues;
                        });
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(children: <Widget>[
                      Text(
                        "Daily token limt",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Enter number',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (input) {
                        _number = input;
                      },
                    ),
                    Row(children: <Widget>[
                      Text(
                        "Daily token limt",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ]),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Enter number',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (input) {
                        _number = input;
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
