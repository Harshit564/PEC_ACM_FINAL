import 'package:flutter/material.dart';
import 'package:acmcsslast/bloc/navigation_bloc/navigation_bloc.dart';

class AboutUsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const AboutUsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
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
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.0,
                  child: Image.asset(
                    "images/logo1.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We are a student-run organization at PEC University of Technology aimed at development of Computer Science on campus through participating in competitions and working on projects.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We are a student-run organization at PEC University of Technology aimed at development of Computer Science on campus through participating in competitions and working on projects.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We are a student-run organization at PEC University of Technology aimed at development of Computer Science on campus through participating in competitions and working on projects.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We are a student-run organization at PEC University of Technology aimed at development of Computer Science on campus through participating in competitions and working on projects.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "CONTACT : acmcsspec@pec.edu..in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
