import 'package:flutter/material.dart';

import 'business_hours_screen.dart';

class BusinessResultScreenState extends StatelessWidget {
  final String businessSelectedValue;

  BusinessResultScreenState({Key key, @required this.businessSelectedValue})
      : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(businessSelectedValue)),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[0].icon, size: 50),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text("Enabled"),
              SizedBox(width: 40),
              InkWell(
                  child: new Text('Configure'),
                  onTap: () => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        elevation: 16,
                        child: Container(
                          height: 400,
                          width: 400,
                          child: ListView(
                            children: <Widget>[
                              SizedBox(height: 20),
                              Center(
                                child: Text(
                                  "Leaderboard",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[1].icon, size: 50, color: Colors.lightBlue),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text("Enabled"),
              SizedBox(width: 40),
              InkWell(
                  child: new Text('Configure'),
                  onTap: () => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        elevation: 16,
                      )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[2].icon, size: 50, color: Colors.lightBlue),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text("Enabled"),
              SizedBox(width: 40),
              InkWell(
                  child: new Text('Configure'),
                  onTap: () => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        elevation: 16,
                      )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[3].icon, size: 50, color: Colors.lightBlue),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text("Enabled"),
              SizedBox(width: 40),
              InkWell(
                  child: new Text('Configure'),
                  onTap: () => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        elevation: 16,
                      )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[4].icon, size: 50, color: Colors.lightBlue),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text("Enabled"),
              SizedBox(width: 40),
              InkWell(
                  child: new Text('Configure'),
                  onTap: () => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        elevation: 16,
                      )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(choices[5].icon, size: 50, color: Colors.lightBlue),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              Switch(
                value: true,
                onChanged: (value) {},
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text("Enabled"),
              SizedBox(width: 40),
              InkWell(
                  child: new Text('Configure'),
                  onTap: () => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        elevation: 16,
                      )),
            ],
          ),
          RaisedButton(
              child: Text('Next', style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  BusinessHoursFormScreen()));
              }
          )
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
