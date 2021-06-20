import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/services/navigation_services.dart';
import '../locator.dart';

class GoToClass extends StatelessWidget {

  final String path;

  GoToClass(this.path);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pop(context);
                locator<NavigationService>().navigateTo(path);
      },
      child: Text('Ir para Aula', style: GoogleFonts.quicksand(fontSize: 16.0, color: Colors.purple))
    );
  }
}