import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';


class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }

}

class _Login extends State<Login> {
  TextEditingController  _logincontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Color(0xfffff1dd),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 8, left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffd8aeae)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child: Text("Enter Username")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: TextFormField(
                          controller: _logincontroller,



                        ),
                      ),
                    ),
                    Text("Enter password"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: TextFormField(
                          controller: _logincontroller,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Color(0xff9791a0),
                child: Text("Log in", style: TextStyle( fontSize: 20),),
                onPressed: () {
                  print("Someone logged in");
                },
              ),
            ),



          ],
        ),
      ),

    );
  }
}
