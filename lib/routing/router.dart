import 'package:python_project/Views/Aulas/Aula1.dart';
import 'package:python_project/Views/Dashboard/class.dart';
import 'package:python_project/Views/Home/Home.dart';
import 'package:python_project/Views/Tela_1/Tela_1.dart';
import 'package:python_project/Views/Tela_2/Tela_2.dart';
import 'package:python_project/Views/Tela_3/Tela_3.dart';
import 'package:python_project/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Home:
      return _getPageRoute(HomePage());
    case DashBoard:
      return _getPageRoute(DashboardPage());
    case Aula_1:
      return _getPageRoute(Aula1());
    case Tela_1:
      return _getPageRoute(Tela1Page());
    case Tela_2:
      return _getPageRoute(Tela2Page());
    case Tela_3:
      return _getPageRoute(Tela3Page());
    default:
      return _getPageRoute(DashboardPage());
  }
}

PageRoute _getPageRoute (Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}