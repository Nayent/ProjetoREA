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
                    projectName: 'Aula 4',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
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
                      title: "Introdução ao Python",
                      color: Colors.red,
                      et: '10 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Configuração e Instalação das Ferramentas",
                      color: Colors.blue,
                      et: '27 Sep 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Hello World do Robô no Simulador",
                      color: Colors.amber,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Variáveis e Estruturas Condicionais",
                      color: Colors.green,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Funções e Expressões Matemáticas",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Teleoperação",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Estruturas de repetição",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Arrays",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Strings",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Modularização",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Tratamento de erros e Exceções",
                      color: Colors.red,
                      et: '08 Oct 2019',
                      path: "aula1"
                    ),
                    AulasDash(
                      title: "Arquivos",
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
