import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula6 extends StatelessWidget {
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
            ClassTitleText("Aula 6 - Estruturas de repetição"),
            TitleText("Estruturas de repetição"),
            NormalText('A esta altura, pode-se perceber que há pontos no código em que necessita-se repetir o mesmo código várias vezes e, para simplificar e otimizar o programa, utiliza-se as estruturas de repetição. Mais especificamente, essas estruturas são utilizadas quando deseja-se executar um determinado bloco de código a partir de uma determinada condição.'),
            NormalText('Um exemplo simples poderia ser um programa que mostra os números inteiros de 1 a 5. Ao invés de irmos escrevendo “print” por “print” de cada valor de 1 à 5, pode-se utilizar um loop em que tem-se uma variável base “x”, que começará em 1 e terminará no 5, dando saltos de 1 em 1. Por fim, o código nos retornará - em cada volta do loop - o valor da nossa variável.'),
            NormalText('Para exemplificar tem-se:'),
            ImageCode('aula_6_1.png'),
            NormalText('Com isso, tem-se que, em cada laço do loop, o “x” assumirá um valor que será mostrado em seguida.'),
            NormalText('As estruturas de repetição são o FOR e o WHILE. O “for” é mais utilizado para iterar um bloco de código determinadas vezes. No  “While” utiliza-se em sua maioria quando deseja-se que um determinado bloco de código seja repetido até que uma condição seja satisfeita. '),
            TitleText('FOR'),
            NormalText('A estrutura do FOR no python é a seguinte:'),
            ImageCode('aula_6_2.png'),
            NormalText('Exemplificando para ficar mais fácil de entender:'),
            ImageCode('aula_6_3.png'),
            NormalText('A função range() nos dá um limite, sendo passado 3 parâmetros,'),
            ImageCode('aula_6_4.png'),
            NormalText('Porém por padrão o valor inicial é zero e o intervalo é 1, não sendo obrigatório o preenchimento dos mesmos, adicionando apenas quando for utilizar um valor diferente do padrão.'),
            TitleText('WHILE'),
            NormalText('A estrutura do WHILE no python é a seguinte:'),
            ImageCode('aula_6_5.png'),
            NormalText('Sendo que sempre irá repetir quando a condição for verdadeira, caso seja falsa ele encerra o loop.'),
            NormalText('Um exemplo abaixo para ter a mesma saída do exemplo utilizando o for:'),
            ImageCode('aula_6_6.png'),
            NormalText('Lembrando que tanto na função range(), quanto na condição “contador < 6”, o valor do contador não chega em 6, sempre irá para um antes, caso queira utilizar o próximo valor deve-se usar:'),
            NormalText('  range(7)'),
            NormalText('  contador <= 6'),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}

class PlanoAula6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula6',
      aula: 'Aula 6',
      tituloAula: 'Estruturas de Repetição',
      conteudoRelacionado: 'Programação em Python com o Simulador',
      resumo: 'Apresentação das estruturas de repetição.',
      objetivos: 'Esta aula tem como objetivo apresentar as estruturas de repetição, cujas são extremamente importantes no desenvolvimento de um código, de modo que estas abrem um leque de possibilidades no desenvolvimento além de otimizar o programa. Os exercícios práticos vêm com o objetivo de reforçar o conteúdo, demonstrando na prática suas utilizações.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}