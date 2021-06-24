import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
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
                      'Faça um código que mostre os valores inteiros de 0 até 100.',
'''
# -*- coding: utf-8 -*-
 
#Utilizando For:
for x in range(0,100,1):
    print (x)
 
#Utilizando While
x=0
while(x<100):
    print(x)
    x += 1
''',
                      '1m',
                      'Facíl',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 2',
                      'Faça um contador que vá de 0 até 100 dando saltos de 2 em 2.',
'''
# -*- coding: utf-8 -*-
 
#Utilizando For:
for x in range(0,100,2):
    print (x)
 
#Utilizando While
x=0
while(x<100):
    print(x)
    x += 2
''',
                      '1m',
                      'Facíl',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 3',
                      'Faça um contador decrescente que inicie em 100 e termine em 0 e mostre todos os inteiros ímpares.',
'''
# -*- coding: utf-8 -*-
 
#Utilizando For:
for x in range(100,0,-1):
    print (x)
 
#Utilizando While
x=100
while(x>0):
    print(x)
    x -= 1
''',
                      '1m',
                      'Facíl',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 4',
                      'Crie uma função que receba dois números e, então, mostre - de forma crescente - todos os números inteiros entre eles.',
'''
# -*- coding: utf-8 -*-
 
a=input("Digite o primeiro numero: ")
b=input("Digite o segundo numero: ")
 
if(a>b+1):
    maior=a
    menor=b
elif(b>a+1):
    maior=b
    menor=a
else:
    maior=a
    menor=b
    print("Nao tem um numero inteiro entre eles!")
 
for x in range(menor+1,maior,1):
    print (x)
 
''',
                      '1m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 5',
                      'Desenvolva um programa que solicite uma nota de zero a dez. Mostre uma mensagem caso o valor seja inválido (fora deste intervalo) e peça novamente a senha até que seja preenchida corretamente.',
'''
# -*- coding: utf-8 -*-

nota = input("Digite uma nota 0 ate 10: ")
while (nota < 0) or (nota > 10):
    nota = input("Nao pode ser menor que 0 ou maior que 10!\nTente novamente:")
print("Nota valida")
''',
                      '1m',
                      'Facíl',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 6', 
                      'Construa um programa que leia um nome de usuário e a sua senha e, caso a senha e o nome forem iguais, mostre uma mensagem de erro informando que não pode-se inserir uma senha igual ao nome e volte a pedir as informações.',
'''
# -*- coding: utf-8 -*-

login = raw_input("Login: ")
senha = raw_input("Senha: ")
while login == senha:
    print("ERRO! Sua senha deve ser diferente do login: ")
    senha = raw_input("Insira uma nova senha: ")
print("Cadastro aprovado")
'''
,
                      '1m',
                      'Facíl',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.red,
                      'Exercicio 7',
                      'Faça um programa que receba um número inteiro entre 0 à 100 que será a posição de um número da sequência de fibonacci e, nos retorne que número está presente nesta posição.',
'''
# -*- coding: utf-8 -*-
a = 1
b = 1
k = 0
x = input("Digite a posicao do numero: ")
while(k<x-2):
    c = a+b
    a = b
    b = c
    k += 1
 
print(c)
''',
                      '1m',
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