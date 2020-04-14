import 'package:flutter/material.dart';
import 'package:acmcsslast/bloc/navigation_bloc/navigation_bloc.dart';

class MyProfilePage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const MyProfilePage({Key key, this.onMenuTap}) : super(key: key);

  Widget _buildProfileCard(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('My Profile'),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.menu, color: Colors.white),
          onTap: onMenuTap,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            alignment: Alignment.center,
            child: ListView(
//            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Image.asset(
                        "images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                _buildProfileCard("studentName"),
                _buildProfileCard("studentSID"),
                _buildProfileCard("collegeName"),
                _buildProfileCard("Proficiency"),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
