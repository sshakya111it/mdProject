import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddOutGoing extends StatefulWidget {
  //final String _username = "Multi Dynamics";
  // This widget is the root of your application.
  @override
  _AddOutGoingPageState createState() => new _AddOutGoingPageState();
}

class _AddOutGoingPageState extends State<AddOutGoing> {
  String _fname;
  // String _lname;
  // String _branch;
  // String _phnumber;
  // String _address;
  // String _email;
  // String _propdesc;
  // String -proptype;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildBranch() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Select A Branch*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }

  Widget _buildFname() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter First Name*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }

  Widget _buildLname() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter Last Name*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }

  Widget _buildAddress() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter Address*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }

  Widget _buildEmail() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter Email*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }

  Widget _buildPropertyDescription() {
    return TextFormField(
        //maxLines: 2 ,
        decoration: InputDecoration(labelText: 'Property Description*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }

  Widget _buildProductType() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Property Type*'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
        });
  }
    Widget _buildPhoneNumber() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter Phone Number'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _fname = value;
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
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildBranch(),
                    _buildFname(),
                    _buildLname(),
                    _buildEmail(),
                    _buildPhoneNumber(),
                    _buildAddress(),
                    _buildProductType(),
                    _buildPropertyDescription(),
                    SizedBox(height: 50),
                    RaisedButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      color: Colors.deepOrange,
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                      },
                    )
                  ],
                ))));
  }
}
