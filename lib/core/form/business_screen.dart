
import 'package:flutter/material.dart';

import 'business_result_screen.dart';
import 'customer_search_screen.dart';

class BusinessFormScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return BusinessFormScreenState();
  }
}


class BusinessFormScreenState extends State<BusinessFormScreen> {

  String _firstName;
  String _lastName;
  String _email;
  String _phone;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget _buildBusinessNameFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Business Name"),
    );
  }

  Widget _buildStreetAddressFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Street Address"),
    );
  }

  Widget _buildCityFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "City"),
    );
  }

  Widget _buildStateFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "State"),
    );
  }

  Widget _buildZipCodeFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Zip"),
    );
  }

  Widget _buildLogoFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Upload your Logo Here"),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Business Form")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildBusinessNameFiled(),
            _buildStreetAddressFiled(),
            _buildCityFiled(),
            _buildStateFiled(),
            _buildZipCodeFiled(),
            _buildLogoFiled(),
            SizedBox(height: 100),
            RaisedButton(
                child: Text('Submit', style: TextStyle(color: Colors.black),),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  BusinessResultScreenState(businessSelectedValue: "Asurion")));
                }
            )
          ],
        ),),
      ),
    );
  }
}