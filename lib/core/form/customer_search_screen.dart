
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

import 'customer_result_screen.dart';

class CustomerSearchFormScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return CustomerSearchFormScreenState();
  }
}


class CustomerSearchFormScreenState extends State<CustomerSearchFormScreen> {

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
        child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SearchableDropdown.single(
              items: items,
              hint: "Select Business",
              searchHint: "Select Business",
              value: selectedValue,
              onChanged: (value) {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  CustomerResultScreenState(customerSelectedValue: "Asurion")));
              },
              isExpanded: true,
            ),
          ],
        ),),
      ),
    );
  }
}