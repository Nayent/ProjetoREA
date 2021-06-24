import 'package:flutter/material.dart';
import 'package:python_project/services/txts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 200.0, right: 200.0),
      child: Center(
        child: HomeText("Este é um trabalho elaborado pelos alunos Guilherme Nomura Mateus Leite e Luis Henrique Avelino Pereira com o apoio e direcionamento do Prof. Dr. Lucio Agostinho Rocha, ofertada no Câmpus Apucarana da Universidade Tecnológica Federal do Paraná.\n\nDesenvolveu-se, então, um curso a fim de realizar o desenvolvimento de Recursos Educacionais Abertos (REA) para o ensino complementar de linguagem de programação procedimental com a linguagem Python, aplicada em problemas de robótica educacional. Apresentando, portanto, as principais funções da linguagem, bem como suas utilizações na solução de questões no controle de um robô."),
      ),
    );
  }
}
