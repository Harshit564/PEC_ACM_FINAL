import 'package:flutter/material.dart';
import 'package:acmcsslast/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:acmcsslast/ui/pages/EventsPage.dart';
import 'package:acmcsslast/ui/pages/LoginPage.dart';
import 'package:acmcsslast/ui/pages/WorkshopPage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;
  int _page = 0;

  HomePage({Key key, this.onMenuTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PEC ACM',
          style: TextStyle(),
        ),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.menu, color: Colors.white),
          onTap: onMenuTap,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => _onAlertButtonsPressed(context),
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('images/Events/w2.jpeg'),
                  Divider(
                    height: 50,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('images/Events/w2.jpeg'),
                  Divider(
                    height: 50,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('images/Events/w2.jpeg'),
                  Divider(
                    height: 50,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('images/Events/w2.jpeg'),
                  Divider(
                    height: 50,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('images/Events/w2.jpeg'),
                  Divider(
                    height: 50,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        elevation: 16,
        showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.event), title: Text('Event')),
          BottomNavigationBarItem(
              icon: Icon(Icons.work), title: Text('Workshop')),
        ],
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.white,
        onTap: (int index) {
          _page = index;
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventsPage()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WorkshopPage()),
            );
          }
        },
        //fixedColor: Colors.lightBlue,
      ),
    );
  }
}

_onAlertButtonsPressed(context) {
  Alert(
    style: AlertStyle(
      backgroundColor: Colors.black,
      titleStyle: TextStyle(color: Colors.white),
      descStyle: TextStyle(color: Colors.white),
    ),
    context: context,
    type: AlertType.warning,
    title: "LOG OUT",
    desc: "Do you want to log out your ID ?",
    buttons: [
      DialogButton(
        child: Text(
          "Cancel",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        gradient: LinearGradient(colors: [
          Color(0xFF20BF55),
          Color(0xFF01BAEF),
        ]),
      ),
      DialogButton(
        child: Text(
          "Log Out",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
      )
    ],
  ).show();
}
