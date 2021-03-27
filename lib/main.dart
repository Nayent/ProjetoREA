import 'package:flutter/material.dart';
import 'package:python_project/Aulas/Aula1.dart';
import 'package:python_project/Dashboard/class.dart';
import 'package:python_project/Dashboard/src/AulasDash.dart';
import 'package:python_project/NavigationBar/NavigationBar.dart';

void main() {
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
            Class(),
          ],
        ),
      ),
    );
  }
}
