import 'package:flutter/material.dart';
import 'package:python_project/NavigationBar/src/Logo.dart';
import 'package:python_project/NavigationBar/src/NavBar.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Color(0xff333951),
        child: Stack(
          children: [
            LogoName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: NavBarItem(
            //     icon: FeatherIcons.logOut,
            //     active: false,
            //     touched: () {
            //       print("Exit");
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
