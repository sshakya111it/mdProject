import 'package:flutter/material.dart';
import 'package:mdproject/screens/agent/api.dart';
import 'package:mdproject/screens/agent/outGoingProp.dart';

class Login extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // String email = 'royal.maskey@multidynamic.com';
  // String password = 'royal12345';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String message;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget _buildLogo() {
    return Column(
      children: <Widget>[
        SizedBox(height: 100.0),
        Padding(
          padding: EdgeInsets.all(50.0),
        ),
        Image.asset('assets/logo.png')
      ],
    );
  }

  Widget _buildEmail() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter Email*'),
        controller: emailController,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        // onSaved: (String value) {
        //   email = value;
        // }
        );
  }

  Widget _buildPassword() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'Enter Password*'),
        controller: passwordController,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        // onSaved: (String value) {
        //   email = value;
        // }
        );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            // margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(50),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildLogo(),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                    ),
                    _buildEmail(),
                    _buildPassword(),
                    SizedBox(height: 50),
                    RaisedButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      color: Colors.deepOrange,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          var email = emailController.text;
                          var password = passwordController.text;
                          setState(() {
                            message='Please Wait...';
                          });
                          var rsp = await loginUser(email, password);
                          print(rsp);

                        }
                        _formKey.currentState.save();
                      },
                    )
                  ],
                ))));
  }
}
