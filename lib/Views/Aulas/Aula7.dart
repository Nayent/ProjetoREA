import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula7 extends StatelessWidget {
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
            ClassTitleText("Aula 7 - Arrays"),
            TitleText("Listas"),
            NormalText('Uma lista nada mais é do que uma variável que armazena uma sequência de itens. Por exemplo:'),
            ImageCode('aula_7_1.png'),
            NormalText('É utilizado colchetes [] para inicializá-la, e também para acessar os valores dentro da mesma, utilizando o index, sempre começando em 0. por exemplo:'),
            ImageCode('aula_7_2.png'),
            ImageCode('aula_7_3.png'),
            NormalText('Para entender melhor as posições de um array, a imagem abaixo irá nos auxiliar:'),
            ImageCode('aula_7_4.png'),
            NormalText('Nas listas, não é preciso apenas armazenar valores do mesmo tipo, é possível conter todos os tipos dentro. Por exemplo:'),
            ImageCode('aula_7_5.png'),
            NormalText('As listas são mutáveis, logo, podemos adicionar, remover e alterar os seus valores.'),
            SubtitleText('    Incluir valores no final da lista'),
            ImageCode('aula_7_6.png'),
            SubtitleText('    Incluir valor na posição desejada'),
            ImageCode('aula_7_7.png'),
            SubtitleText('    Alterar valor'),
            ImageCode('aula_7_8.png'),
            SubtitleText('    Deletar elemento'),
            ImageCode('aula_7_9.png'),
            NormalText('Para selecionar um intervalo dentro da lista, fazemos o seguinte:'),
            ImageCode('aula_7_10.png'),
            TitleText("Tuplas"),
            NormalText('Uma tupla é basicamente uma lista, possuindo a mesma estrutura, porém, uma tupla é imutável, ou seja, após declarada, não é possível alterar seus valores.'),
            NormalText('Para declarar uma tupla, utilizamos os parênteses.'),
            ImageCode('aula_7_11.png'),
            TitleText("Dicionários"),
            NormalText('Os dicionários também são parecidos com listas, porém servem para armazenar dados em par, sendo uma chave e um valor. Para declarar um dicionário é utilizado chaves. Por exemplo:'),
            ImageCode('aula_7_12.png'),
            NormalText('Exemplo prático:'),
            ImageCode('aula_7_13.png'),
            NormalText('No exemplo acima é possível ver que foi salvo diversas informações a respeito de um filme, tudo em apenas um lugar.'),
            NormalText('Para buscar um valor no dicionário utilizamos o valor da chave, por exemplo:'),
            ImageCode('aula_7_14.png'),
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
                      'Faça um Programa que crie um vetor de 5 números inteiros utilizando um laço de repetição e mostre-os.',
'''
# -*- coding: utf-8 -*-
 
x=0
var = list()
for x in range(0,5,1):
    var.append(x)
 
print(var)
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 2',
                      'Faça um Programa que crie um vetor de 10 números inteiros ímpares e mostre-os na ordem decrescente.',
'''
# -*- coding: utf-8 -*-
x=0
var = list()
for x in range(19,0,-2):
    var.append(x)
print(var)
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 3',
                      'Faça um Programa que leia um vetor [1, 4, 3, 9, 8], mostre a soma, a multiplicação e os números pares.',
'''
# -*- coding: utf-8 -*-
 
vetor=[1, 4, 3, 9, 8]
x=0
k=0
m=1
n=0
#Realizando a soma
for x in range(0,5):
    k=k+vetor[x]
 
#Realizando a multiplicacao
for x in range(0,5):
    m=m*vetor[x]
 
vetor2=list()
a=0
for x in range(0,5):
    if(vetor[x]%2==0):
        vetor2.append(vetor[x])
        a=a+1
 
print(k)
print(m)
print(vetor2)
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 4',
                      'Desenvolva um código que receba um número de 0 a 10 e nos retorne o número que se encontra nesta determinada casa após a vírgula do número pi. Esta posição será um número digitado pelo usuário.',
'''
# -*- coding: utf-8 -*-
import math
pi=math.pi
entrada = input("Digite a posicao desejada: ")
numero = math.trunc(pi*(10**entrada))
numero_str = str(numero)
saida = numero_str[entrada]
print(pi)
print("o numero prensente nesta posicao e o",saida)
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 5',
                      'Crie um programa que gere uma lista de 10 números em sequência crescente. Exclua os três últimos números da lista e, em seguida, altere esta lista de forma que fique de ordem decrescente.',
'''
# -*- coding: utf-8 -*-
 
x=0
var = list()
var2= list()
for x in range(0,10,1):
    var.append(x)
for x in range(0,3,1):
    var.pop()
tamanho=(len(var))
for x in range(tamanho-1,-1,-1):
    var2.append(var[x])
 
print(var2)
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 6',
                      'Crie um programa que faça o robô percorrer um percurso, e no final mostre, em um array, as posições em X e Y, tempo, distancia e velocidade no percurso.',
'''
# coding: utf-8

#Exericicio 1
from AriaPy import *
import sys
import time
import math
 
 
Aria_init()
 
parser = ArArgumentParser(sys.argv)
parser.loadDefaultArguments()
 
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
 
 
 
 # Girar para a esquerda
def girar(x):
    robot.lock()
    print ("Enviando comando para girar 90 graus...")
    robot.setHeading(x)
    robot.unlock()
    print ("Dormindo por 5 segundos...")
    ArUtil_sleep(5000)
 
def andar(): 
    robot.lock()
    print ("Enviando comando para avançar 1 metro...")
    robot.move(1000)
    robot.unlock()
    print ("Dormindo por 5 segundos...")
    ArUtil_sleep(5000)
 
posicao_X = list()
posicao_Y = list()
posicao_Th = list()
 
tempo = list()
distancia = list()
velocidade = list()
 
posicao_X.append(robot.getX())
posicao_Y.append(robot.getY())
 
for i in range(1,5,1):
    tempo_inicial = time.time()
    andar()
    tempo_final = time.time()
    tempo.append(tempo_final-tempo_inicial)
    
    posicao_X.append(robot.getX())
    posicao_Y.append(robot.getY())
    
    distancia_X = posicao_X[i]-posicao_X[i-1]
    distancia_Y = posicao_Y[i]-posicao_Y[i-1]
    distancia_geral = math.sqrt(distancia_X**2 + distancia_Y**2)
    distancia.append(distancia_geral)
    
    vel = distancia[i-1]/tempo[i-1]
    velocidade.append(vel)

    girar(i*90)
    posicao_Th.append(robot.getTh())

print(posicao_X, posicao_Y, tempo, distancia, velocidade)
''',
                      '10m',
                      'Médio',
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


class PlanoAula7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula7',
      aula: 'Aula 7',
      tituloAula: 'Arrays',
      conteudoRelacionado: 'Apresentação dos Arrays, sendo eles Tuplas, Listas e Dicionário.',
      resumo: 'Nesta aula será apresentado os Arrays que, em suma, são lista de objetos que contém múltiplos valores armazenados em sequência. Este objeto array tem um diferencial que é a possibilidade de acessar cada valor interno individualmente. Deste modo, sendo extremamente úteis e tornam eficiente o código.',
      objetivos: 'Apresentar de forma simples e direta o entendimento sobre os Arrays e demonstrar sua utilização e o quanto facilitam no desenvolvimento do código. Por fim, tem-se exercícios práticos juntamente com o simulador a fim de reforçar o conteúdo, demonstrando na prática suas utilizações.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}