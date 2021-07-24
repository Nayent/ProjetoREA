import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula10 extends StatelessWidget {
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
            ClassTitleText("Aula 10 - Arquivos"),
            TitleText('Manipulação de Arquivos'),
            NormalText('A manipulação de arquivos é algo simples porém muito útil, podendo utilizar para ler dados de alguma planilha, fazer backups, e para o nosso caso, salvar os dados obtidos do robô em um arquivo.'),
            NormalText('Primeiramente, vamos entender como funciona a sintaxe para abrir um arquivo e então ler ou escrever nele.'),
            NormalText('Para criar ou abrir arquivos, utilizamos a função open(), para que abra o nosso arquivo, devemos passar o nome e sua extensão como parâmetro, também devemos passar o modo de uso, ou seja, o que queremos fazer com esse arquivo. Por exemplo:'),
            ImageCode('aula_10_1.png'),
            NormalText('No exemplo acima estamos abrindo o arquivo chamado “nome_arquivo” que possui uma extensão “txt”, no modo de escrita “w”.'),
            NormalText('Para saber o modo que deseja usar, consulte a tabela abaixo:'),
            ImageCode('aula_10_2.png'),
            NormalText('No nosso exemplo não foi passado nenhum diretório para o arquivo, logo ele irá ficar na pasta raiz, e caso o arquivo não exista, o python não irá retornar erro, ele irá criar o arquivo com o mesmo nome e extensão para nós.'),
            TitleText('Escrevendo em arquivos'),
            NormalText('Para ficar mais claro, vamos escrever “Hello World” dentro de um arquivo.'),
            ImageCode('aula_10_3.png'),
            NormalText('Abrindo o arquivo gerado é possível observar o resultado final:'),
            ImageCode('aula_10_4.png'),
            NormalText('Em vez de escrevermos linha por linha, podemos escrever no arquivo uma vários valores de uma vez utilizando um array e a função .writelines(), por exemplo:'),
            ImageCode('aula_10_5.png'),
            NormalText('Gerando então o seguinte arquivo:'),
            ImageCode('aula_10_6.png'),
            NegriteText('OBS: As funções write(), writelines(), recebem apenas strings ou uma lista de strings como parâmetro.'),
            TitleText('Lendo arquivos'),
            NormalText('Agora vamos ler os dados de um arquivo, e salvar seus valores para que possamos utilizá-los depois. '),
            NormalText('O arquivo a ser lido será o último que criamos, contendo as 3 linhas de dados, para isso fazemos o seguinte:'),
            ImageCode('aula_10_7.png'),
            NormalText('Após utilizarmos a função readlines() no arquivo, ela consome todos os seus dados, logo, se tentar rodar de novo o ‘arquivos.readlines()’ ele irá retornar uma lista vazia.'),
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
                      Colors.green,
                      'Exercicio 1',
                      'Escreva seu nome em um arquivo',
'''
arquivo = open('meu_nome', 'w')
 
arquivo.write('Meu Nome\\n')
 
arquivo.close()
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 2',
                      'Escreva uma lista de 0 a 100, em um arquivo',
'''
arquivo = open('lista', 'w')
 
lista_de_dados = ['{}\\n'.format(x) for x in range(1,101)]
 
arquivo.writelines(lista_de_dados)
 
arquivo.close()
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 3',
                      'Leia e mostre na tela os dados dentro dos arquivos gerados nos exercícios 1 e 2',
'''
arquivo = open('meu_nome', 'r')
arquivo2 = open('lista', 'r')
 
dados_1 = arquivo.readlines()
dados_2 = arquivo2.readlines()
 
print('Dados do primeiro arquivo:\\n{}'.format(dados_1))
print('\\nDados do segundo arquivo:\\n{}'.format(dados_2))
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.red,
                      'Exercicio 4',
                      'Salve as posições do robô em um arquivo',
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

arquivo = open('posicoes.txt', 'w')

arquivo.write('Posições X: \\n')
arquivo.writelines('; '.join(map(str, posicao_X)))

arquivo.write('\\nPosições Y: \\n')
arquivo.writelines('; '.join(map(str, posicao_Y)))

arquivo.write('\\nTempo: \\n')
arquivo.writelines('; '.join(map(str, tempo)))

arquivo.write('\\nDistancia: \\n')
arquivo.writelines('; '.join(map(str, distancia)))

arquivo.write('\\nVelocidade: \\n')
arquivo.writelines('; '.join(map(str, velocidade)))

arquivo.close()

# A função map aplica a função str a todos os itens da lista.


# Saída de escrita no arquivo:

Posições X: 
1012.0; 2024.0; 2025.0; -380.0; -473.0
Posições Y: 
0.0; 0.0; 2868.0; 3542.0; 1797.0
Tempo: 
4.99088597298; 4.99036502838; 4.99042582512; 4.99040102959
Distancia: 
1012.0; 2868.00017434; 2497.65910404; 1747.47646622
Velocidade: 
202.76960954; 574.707492944; 500.490176904; 350.167542821
''',
                      '15m',
                      'Difícil',
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

class PlanoAula10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula10',
      aula: 'Aula 10',
      tituloAula: 'Arquivos',
      conteudoRelacionado: 'Utilização de dados externos',
      resumo: 'Nesta aula será mostrado como utilizar arquivos tanto para ler quanto para escrever.',
      objetivos: 'Apresentar uma forma de manipular dados dentro de arquivos, sendo para salvar dados ou para ler dados externos.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}