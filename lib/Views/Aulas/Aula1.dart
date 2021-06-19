import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/txts.dart';

class Aula1 extends StatelessWidget {
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
            ClassTitleText("Aula 1 - Introdução à Python"),
            TitleText("Apresentação da Linguagem"),
            NormalText(
                'A linguagem de programação Python deu-se início em 1991 pelo matemático e programador de computadores holandês Guido Van Rossumem, com o intuito de desenvolver uma linguagem fácil e intuitiva e também, tão poderosa quanto as outras linguagens concorrentes da época.'),
            NormalText(
                'Em 1996, Rossumem disse: “Há mais de seis anos, em dezembro de 1989, eu estava procurando por um projeto de programação como "hobby" que me mantivesse ocupado durante a semana próxima ao Natal. Meu escritório estava fechado, mas eu tinha um computador em casa, e não muito mais do que isso em mãos. Eu decidi escrever um interpretador para a nova linguagem de scripting sobre a qual eu vinha pensando ultimamente: uma descendente da ABC que agradaria a hackers de Unix/C. Eu escolhi Python como um título provisório para o projeto, sendo que eu estava num humor um pouco irreverente (e sendo também um grande fã do Monty Python\'s Flying Circus)”. (LUTZ, MARK Programming Python, 4th ed. , September 2009)'),
            NormalText(
                'Em Março de 2001, foi fundado a Python Software Foundation, que é uma organização sem fins lucrativos que detém os direitos de propriedade intelectual por trás da linguagem de programação e tem como lema "(...) promover, proteger e desenvolver a linguagem de programação Python e apoiar e facilitar o crescimento de uma comunidade diversa e internacional de programadores Python". Diante disso, o Python possui a Python Software Foundation License que é uma licença de código aberto que é compatível com a GNU General Public License a partir da versão 2.1.1.'),
            NormalText(
                'Por debaixo dos panos, tem-se que o python é uma linguagem interpretada, assim, têm seu código fonte compilado para bytecode - que é um formato código intermediário entre o código escrito e o código de máquina - e este, será interpretado pela máquina virtual da linguagem quando executarem o programa. Externamente, o Python tem um conjunto enorme de bibliotecas, como Numpy e Pandas, que iremos ver em outras aulas, cujo estas, são muito usadas em diversas disciplinas, como na matemática, estatística, física – sendo desde a geração e análise de dados até simulações.'),
            NormalText(
                'O projeto da linguagem foi realizado com o intuito de dar uma ênfase maior no esforço do programador sobre a máquina de modo que, o desenvolvimento em Python é caracterizado por ser totalmente expressivo, ou seja, é simples de traduzir o raciocínio em algum algoritmo desejado. Nas aplicações científicas isso se torna um grandioso aliado pois a real natureza da elaboração de um projeto é justamente desenvolver uma linha de raciocínio e, com o apoio de uma ferramenta que seu uso é intuitivo, faz total diferença.'),
            NormalText(
                'Além da facilidade em desenvolver algo em Python, lê-lo também é simples, de tal forma que, uma das principais características que diferencia esta linguagem de outras, é a legibilidade dos programas escritos. Este item é muito importante pois é voltado principalmente para onde tem-se mais de um desenvolvedor atuando, assim, sendo simples de entender o que a outra pessoa escreveu e qual era o objetivo daquela linha de código.'),
            NormalText(
                'Deste modo, com a simplicidade, legibilidade, poderosas bibliotecas fazem da linguagem Python uma das linguagens mais usadas atualmente e, para finalizar, segue um trecho do Zen do Python:'),
            CenterItalicText(
                '  O Belo é melhor do que feio.\n  Explícito é melhor do que implícito.\n  Simples é melhor que complexo.\n  Complexo é melhor do que complicado.\n  A legibilidade conta.\n  (...)'),
            TitleText('Instalação do Software'),
            NormalText(
                'Para a instalação e acesso do Python 2 no linux é bem simples, para isto abra o terminal (prompt de comando) e siga os seguintes passos:'),
            ImageCode('aula_1_1.png'),
            NormalText('Após instalado rode o seguinte código:'),
            ImageCode('aula_1_2.png'),
            NormalText('Com isso feito, o ambiente do python 2 está pronto para ser utilizado e também para seguir com o curso.'),
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
                    color: Colors.red,
                    projectName: 'Exercicio 1',
                  ),
                  ProjectProgressCard(
                    color: Colors.blue,
                    projectName: 'Exercicio 2',
                  ),
                  ProjectProgressCard(
                    color: Colors.amber,
                    projectName: 'Exercicio 3',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Exercicio 4',
                  ),
                  ProjectProgressCard(
                    color: Colors.grey,
                    projectName: 'Exercicio 5',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Exercicio 6',
                  ),
                  ProjectProgressCard(
                    color: Colors.green,
                    projectName: 'Exercicio 7',
                  ),
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

