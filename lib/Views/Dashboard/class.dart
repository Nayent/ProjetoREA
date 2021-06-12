import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/Views/Dashboard/src/AulasDash.dart';
import 'package:python_project/Views/Dashboard/src/SubHeader.dart';
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
            margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
            child: Text(
              'Exercicios',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            height: 200.0,
            width: MediaQuery.of(context).size.width - 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30.0,
                  ),
                  ProjectProgressCard(
                    color: Colors.red,
                    projectName: 'Aula 1',
                  ),
                  ProjectProgressCard(
                    color: Colors.blue,
                    projectName: 'Aula 2',
                  ),
                  ProjectProgressCard(
                    color: Colors.amber,
                    projectName: 'Aula 3',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                  ),
                  ProjectProgressCard(
                    color: Colors.grey,
                    projectName: 'Aula 5',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 6',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 7',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 8',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 9',
                  ),
                  SizedBox(
                    width: 30.0,
                  )
                ],
              ),
            ),
          ),
          SubHeader(
            title: 'Aulas',
          ),
          Container(
              height: MediaQuery.of(context).size.height - 320,
              width: MediaQuery.of(context).size.width - 100,
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(children: [
                    AulasDash(
                      title: "Aula 0 - Apresentação do Curso",
                      color: Colors.red,
                      et: '1h30m',
                      path: "aula0"
                    ),
                    AulasDash(
                      title: "Aula 1 - Introdução ao Python",
                      color: Colors.red,
                      et: '1h30m',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Aula 2 - Configuração e Instalação das Ferramentas",
                      color: Colors.blue,
                      et: '27 Sep 2019',
                      path: "aula2"
                    ),
                    AulasDash(
                      title: "Aula 3 - Hello World do Robô no Simulador",
                      color: Colors.amber,
                      et: '08 Oct 2019',
                      path: "aula3"
                    ),
                    AulasDash(
                      title: "Aula 4 - Variáveis e Estruturas Condicionais",
                      color: Colors.green,
                      et: '08 Oct 2019',
                      path: "aula4"
                    ),
                    AulasDash(
                      title: "Aula 5 - Funções e Expressões Matemáticas",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula5"
                    ),
                    AulasDash(
                      title: "Aula 6 - Teleoperação",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula6"
                    ),
                    AulasDash(
                      title: "Aula 7 - Estruturas de repetição",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula7"
                    ),
                    AulasDash(
                      title: "Aula 8 - Arrays",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula8"
                    ),
                    AulasDash(
                      title: "Aula 9 - Strings",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula9"
                    ),
                    AulasDash(
                      title: "Aula 10 - Modularização",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula10"
                    ),
                    AulasDash(
                      title: "Aula 11 - Tratamento de erros e Exceções",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula11"
                    ),
                    AulasDash(
                      title: "Aula 12 - Arquivos",
                      color: Colors.red,
                      et: '08 Oct 2019',
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
