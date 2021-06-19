import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/Views/Dashboard/src/AulasDash.dart';
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 100,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 65.0, top: 25.0, bottom: 10.0),
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
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Aula 2 - Configuração e Instalação das Ferramentas",
                      color: Colors.blue,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula2"
                    ),
                    AulasDash(
                      title: "Aula 3 - Hello World do Robô no Simulador",
                      color: Colors.amber,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula3"
                    ),
                    AulasDash(
                      title: "Aula 4 - Variáveis e Estruturas Condicionais",
                      color: Colors.green,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula4"
                    ),
                    AulasDash(
                      title: "Aula 5 - Funções e Expressões Matemáticas",
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula5"
                    ),
                    AulasDash(
                      title: "Aula 6 - Estruturas de repetição",
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula7"
                    ),
                    AulasDash(
                      title: "Aula 7 - Arrays",
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula8"
                    ),
                    AulasDash(
                      title: "Aula 8 - Strings",
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula9"
                    ),
                    AulasDash(
                      title: "Aula 9 - Tratamento de erros e Exceções",
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula11"
                    ),
                    AulasDash(
                      title: "Aula 10 - Arquivos",
                      color: Colors.red,
                      et: 'Tempo Previsto: 1h30m',
                      path: "aula12"
                    ),
                  ]),
                ),
              )),
        ],
      ),
    );
  }
}
