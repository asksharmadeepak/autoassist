import 'package:flutter/material.dart';

class CustomerResultScreenState extends StatelessWidget {
  final String customerSelectedValue;

  CustomerResultScreenState({Key key, @required this.customerSelectedValue})
      : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(customerSelectedValue)),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[0].icon, size: 50),
                onPressed: () {},
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[3].icon, size: 50, color: Colors.lightBlue),
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
          new Text(
            "Address : Synechron Technologies , Pune MH India",
            softWrap: true,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          new Text(
            "Working Hours : 9 To 5",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.phone_android),
  const Choice(title: 'Bicycle', icon: Icons.email),
  const Choice(title: 'Boat', icon: Icons.message),
  const Choice(title: 'Bus', icon: Icons.calendar_today),
  const Choice(title: 'Train', icon: Icons.video_call),
  const Choice(title: 'Walk', icon: Icons.attachment),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
