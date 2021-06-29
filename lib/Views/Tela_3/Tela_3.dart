import 'package:flutter/material.dart';
import 'package:python_project/services/txts.dart';

class Tela3Page extends StatelessWidget {
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
            ClassTitleText('Nota dos desenvolvedores'),
            NormalText(
                "Este foi um curso preparado com o intuito de aparesentar a linguagem de programação Python juntamente com noções sobre robótica utilizando nossa simulação de robô, de forma simples e rápida. Durante as aulas foi passado vários links de referências utilizadas, portanto, reiteramos para que continuem a praticar e aprofundando seus estudos, de modo a ficarem cada vez mais preparados para enfrentarem qualquer desafio.\nQuanto à este projeto REA, tem-se que ele é extensível, de modo que as aulas podem ser modificadas e atualizadas, além da possibilidade de ser adicionado novas aulas, aprofundando cada vez mais no conteúdo. Portanto, este projeto ainda não acabou!\nPor fim, agradecemos - primeiramente - nosso orientador Prof. Dr. Lucio Agostinho Rocha, que concedeu a oportunidade da realização deste projeto, auxiliando-nos na montagem das aulas, na elaboração dos exercícios e no aprendizado do simulador do robô. Agradecemos também aqueles em que se propuseram a realizar este curso e, esperamos ter ajudado cada um no aprendizado de Python!\n\nEm Junho de 2021,\nAutores.\n\nAté breve!"),
            NormalText('')
          ],
        )));
  }
}
