import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
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
            ClassTitleText(
                "Aula 2 - Configuração e Instalação das Ferramentas"),
            TitleText("Simulador Python"),
            NormalText(
                'Para instalar o simulador é necessário ter o sistema operacional Ubuntu Linux 16.04.7 LTS, caso não possua, é possivel utilizar uma Máquina Virtual para a simulação do sistema operacional.'),
            SubtitleText("1) Download do Simulador de Robôs e do Motor"),
            NormalText(
                'Esse projeto REA não distribui o código-fonte dos simuladores. Os softwares estão disponíveis nas seguintes referências:'),
            HyperText('https://github.com/cinvesrob/Aria',
                'https://github.com/cinvesrob/Aria'),
            HyperText('https://github.com/srmq/MobileSim',
                'https://github.com/srmq/MobileSim'),
            HyperText(
                'http://vigir.missouri.edu/~gdesouza/Research/MobileRobotics/Software/MobileSim/README.html',
                'http://vigir.missouri.edu/~gdesouza/Research/MobileRobotics/Software/MobileSim/README.html'),
            NormalText(
                'A seguir, teremos uma sequência de comandos a serem executados no prompt de comando a fim de realizar a instalação do Simulador de Robôs e do Motor.'),
            SubtitleText('2) Instalar o Aria:'),
            ImageCode('aula_2_1.png'),
            SubtitleText('3) Instalar o MobileSim:'),
            ImageCode('aula_2_2.png'),
            SubtitleText('4) Utilizar python com o simulador:'),
            ImageCode('aula_2_3.png'),
            SubtitleText(
                '5) Executar MobileSim em um terminal e o motor Aria em outro terminal'),
            SubtitleText('6) Executar o exemplo Python:'),
            ImageCode('aula_2_4.png'),
            TitleText('Visual Studio Code'),
            SubtitleText('1) Baixando o VScode através do snap'),
            NormalText('Digite no terminal o seguinte comando:'),
            ImageCode('aula_2_5.png'),
            SubtitleText('2) Adicionando a extensão de python'),
            NormalText(
                'Clique em Extensões, procure pela extensão “Python” e a instale.'),
            ImageCode('aula_2_6.png'),
            NormalText(''),
            ClassTitleText('Exercícios'),
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
                      Colors.blueAccent,
                      'Exercicio 1',
                      'Rode a primeira simulação no simulador.',
                      '',
                      '1m',
                      'Facílimo',
                      gabs: gabarito1(),
                      bol: true,
                    ),
                    ProjectProgressCard(
                        Colors.blueAccent,
                        'Exercicio 2',
                        'Imprima ‘Hello World’ no Visual Studio.',
                        '',
                        '1m',
                        'Facílimo',
                        gabs: gabarito2(),
                        bol: true,),
                    SizedBox(
                      width: 30.0,
                    )
                  ],
                ),
              ),
            ),
            NormalText(''),
            NormalText(''),
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
      conteudoRelacionado:
          'Download do simulador python, download do Visual Studio',
      resumo:
          'Nesta aula, iremos - passo a passo - realizar o download do simulador em python que fará parte das nossas aulas e exercícios e o download da IDE Visual Studio em que iremos utilizar para escrever nossos códigos.',
      objetivos:
          'Nesta aula, iremos - passo a passo - realizar o download do simulador em python que fará parte das nossas aulas e exercícios e, o download da IDE Visual Studio em que iremos utilizar para escrever nossos códigos.',
      pre:
          'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}

class gabarito1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText('''
1-Acessar um terminal como usuário administrador.

\$ sudo -s

2-Executar o simulador MobileSim:

\$ cd MobileSim-src-0.7.3
\$ MobileSim

2.1 Na tela inicial, o usuário pode escolher o tipo do robô:

'''),
        ImageGabs('gabs_2_1.png', 550),
        NormalText('''
2.2 O usuário, na mesma tela, pode escolher o tipo do mapa que será usado. Os mapas possuem a extensão .map. Há 2 (dois) mapas disponíveis na pasta do MobileSim-src-0.7.3: 

columbia.map
AMROffice.map

Para escolher um mapa, clique no nome do mapa e, a seguir, clique no botão “Load Map”.
Ou caso prefira, clique em “No Map”, caso não queira um mapa.



2.3 Em outro terminal, acessar a pasta \$HOME/Aria-2.9.0/pythonExamples:

cd \$HOME/Aria-2.9.0/pythonExamples

2.4 Executar o código de exemplo:

python2  simple.py

'''),
        ImageGabs('gabs_2_2.png', 500)
      ],
    );
  }
}

class gabarito2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      NormalText('''
TERMINAL:

Abrir o terminal do VScode

Rodar o python 2 no terminal

\$ python

Digite o “Hello World”: 

\$ print(“Hello World”) 

'''),
      ImageGabs('gabs_2_3.png', 550),
      NormalText('''
Código:

Crie um novo arquivo na pasta “meus_codigos” com o nome de “hello_world.py”, não esquecer da extensão .py, pois é ela que define que o nosso código está escrito em python.
Dentro do arquivo criado escreva:

print(“Hello World”)

Salve o arquivo (utilizando o comando ‘ctrl + s’) e execute, clicando no botão verde que fica na parte superior direita do VScode.

Confira no terminal a resposta.

'''),
      ImageGabs('gabs_2_4.png', 550)
    ]);
  }
}
