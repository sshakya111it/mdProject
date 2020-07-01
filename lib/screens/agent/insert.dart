import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'dart:async';
import 'package:http/http.dart' as http;
//import 'dart:convert';

class Insert extends StatefulWidget {
  @override
  _InsertState createState() => _InsertState();
}

class _InsertState extends State<Insert> {
  // String _agent_name;
  // String _address;
  // String _email;
  // String -property_type;

  //  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Widget _buildName() {
  //   return TextFormField(
  //       decoration: InputDecoration(labelText: 'Enter Agent Name*'),
  //       onSaved: (String value) {
  //         _agent_name = value;
  //       });
  // }
  TextEditingController cname = new TextEditingController();
  TextEditingController cemail = new TextEditingController();
  TextEditingController caddress = new TextEditingController();
  TextEditingController cproptype = new TextEditingController();
  TextEditingController cbranch = new TextEditingController();
  TextEditingController cpropdesc = new TextEditingController();

  void insertData() {
    var url = 'http://192.168.1.175/larticles/public/api/submit';
    http.post(url, body: {
      "agent_name": cname.text,
      "email": cemail.text,
      "address": caddress.text,
      "property_type": cproptype.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('ADD AN OUTGOING PROPERTY'),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
            // margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: cname,
                  decoration: InputDecoration(hintText: "Agent Name", labelText: "Agent Name"),
                ),
                TextField(
                  controller: cemail,
                   decoration: InputDecoration(hintText: "Email", labelText: "Email"),
                ),
                TextField(
                  controller: caddress,
                   decoration: InputDecoration(hintText: "Address", labelText: "Address"),
                ),
                TextField(
                  controller: cproptype,
                   decoration: InputDecoration(hintText: "Property Type", labelText: "Property Type"),
                ),
                SizedBox(height: 50),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  color: Colors.deepOrange,
                  onPressed: () {
                    // if (!_formKey.currentState.validate()) {
                    //   return;
                    // }
                    // _formKey.currentState.save();
                    insertData();
                  },
                )
              ],
            )));
  }
}
