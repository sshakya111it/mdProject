import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdproject/screens/agent/inComingProp.dart';
import 'package:mdproject/screens/agent/outGoingProp.dart';
import 'package:mdproject/screens/agent/addOutGoing.dart';
import 'package:mdproject/screens/agent/login.dart';
import 'package:mdproject/screens/agent/insert.dart';
import 'package:mdproject/screens/agent/outGoing.dart';





class AgentIntro extends StatefulWidget {
  //final String _username = "Multi Dynamics";
  // This widget is the root of your application.
  @override
  _AgentIntroPageState createState() => new _AgentIntroPageState();
}

class _AgentIntroPageState extends State<AgentIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("MD Referral"),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName:
                  new Text('Royal Maskey', style: TextStyle(color: Colors.white)),
              accountEmail: new Text('royal.maskey@multidynamics.com',
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                        'https://avatars3.githubusercontent.com/u/16825392?s=460&v=4')),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage( 
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg")),
              ),
            ),
            CustomListTile(Icons.home, 'INCOMING PROPERTIES', () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new IncomingProperties()));
            }),
            CustomListTile(Icons.card_giftcard, 'OUTGOING PROPERTIES', () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new OutGoing()));
            }),
            CustomListTile(Icons.add, 'ADD OUTGOING PROPERTY', () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Insert()));
            }),
            CustomListTile(Icons.people, 'LOGIN', () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Login()));
            }),
          ],
        )));
  }
}

class CustomListTile extends StatelessWidget {
  // This is a class for custom drawer menu list items.

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: onTap,
            child: Container(
                height: 40,
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Icon(
                          icon,
                          color: Colors.blue.shade900,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(text,
                                style: TextStyle(color: Colors.blue[900])))
                      ]),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.blue.shade900,
                      )
                    ]))));
  }
}
