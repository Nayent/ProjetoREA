import 'package:python_project/Aulas/Aula1.dart';
import 'package:python_project/Dashboard/class.dart';
import 'package:python_project/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoard:
      return _getPageRoute(Class());
    case Aula_1:
      return _getPageRoute(Aula1());
    default:
      return _getPageRoute(Class());
  }
}

PageRoute _getPageRoute (Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}