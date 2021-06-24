import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula5 extends StatelessWidget {
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
            ClassTitleText("Aula 5 - Funções e Expressões Matemáticas"),
            TitleText("Função"),
            NormalText('Função é basicamente um bloco de código que possui o objetivo de executar uma sequência de comandos. Em geral, é utilizado para casos no qual irá repetir o código algumas vezes, tornando-o mais simples, mais limpo e com menos linhas de código. '),
            NormalText('Uma função é caracterizada por utilizar parênteses e seus parâmetros vão dentro do parênteses. Um exemplo que já utilizamos é o print(), que dentro dos parênteses vão os parâmetros, sendo ele uma string na qual deseja ser mostrada na tela, então, o print() é uma função que imprime na tela os valores passados dentro de seus parênteses.'),
            NegriteText('Sintaxe:'),
            ImageCode('aula_5_1.png'),
            NormalText('Na sintaxe temos que a palavra reservada ‘def’, ela é quem define que o que estamos fazendo é uma função. O código da função, lembrando que precisa estar identado para que esteja dentro da função, poderá ser qualquer coisa que desejar fazer, como por exemplo uma soma de dois valores:'),
            ImageCode('aula_5_2.png'),
            NormalText('O return é o que a função nos irá trazer como resultado, no exemplo anterior, a saída foi o valor de a + b.'),
            NormalText('Para poder pegar esse valor que é retornado, podemos utilizar uma variável.'),
            ImageCode('aula_5_3.png'),
            NormalText('A variável valor_da_soma irá terá um valor de 7.'),
            NormalText('Os parâmetros passados para a função deve seguir a ordem posta na função, por exemplo, a função soma(a,b), utilizamos soma(2.5), logo:'),
            NegriteText('a = 2'),
            NegriteText('b = 5'),
            NormalText('Se fosse passado soma(5,2)'),
            NegriteText('a = 5'),
            NegriteText('b = 2'),
            NormalText('Porém, as funções podem não retornar nada, como por exemplo:'),
            ImageCode('aula_5_4.png'),
            NormalText('Essa função realiza a soma e mostra na tela, sem retornar nada.'),
            NormalText('Após criada a função, ela ficará disponível para sempre que for utilizar ela, precisando apenas chamá-la.'),
            TitleText('Modularização'),
            NormalText('O conceito da modularização é realizar a divisão do seu código ou programa em partes menores, sendo que cada parte irá realizar determinada função no código, porém, utilizando uma lógica mais simples.'),
            NormalText('As vantagens de utilizar essa divisão do código:'),
            NormalText('        1. Seu código irá ficar mais fácil de entender e melhor estruturado, deixando bem definido o que cada parte do código está fazendo'),
            NormalText('        2. Como foi separado em diversas partes, que realizam diversas funções, podemos reutilizar essas funções, diminuindo assim a quantidade de linhas do programa'),
            TitleText('Expressões Matemáticas'),
            NormalText('Um ponto importante relacionado às expressões é que elas seguem uma ordem de execução assim como na matemática, de modo que a operação prioritária será realizada primeiro, dando sequência para a execução das operações menos prioritárias.'),
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
                      '',
                      '',
                      '1m',
                      'Facílimo',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.blueAccent,
                      'Exercicio 2',
                      '',
                      '',
                      '1m',
                      'Facílimo',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.blueAccent,
                      'Exercicio 3',
                      '',
                      '',
                      '1m',
                      'Facílimo',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.blueAccent,
                      'Exercicio 4',
                      '',
                      '',
                      '1m',
                      'Facílimo',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.blueAccent,
                      'Exercicio 5',
                      '',
                      '',
                      '1m',
                      'Facílimo',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.blueAccent,
                      'Exercicio 6', 
                      '',
                      '',
                      '1m',
                      'Facílimo',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 7',
                      '',
                      '',
                      '1m',
                      'Fácil',
                      bol: false,
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


class PlanoAula5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula5',
      aula: 'Aula 5',
      tituloAula: 'Funções e Expressões Matemáticas',
      conteudoRelacionado: 'Programação em Python com o Simulador',
      resumo: 'Esta aula iremos apresentar como criar funções em Python e mostrar como funciona as funções matemáticas no Python.',
      objetivos: 'O objetivo é iniciar o estudante na modularização do código. Os exercícios práticos também apresentam exemplos de cálculos em funções com interação com o robô no simulador.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}