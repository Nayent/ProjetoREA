import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/Views/Aulas/Aula1.dart';
import 'package:python_project/Views/Aulas/Aula10.dart';
import 'package:python_project/Views/Aulas/Aula2.dart';
import 'package:python_project/Views/Aulas/Aula3.dart';
import 'package:python_project/Views/Aulas/Aula4.dart';
import 'package:python_project/Views/Aulas/Aula5.dart';
import 'package:python_project/Views/Aulas/Aula6.dart';
import 'package:python_project/Views/Aulas/Aula7.dart';
import 'package:python_project/Views/Aulas/Aula8.dart';
import 'package:python_project/Views/Aulas/Aula9.dart';
import 'package:python_project/Views/Dashboard/src/AulasDash.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 100,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 65.0, top: 25.0, bottom: 40.0),
              child: Text(
                'Aulas',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height - 80,
                width: MediaQuery.of(context).size.width - 100,
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      AulasDash(
                          title: "Aula 1 - Introdução ao Python",
                          color: Colors.blue,
                          et: 'Tempo Previsto: 40m',
                          path: PlanoAula1()),
                      AulasDash(
                          title:
                              "Aula 2 - Configuração e Instalação das Ferramentas",
                          color: Colors.amber,
                          et: 'Tempo Previsto: 1h20m',
                          path: PlanoAula2()),
                      AulasDash(
                          title: "Aula 3 - Hello World do Robô no Simulador",
                          color: Colors.blue,
                          et: 'Tempo Previsto: 40m',
                          path: PlanoAula3()),
                      AulasDash(
                          title: "Aula 4 - Variáveis e Estruturas Condicionais",
                          color: Colors.green,
                          et: 'Tempo Previsto: 1h20m',
                          path: PlanoAula4()),
                      AulasDash(
                          title: "Aula 5 - Funções e Expressões Matemáticas",
                          color: Colors.amber,
                          et: 'Tempo Previsto: 1h30m',
                          path: PlanoAula5()),
                      AulasDash(
                          title: "Aula 6 - Estruturas de repetição",
                          color: Colors.red,
                          et: 'Tempo Previsto: 1h30m',
                          path: PlanoAula6()),
                      AulasDash(
                          title: "Aula 7 - Arrays",
                          color: Colors.amber,
                          et: 'Tempo Previsto: 1h30m',
                          path: PlanoAula7()),
                      AulasDash(
                          title: "Aula 8 - Strings",
                          color: Colors.amber,
                          et: 'Tempo Previsto: 1h40m',
                          path: PlanoAula8()),
                      AulasDash(
                          title: "Aula 9 - Tratamento de erros e Exceções",
                          color: Colors.red,
                          et: 'Tempo Previsto: 1h50m',
                          path: PlanoAula9()),
                      AulasDash(
                          title: "Aula 10 - Arquivos",
                          color: Colors.red,
                          et: 'Tempo Previsto: 1h50m',
                          path: PlanoAula10()),
                    ]),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
