import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula2 extends StatelessWidget {
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
            ClassTitleText("Aula 2 - Configuração e Instalação das Ferramentas"),
            TitleText("Simulador Python"),
            NormalText('Para instalar o simulador é necessário ter o sistema operacional Ubuntu Linux 16.04.7 LTS, caso não possua, é possivel utilizar uma Máquina Virtual para a simulação do sistema operacional.'),
            SubtitleText("1) Download do Simulador de Robôs e do Motor"),
            NormalText('Esse projeto REA não distribui o código-fonte dos simuladores. Os softwares estão disponíveis nas seguintes referências:'),
            HyperText('https://github.com/cinvesrob/Aria', 'https://github.com/cinvesrob/Aria'),
            HyperText('https://github.com/srmq/MobileSim', 'https://github.com/srmq/MobileSim'),
            HyperText('http://vigir.missouri.edu/~gdesouza/Research/MobileRobotics/Software/MobileSim/README.html', 'http://vigir.missouri.edu/~gdesouza/Research/MobileRobotics/Software/MobileSim/README.html'),
            NormalText('A seguir, teremos uma sequência de comandos a serem executados no prompt de comando a fim de realizar a instalação do Simulador de Robôs e do Motor.'),
            SubtitleText('2) Instalar o Aria:'),
            ImageCode('aula_2_1.png'),
            SubtitleText('3) Instalar o MobileSim:'),
            ImageCode('aula_2_2.png'),
            SubtitleText('4) Utilizar python com o simulador:'),
            ImageCode('aula_2_3.png'),
            SubtitleText('5) Executar MobileSim em um terminal e o motor Aria em outro terminal'),
            SubtitleText('6) Executar o exemplo Python:'),
            ImageCode('aula_2_4.png'),
            TitleText('Visual Studio Code'),
            SubtitleText('1) Baixando o VScode através do snap'),
            NormalText('Digite no terminal o seguinte comando:'),
            ImageCode('aula_2_5.png'),
            SubtitleText('2) Adicionando a extensão de python'),
            NormalText('Clique em Extensões, procure pela extensão “Python” e a instale.'),
            ImageCode('aula_2_6.png'),
          ],
        ),
      ),
    );
  }
}

class PlanoAula2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula2',
      aula: 'Aula 2',
      tituloAula: 'Configuração e Instalação das Ferramentas',
      conteudoRelacionado: 'Download do simulador python, download do Visual Studio',
      resumo: 'Nesta aula, iremos - passo a passo - realizar o download do simulador em python que fará parte das nossas aulas e exercícios e o download da IDE Visual Studio em que iremos utilizar para escrever nossos códigos.',
      objetivos: 'Nesta aula, iremos - passo a passo - realizar o download do simulador em python que fará parte das nossas aulas e exercícios e, o download da IDE Visual Studio em que iremos utilizar para escrever nossos códigos.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}