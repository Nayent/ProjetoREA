import 'package:flutter/material.dart';
import 'package:python_project/NavigationBar/NavigationBar.dart';
import 'package:python_project/locator.dart';
import 'package:python_project/routing/route_names.dart';
import 'package:python_project/routing/router.dart';
import 'package:python_project/services/navigation_services.dart';

void main() {
  setupLocator();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            Positioned(
              left: 100,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width - 100,
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: DashBoard,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
