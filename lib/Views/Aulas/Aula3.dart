import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula3 extends StatelessWidget {
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
            ClassTitleText("Aula 3 - Hello World do Robô no Simulador"),
            TitleText("Hello World"),
            NormalText('Na programação, há vezes em que queremos mostrar algo para o usuário, pode ser tanto o valor de uma variável quanto alguma mensagem. Para isso, neste início, utilizaremos uma função chamada “print”.'),
            ImageCode('aula_3_1.png'),
            NormalText('Nesta função, teremos que esta imprimirá o que está no argumento, sendo que, em termos de sintaxe, quando o argumento estiver entre aspas (“ ”), irá imprimir como um texto ou como uma mensagem o que está neste argumento, como podemos ver no exemplo abaixo:'),
            ImageCode('aula_3_2.png'),
            NormalText('Portanto, quando queremos mostrar algo como mensagem, utilizaremos as aspas.'),
            ImageCode('aula_3_3.png'),
            ImageCode('aula_3_4.png'),
            NormalText('Quando temos que o argumento não está entre aspas, o programa executará o que estiver neste argumento, assim, podendo executar operações e mostrar valores de variáveis, como podemos ver no exemplo:'),
            ImageCode('aula_3_5.png'),
            ImageCode('aula_3_6.png'),
            NormalText('Ou seja, quando queremos mostrar números, não iremos utilizar as aspas.'),
            NormalText('Mas, qual seria a diferença entre mensagem e número?'),
            NormalText('Os números são utilizados primordialmente para realizarem cálculos já as mensagens serão utilizadas primordialmente quando queremos mostrar algo na tela.'),
            NormalText('Com isso, tem-se que, na soma 5+5, quando está entre aspas, irá nos retornar a mensagem 5+5. Já quando está sem aspas, irá realizar a operação de adição e nos retornará um número, que é o 10.'),
            NormalText('Um outro exemplo é utilizando uma variável que veremos variáveis na próxima aula.'),
            ImageCode('aula_3_7.png'),
            NormalText('Ali, tem-se que o “a” é um número que vale 10, como iremos imprimir um número, não iremos utilizar as aspas dupla. Caso nosso código fosse:'),
            ImageCode('aula_3_8.png'),
            NormalText('Nossa saída seria "a", pois estaremos imprimindo a mensagem "a".'),
            NormalText('Uma questão que pode surgir é quando queremos realizar a impressão de duas mensagens no mesmo print. Isso pode ser feito utilizando um sinal de mais ( + ) ou com a vírgula ( , ) entre nossa mensagem. Por exemplo:'),
            ImageCode('aula_3_9.png'),
            NormalText('Quando utilizamos o sinal de mais ( + ) entre números, ele irá realizar a soma entre eles - como vimos anteriormente, portanto, quando queremos mostrar dois números ou uma mensagem e um número juntos utilizaremos a vírgula ( , ).'),
            ImageCode('aula_3_10.png'),
            TitleText('Principios básicos no Robô'),
            NormalText('Todo movimento possui uma tranca (lock) e uma destranca (unlock). Isso é necessário para que apenas um comando do robô seja executado por vez, sem conflitar com vários comandos.'),
            NormalText('Aria_init(): comando para iniciar o robô. Todos os comandos são executados após a inicialização do robô.'),
            NormalText('robot.enableMotors: é necessário apenas uma vez, no início da movimentação. Liga os motores das rodas do robô. Esse comando é necessário para iniciar a movimentação do robô.'),
            NormalText('Para cada movimento é necessário esperar alguns segundos para que o robô tenha tempo de processar o comando.'),
            NormalText('robot.move(tempo): movimenta o robô por 1000 ms (1 segundo).'),
            NormalText('ArUtil_sleep(tempo): é um método usado para indicar que o robô não receberá outros comandos durante esse tempo. O sleep é necessário para que o robô tenha tempo de realizar a movimentação solicitada.'),
            NormalText('Para exibir a posição do robô são utilizados os seguintes comandos:'),
            ImageCode('aula_3_11.png'),
            NormalText('robot.getX(): retorna a posição do robô no eixo das abscissas (globais).'),
            NormalText('robot.getY(): retorna a posição do robô no eixo das ordenadas (globais).'),
            NormalText('robot.getTh(): ângulo de orientação do robô.'),
            NormalText('Odometria: é uma métrica do deslocamento do robô no ambiente'),
            NormalText('robot.getPose().x: retorna a posição global armazenada do robô no eixo X. Pode ser inicializada para contabilizar o deslocamento no eixo X a partir de determinada posição inicial definida pelo usuário.'),
            NormalText('robot.getPose().y: retorna a posição global armazenada do robô no eixo Y. Pode ser inicializada para contabilizar o deslocamento no eixo X a partir de determinada posição inicial definida pelo usuário.'),
            NormalText('Por fim, tem-se o Aria_shutdown() que irá desligar os motores do robô, portanto, utiliza-se este comando ao término de cada código, para encerrar aquela operação com o robô.'),
            NormalText('Essas são as principais funções que utilizaremos com o robô.'),
            NormalText('Dicas de comandos úteis: '),
            NormalText('  -   Ctrl+P: reinicia o robô na posição central do mapa'),
            NormalText('  -   T: mostra a trilha do deslocamento do robô'),
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

class PlanoAula3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula3',
      aula: 'Aula 3',
      tituloAula: 'Hello World do Robô no Simulador',
      conteudoRelacionado: 'Programação em Python com o Simulador',
      resumo: 'Apresentação das estruturas de repetição.',
      objetivos: 'Nesta aula, iniciaremos com a função “print” da programação que irá imprimir algo que desejamos no nosso programa e, em seguida, o funcionamento do simulador em que utilizaremos como base neste curso para então, resolvermos alguns exercícios no próprio simulador com base na linguagem Python,',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}