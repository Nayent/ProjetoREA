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
                      Colors.amber,
                      'Exercicio 1',
                      'Realizar o exercício 2 da aula anterior, porém utilizando funções.',
'''
from AriaPy import *
import sys
 
# Inicialização da biblioteca global:
Aria_init()
 
parser = ArArgumentParser(sys.argv)
parser.loadDefaultArguments()
 
# Criando um objeto robô:
robot = ArRobot()
 
print ("Conectando...")
 
con = ArRobotConnector(parser, robot)
if not Aria_parseArgs():
   Aria_logOptions()
   Aria_exit(1)
 
if not con.connectRobot():
   print ("Não foi possível conectar ao robô, saindo...")
   Aria_exit(1)
 
# Executando as threads do robô em segundo plano:
print ("Rodando...")
robot.runAsync(True,True)
 
 
#Dirija o robô um pouco e saia.
 
robot.lock()
print ("Posição do robô utilizando métodos de acesso do ArRobot: (", robot.getX(), ",", robot.getY(), ",", robot.getTh(), ")")
 
 
pose = robot.getPose()
print ("Posição do robô por impressão do objeto ArPose:", pose)
print ("Posição do robô usando ArPose: (", pose.x, ",", pose.y, ",", pose.th, ")")
 
 
print ("Enviando comando para avançar 1 metro...")
robot.enableMotors() #Ligando motores
robot.move(1000) #Andando 1 metro
robot.unlock()
 
print ("Dormindo por 5 segundos...")
ArUtil_sleep(5000) #Dormindo por 5 segundos
 
 
movimento = "esquerda"
 
def girar():
if movimento == "esquerda":
      #Virando à esquerda e formando a aresta direita do retângulo
      robot.lock()
      print ("Enviando comando para girar 90 graus...")
      robot.setHeading(90) #Girando até o ângulo de 90 graus
      robot.unlock()
      print ("Dormindo por 5 segundos...")
      ArUtil_sleep(5000)
 
 
def andar(): 
robot.lock()
robot.move(1000)
robot.unlock()
print ("Dormindo por 5 segundos...")
ArUtil_sleep(5000)
 
andar()
girar()
andar()
girar()
andar()
girar()
andar()
girar()
andar()
 
robot.lock()
print ("Posição do robô (", robot.getX(), ",", robot.getY(), ",", robot.getTh(), ")")
pose = robot.getPose()
print ("Posição do robô por impressão do objeto ArPose: ", pose)
print ("Posição do robô usando ArPose: (", pose.x, ",", pose.y, ",", pose.th, ")")
robot.unlock()
 
print ("Saindo.")
Aria_shutdown()#Desligando os motores
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 2',
                      'Crie um programa que possua uma função que mostre a distância percorrida pelo robô.',
'''
from AriaPy import *
import sys
 
def posicao():
  if movimento == "esquerda":

    robot.lock()
    print ("Enviando comando para girar 90 graus...")
    robot.setHeading(0) #Girando até o ângulo de 0 graus
    robot.unlock()
    print ("Dormindo por 5 segundos...")
    ArUtil_sleep(5000)

    robot.lock()
    print ("Posição do robô (", robot.getX(), ",", robot.getY(), ",", robot.getTh(), ")")
    pose = robot.getPose()
    print ("Posição do robô por impressão do objeto ArPose: ", pose)
    print ("Posição do robô usando ArPose: (", pose.x, ",", pose.y, ",", pose.th, ")")
    robot.unlock()
 
# Inicialização da biblioteca global:
Aria_init()
 
parser = ArArgumentParser(sys.argv)
parser.loadDefaultArguments()
 
# Criando um objeto robô:
robot = ArRobot()
 
print ("Conectando...")
 
con = ArRobotConnector(parser, robot)
if not Aria_parseArgs():
  Aria_logOptions()
  Aria_exit(1)
 
if not con.connectRobot():
  print ("Não foi possível conectar ao robô, saindo...")
  Aria_exit(1)
 
 
# Executando as threads do robô em segundo plano:
print ("Rodando...")
robot.runAsync(True,True)
 
 
#Dirija o robô um pouco e saia.
 
robot.lock()
print ("Posição do robô utilizando métodos de acesso do ArRobot: (", robot.getX(), ",", robot.getY(), ",", robot.getTh(), ")")
 
 
pose = robot.getPose()
print ("Posição do robô por impressão do objeto ArPose:", pose)
print ("Posição do robô usando ArPose: (", pose.x, ",", pose.y, ",", pose.th, ")")
 
 
print ("Enviando comando para avançar 1 metro...")
robot.enableMotors() #Ligando motores
robot.move(1000) #Andando 1 metro
robot.unlock()
 
print ("Dormindo por 5 segundos...")
ArUtil_sleep(5000) #Dormindo por 5 segundos
 
movimento = "esquerda"
posicao()
 
robot.lock()
print ("Posição do robô (", robot.getX(), ",", robot.getY(), ",", robot.getTh(), ")")
pose = robot.getPose()
print ("Posição do robô por impressão do objeto ArPose: ", pose)
print ("Posição do robô usando ArPose: (", pose.x, ",", pose.y, ",", pose.th, ")")
robot.unlock()
 
print ("Saindo.")
Aria_shutdown()#Desligando os motores
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 3',
                      'Crie um programa que possua uma função que mostre um percurso em círculo. Utilize um cálculo matemático para definir o ângulo em graus de orientação do robô (Por exemplo: 25 graus a cada 1 segundo) ',
                      '',
                      '10m',
                      'Médio',
                      gabs: gabarito3(),
                      bol: true,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 4',
                      'Montar função que calcula área de uma circunferência',
'''
def area_do_círculo(raio):
  pi = 3.1415
  area = pi*raio**2
  return area
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 5',
                      'Montar função que calcula Bhaskara',
'''
def bhaskara(a,b,c):
  delta = (b**2)-(4*a*c)
  raiz_1 = ((-b)+(delta)**(1/2))/(2*a)
  raiz_2 = ((-b)-(delta)**(1/2))/(2*a)
  return raiz_1, raiz_2
''',
                      '5m',
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

class gabarito3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
'''
from AriaPy import *
import sys
 
 
def circulo():
 
    robot.enableMotors()
    robot.move(50000) #Tempo global do movimento
    robot.unlock()
    angulo = 1
    while True:
            robot.setHeading(angulo)
            ArUtil_sleep(1000) #Necessário utilizar com a função 'move'
            angulo = angulo + 25
 
 
# Inicialização da biblioteca global:
Aria_init()
 
parser = ArArgumentParser(sys.argv)
parser.loadDefaultArguments()
 
# Criando um objeto robô:
robot = ArRobot()
 
print ("Conectando...")
 
con = ArRobotConnector(parser, robot)
if not Aria_parseArgs():
   Aria_logOptions()
   Aria_exit(1)
 
if not con.connectRobot():
   print ("Não foi possível conectar ao robô, saindo...")
   Aria_exit(1)
 
 
# Executando as threads do robô em segundo plano:
print ("Rodando...")
robot.runAsync(True,True)
 
 
#Dirija o robô um pouco e saia.
robot.lock()
print ("Posição do robô (", robot.getX(), ",", robot.getY(), ",", robot.getTh(), ")")
pose = robot.getPose()
print ("Posição do robô por impressão do objeto ArPose: ", pose)
print ("Posição do robô usando ArPose: (", pose.x, ",", pose.y, ",", pose.th, ")")
robot.unlock()
 
circulo()
 
 
print ("Saindo.")
Aria_shutdown()#Desligando os motores
'''
        ),
        ImageCode('gabs_5_1.png')
      ]);
  }
}