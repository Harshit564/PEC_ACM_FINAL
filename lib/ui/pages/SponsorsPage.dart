import 'package:flutter/material.dart';
import 'package:acmcsslast/bloc/navigation_bloc/navigation_bloc.dart';

class SponsorsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const SponsorsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sponsors',
          style: TextStyle(),
        ),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.menu, color: Colors.white),
          onTap: onMenuTap,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
              child: Card(
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    'Sponsor $index',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
