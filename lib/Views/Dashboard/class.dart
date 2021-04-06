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
                    color: Colors.redAccent,
                    projectName: 'Aula 1',
                    percentComplete: '34%',
                    progressIndicatorColor: Colors.redAccent[100],
                  ),
                  ProjectProgressCard(
                    color: Color(0xff6C6CE5),
                    projectName: 'Aula 2',
                    percentComplete: '78%',
                    progressIndicatorColor: Colors.blue[200],
                  ),
                  ProjectProgressCard(
                    color: Color(0xffFAAA1E),
                    projectName: 'Aula 3',
                    percentComplete: '82%',
                    progressIndicatorColor: Colors.amber[200],
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                    percentComplete: '90%',
                    progressIndicatorColor: Colors.green[200],
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                    percentComplete: '90%',
                    progressIndicatorColor: Colors.green[200],
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                    percentComplete: '90%',
                    progressIndicatorColor: Colors.green[200],
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                    percentComplete: '90%',
                    progressIndicatorColor: Colors.green[200],
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                    percentComplete: '90%',
                    progressIndicatorColor: Colors.green[200],
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Aula 4',
                    percentComplete: '90%',
                    progressIndicatorColor: Colors.green[200],
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
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 1 - Introdução ao Python',
                      members: '28 members',
                      et: '10 Oct 2019',
                      fileSize: '2.3 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.blue,
                      sharedFileName: 'Aula 2 - Hello World',
                      members: '30 members',
                      et: '27 Sep 2019',
                      fileSize: '4.2 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.amber,
                      sharedFileName: 'Aula 3 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.green,
                      sharedFileName: 'Aula 4 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 5 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 6 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 7 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 8 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 9 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                    AulasDash(
                      title: "",
                      color: Colors.red,
                      sharedFileName: 'Aula 10 - Expressões e Variáveis',
                      members: '14 members',
                      et: '08 Oct 2019',
                      fileSize: '1.6 MB',
                    ),
                  ]),
                ),
              )),
        ],
      ),
    );
  }
}
