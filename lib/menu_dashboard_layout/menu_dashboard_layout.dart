import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:acmcsslast/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:acmcsslast/menu_dashboard_layout/dashboard.dart';
import 'package:acmcsslast/ui/pages/AboutUsPage.dart';
import 'package:acmcsslast/ui/pages/AppCoordinatorPage.dart';
import 'package:acmcsslast/ui/pages/ContactUsPage.dart';
import 'package:acmcsslast/ui/pages/MyProfilePage.dart';
import 'package:acmcsslast/ui/pages/HomePage.dart';
import 'package:acmcsslast/ui/pages/SponsorsPage.dart';

import 'menu.dart';

final Color backgroundColor = Colors.lightBlue;

class MenuDashboardLayout extends StatefulWidget {
  @override
  _MenuDashboardLayoutState createState() => _MenuDashboardLayoutState();
}

class _MenuDashboardLayoutState extends State<MenuDashboardLayout>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onMenuTap() {
    setState(() {
      if (isCollapsed)
        _controller.forward();
      else
        _controller.reverse();

      isCollapsed = !isCollapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(onMenuTap: onMenuTap),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, NavigationStates navigationState) {
                return Menu(
                  slideAnimation: _slideAnimation,
                  menuAnimation: _menuScaleAnimation,
                  selectedIndex: findSelectedIndex(navigationState),
                );
              },
            ),
            Dashboard(
              duration: duration,
              onMenuTap: onMenuTap,
              scaleAnimation: _scaleAnimation,
              isCollapsed: isCollapsed,
              screenWidth: screenWidth,
              child: BlocBuilder<NavigationBloc, NavigationStates>(builder: (
                context,
                NavigationStates navigationState,
              ) {
                return navigationState as Widget;
              }),
            ),
          ],
        ),
      ),
    );
  }

  int findSelectedIndex(NavigationStates navigationState) {
    if (navigationState is HomePage) {
      return 0;
    } else if (navigationState is MyProfilePage) {
      return 1;
    } else if (navigationState is SponsorsPage) {
      return 2;
    } else if (navigationState is AppCoordinatorPage) {
      return 3;
    } else if (navigationState is ContactUsPage) {
      return 4;
    } else if (navigationState is AboutUsPage) {
      return 5;
    } else {
      return 0;
    }
  }
}
