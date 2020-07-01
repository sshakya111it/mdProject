import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Details extends StatefulWidget {
  List list;
  int index;

  Details({this.list, this.index});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.list[widget.index]['agent_name']}'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
            child: Card(
                elevation: 5,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: ListView(children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.blue.shade900),
                    title: Text(
                      widget.list[widget.index]['agent_name'],
                      style: TextStyle(fontSize: 18.0, color: Colors.blue[900]),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail, color: Colors.blue.shade900),
                    title: Text(
                      widget.list[widget.index]['email'],
                      style: TextStyle(fontSize: 18.0, color: Colors.blue[900]),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.blue.shade900),
                    title: Text(
                      widget.list[widget.index]['address'],
                      style: TextStyle(fontSize: 18.0, color: Colors.blue[900]),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.view_list, color: Colors.blue.shade900),
                    title: Text(
                      widget.list[widget.index]['property_type'],
                      style: TextStyle(fontSize: 18.0, color: Colors.blue[900]),
                    ),
                  ),
                ])
                // child:ListView(
                //   children: <Widget>[
                //     ListTile(
                //       leading: Icon(Icons.person),
                //       title:Text(
                //       widget.list[widget.index]['Agent Name'],
                //       style: TextStyle(fontSize:18.0),
                //     ),
                //     ),
                //       ListTile(
                //       leading: Icon(Icons.mail),
                //       title:Text(
                //       widget.list[widget.index]['Email'],
                //       style: TextStyle(fontSize:18.0),
                //     ),
                //     ),
                //       ListTile(
                //       leading: Icon(Icons.home),
                //       title:Text(
                //       widget.list[widget.index]['Address'],
                //       style: TextStyle(fontSize:18.0),
                //     ),
                //     ),
                //       ListTile(
                //       leading: Icon(Icons.details),
                //       title:Text(
                //       widget.list[widget.index]['Property Type'],
                //       style: TextStyle(fontSize:18.0),
                //     ),
                //     ),
                //   ],
                //   ),
                )));
  }
}
