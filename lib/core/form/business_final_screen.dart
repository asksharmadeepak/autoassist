import 'package:flutter/material.dart';

import 'customer_result_screen.dart';

class BusinessFinalFormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BusinessFinalFormScreenState();
  }
}

class BusinessFinalFormScreenState extends State<BusinessFinalFormScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(choices[0].icon, size: 50),
                    onPressed: () {
//                      _launchPhone();
                    },
                  ),
                  IconButton(
                    icon: Icon(choices[1].icon, size: 50),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(choices[2].icon, size: 50),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(choices[3].icon,
                        size: 50, color: Colors.lightBlue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(choices[4].icon, size: 50),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(choices[5].icon, size: 50),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 40),
              new Text(
                "Address : Synechron Technologies , Pune MH India",
                softWrap: true,
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 40),
              new Text(
                "Working Hours : 9 To 5",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 30),
                softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
