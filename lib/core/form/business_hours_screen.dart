import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

import 'business_final_screen.dart';
import 'customer_result_screen.dart';

class BusinessHoursFormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BusinessHoursFormScreenState();
  }
}

class BusinessHoursFormScreenState extends State<BusinessHoursFormScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<int> selectedItems = [];
  final List<DropdownMenuItem> items = [
    DropdownMenuItem(child: Text("Synechron")),
    DropdownMenuItem(child: Text("Asurion")),
    DropdownMenuItem(child: Text("Amazon"))
  ];

  @override
  Widget build(BuildContext context) {
    String selectedValue;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Customer Search Form")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  new DropdownButton<String>(
                    hint: Container(
                      child: Text("Select Day"),
                    ),
                    items: <String>[
                      'Monday',
                      'Tuesday',
                      'Wednesday',
                      'Thursday',
                      "Friday"
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  SizedBox(width: 100),
                  new DropdownButton<String>(
                    hint: Container(
                      child: Text("Start Time"),
                    ),
                    items: <String>[
                      '9',
                      '10',
                      '11',
                      '12',
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  new DropdownButton<String>(
                    hint: Container(
                      child: Text("End Day"),
                    ),
                    items: <String>[
                      'Monday',
                      'Tuesday',
                      'Wednesday',
                      'Thursday',
                      "Friday"
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  SizedBox(width: 100),
                  new DropdownButton<String>(
                    hint: Container(
                      child: Text("End Time"),
                    ),
                    items: <String>[
                      '4',
                      '5',
                      '6',
                      '7',
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                      child: Text('Block Time', style: TextStyle(color: Colors.black),),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  BusinessFinalFormScreen()));
                      }
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
