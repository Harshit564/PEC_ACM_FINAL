import 'package:flutter/material.dart';
import 'package:acmcsslast/bloc/navigation_bloc/navigation_bloc.dart';

class ContactUsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const ContactUsPage({Key key, this.onMenuTap}) : super(key: key);

  Widget _buildContactListTile(
      {String imagePath,
      String name,
      String position,
      String email,
      String contact}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.white,
        elevation: 6.0,
        child: ListTile(
          title: Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        position,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        contact,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        email,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
        title: Text(
          'Contact Us',
          style: TextStyle(),
        ),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.menu, color: Colors.white),
          onTap: onMenuTap,
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "images/logo.png",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "images/logo.png",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "images/logo.png",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "images/logo.png",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "images/logo.png",
              name: "name",
              position: "position",
            ),
          ],
        ),
      ),
    );
  }
}
