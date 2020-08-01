import 'package:flutter/material.dart';
import 'package:flutter_app_calc/login.dart';
import 'package:flutter_app_calc/scientific.dart';
import 'main.dart';
import 'package:flutter_app_calc/main.dart';



class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomeScreen extends StatefulWidget {
  HomeScreen() {}

  int x = 10;

  var drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Simple Calculator", Icons.smartphone),
    new DrawerItem("Scientific Calculator", Icons.satellite),

  ];

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  BuildContext _ctx;
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Login();
        break;
      case 1:
        return MyApp();
        break;
      case 2:
        return MyCalc();
        break;



    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var drawerOptions = <Widget>[];

    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    return new Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff293844),
        title: Text("Calculator"),
      ),

      drawer: new Drawer(
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Calculator"),


                decoration: new BoxDecoration(
                  color: Color(0xFF222437),
                ),
              ),
              new Column(children: drawerOptions)
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}