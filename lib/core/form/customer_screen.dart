
import 'package:flutter/material.dart';

import 'customer_search_screen.dart';

class CustomerFormScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return CustomerFormScreenState();
  }
}


class CustomerFormScreenState extends State<CustomerFormScreen> {

  String _firstName;
  String _lastName;
  String _email;
  String _phone;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget _buildFirstNameFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "First Name"),
    );
  }

  Widget _buildLastNameFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Last Name"),
    );
  }

  Widget _buildEmailFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),
        keyboardType: TextInputType.emailAddress
    );
  }
  Widget _buildPhoneFiled(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Phone Number"),
      keyboardType: TextInputType.phone
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Customer Form")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildFirstNameFiled(),
            _buildLastNameFiled(),
            _buildEmailFiled(),
            _buildPhoneFiled(),
            SizedBox(height: 200),
            RaisedButton(
              child: Text('Submit', style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  CustomerSearchFormScreen()));
              }
            )
          ],
        ),),
      ),
    );
  }
}