import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/txts.dart';

class Aula4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 100.0, right: 100.0),
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 100,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClassTitleText("Aula 4 - Variáveis e Estruturas Condicionais"),
            TitleText(""),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}
