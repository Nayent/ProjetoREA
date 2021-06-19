import 'package:python_project/Views/Aulas/Aula1.dart';
import 'package:python_project/Views/Aulas/Aula2.dart';
import 'package:python_project/Views/Aulas/Aula3.dart';
import 'package:python_project/Views/Aulas/Aula4.dart';
import 'package:python_project/Views/Aulas/Aula5.dart';
import 'package:python_project/Views/Aulas/Aula6.dart';
import 'package:python_project/Views/Aulas/Aula7.dart';
import 'package:python_project/Views/Aulas/Aula8.dart';
import 'package:python_project/Views/Aulas/Aula9.dart';
import 'package:python_project/Views/Aulas/Aula10.dart';
import 'package:python_project/Views/Aulas/Aula11.dart';
import 'package:python_project/Views/Aulas/Aula12.dart';
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
    case Aula_2:
      return _getPageRoute(Aula2());
    case Aula_3:
      return _getPageRoute(Aula3());
    case Aula_4:
      return _getPageRoute(Aula4());
    case Aula_5:
      return _getPageRoute(Aula5());
    case Aula_6:
      return _getPageRoute(Aula6());
    case Aula_7:
      return _getPageRoute(Aula7());
    case Aula_8:
      return _getPageRoute(Aula8());
    case Aula_9:
      return _getPageRoute(Aula9());
    case Aula_10:
      return _getPageRoute(Aula10());
    case Aula_11:
      return _getPageRoute(Aula11());
    case Aula_12:
      return _getPageRoute(Aula12());
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