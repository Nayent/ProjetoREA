import 'package:flutter/material.dart';
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
            ItalicText(
                '  O Belo é melhor do que feio.\n  Explícito é melhor do que implícito.\n  Simples é melhor que complexo.\n  Complexo é melhor do que complicado.\n  A legibilidade conta.'),
            TitleText('Instalação do Software'),
            NormalText(
                'Para a instalação e acesso do Python 2 no linux é bem simples, para isto abra o terminal (prompt de comando) e siga os seguintes passos:'),
            ImageCode('aula_1_1.png'),
            TitleText('3) Exericícios Práticos'),
            NormalText(
                '3.1) Crie um programa que imprima "Olá Mundo!" em Python'),
            NormalText('3.2) Crie um programa que imprima o seu nome'),
            NormalText(
                '3.3) Dado um conjunto de números inteiros [3,4,6,9,15], imprima o número primo'),
            NormalText(
                '3.4) Imprima a sequência de números do exercício anterior'),
            NormalText(
                '3.5) Faça um programa que nos mostre seu nome e sua idade da seguinte forma'),
            NormalText('3.6) Mostre o Zen do Python'),
            NormalText('3.7) Faça um código que faça esta imagem'),
            NormalText('''XXXXX
X       X
X       X
X       X
XXXXX
'''),
            TitleText('Gabarito'),
            NormalText('3.1)'),
            NormalText(''),
            NormalText(''),
            NormalText(
                "Lorem ipsum est condimentum enim tortor proin nulla, habitasse netus tempus at erat inceptos, morbi per ad nisl rhoncus aliquet. ultrices amet nulla tempor curae volutpat ut taciti accumsan, velit nisl sollicitudin fermentum risus dolor sit, tellus rutrum torquent nisl fringilla faucibus sed. molestie inceptos velit class vel potenti libero purus tristique, dictum placerat libero rutrum integer erat amet tincidunt integer, sociosqu netus pretium tincidunt nec porta convallis. ornare ullamcorper quis ac potenti velit scelerisque curae pulvinar arcu, fames nunc tortor fermentum platea hendrerit senectus euismod, ante rhoncus justo quam ornare vitae mi malesuada."),
            ImageCode('aula_12_1.png')
          ],
        ),
      ),
    );
  }
}

