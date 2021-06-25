import 'package:flutter/material.dart';
import 'package:python_project/Views/Dashboard/src/ProjectProgressCard.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula8 extends StatelessWidget {
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
            ClassTitleText("Aula 8 - Strings"),
            NormalText('Strings são listas de caracteres, do mesmo jeito que na lista utilizamos index para cada item, as strings utilizam o mesmo princípio, porém apenas com caracteres.'),
            NormalText('Para declarar uma string deve-se utilizar aspas, por exemplo:'),
            ImageCode('aula_8_1.png'),
            NormalText('Para acessar valores, utilizamos o mesmo princípio das listas, por index.'),
            ImageCode('aula_8_2.png'),
            NormalText('Para selecionar um intervalo dentro da string, fazemos o seguinte:'),
            ImageCode('aula_8_3.png'),
            NormalText('É possível utilizar um loop na string, por exemplo:'),
            ImageCode('aula_8_4.png'),
            TitleText('Funções de String'),
            SubtitleText('Função len() - Tamanho da string'),
            ImageCode('aula_8_5.png'),
            SubtitleText('Função replace() - Substituir uma substring por alguma outra coisa'),
            ImageCode('aula_8_6.png'),
            SubtitleText('Concatenar Strings'),
            ImageCode('aula_8_7.png'),
            SubtitleText('Função upper() - Transformar tudo para maiúsculo'),
            ImageCode('aula_8_8.png'),
            SubtitleText('Função lower() - Transformar tudo para minusculo'),
            ImageCode('aula_8_9.png'),
            SubtitleText('Função find() - Verificar se existe algum valor dentro da string'),
            ImageCode('aula_8_10.png'),
            NormalText('Quando existe o que foi procurado dentro da string, ele irá retornar a posição na qual começa o valor desejado. Caso não exista, retorna -1.'),
            SubtitleText('Função split() - Fatiar a string'),
            ImageCode('aula_8_11.png'),
            NormalText('A função split aceita como parâmetro o caracter que irá ser utilizado como chave para separar a string em várias partes. No exemplo acima, o caractere utilizado foi o padrão, sendo ele o espaço.'),
            SubtitleText('Acentuação'),
            NormalText('No python 2, para utilizarmos acentuação devemos especificar no nosso código que estamos utilizando o utf-8, caso contrário ele irá retornar erro nas string que possuem acentuação.'),
            ImageCode('aula_8_12.png'),
            NormalText('Resolvemos o problema da seguinte maneira:'),
            ImageCode('aula_8_13.png'),
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
                      Colors.red,
                      'Exercicio 1',
                      'Faça um Programa que leia um vetor de 10 caracteres, e diga quantas consoantes foram lidas. Imprima as consoantes sem repetir.',
'''
#coding: utf-8
 
x = list("paralelogramo")
a = set()#E uma lista com valores unicos (sem repeticoes)
vogais = list("aeiou")
i=0
for k in x:
    if k not in vogais: 
        a.add(k)
        i=i+1
 
print(i)
print(a)
''',
                      '15m',
                      'Difícil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 2',
                      'Crie um programa que receba uma palavra em nos retorne uma string com as letras das posições pares da palavra, considerando o 0 como ponto de partida.',
'''
#coding: utf-8
 
palavra = raw_input("Digite uma palavra: ")
saida=list()
for x in range(0,len(palavra),2):
    saida.append(palavra[x])
print(saida)
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.amber,
                      'Exercicio 3',
                      'Crie um programa que receba uma frase qualquer do usuário e, inverta a ordem das palavras desta e, mostre o resultado da nova frase.',
'''
#coding: utf-8
 
frase = raw_input("Digite uma frase: ")
lista_frase = frase.split(' ')
lista_frase_inv = list()
 
for x in range(len(lista_frase)-1,-1,-1):
    lista_frase_inv.append(lista_frase[x])
 
print(lista_frase_inv)
''',
                      '10m',
                      'Médio',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 4',
                      'Escreva um programa que transforme os nomes uma lista em nomes maiúsculos',
'''
#coding: utf-8
nomes=["Guilherme","luis","Gerso","Marcos","Carol"]
nomes = [elemento.upper() for elemento in nomes] # For inline
print(nomes)
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 5',
                      'Crie um programa que mostre quantos espaços tem em uma frase.',
'''
#coding: utf-8
n_espacos=0
frase=raw_input("Digite uma frase: ")
 
for x in range(0,len(frase)):
    if(frase[x]==" "):
        n_espacos += 1
 
print(n_espacos)
''',
                      '5m',
                      'Fácil',
                      bol: false,
                    ),
                    ProjectProgressCard(
                      Colors.green,
                      'Exercicio 6', 
                      'Crie um programa que dado um texto qualquer, tenha um mecanismo de pesquisa que irá procurar uma palavra digitada pelo usuário neste texto. Caso tenha a palavra, retorne uma frase dizendo: A palavra (palavra pesquisada pelo usuário) se encontra no texto. Caso a palavra não esteja no texto, retorne: A palavra (palavra pesquisada pelo usuário) não se encontra no texto.',
'''
#coding: utf-8
while(1):
    texto = "python aplicado na robotica"
    pesquisa=raw_input("Digite uma palavra para pesquisar no texto: ")
    verifica=texto.find(pesquisa)
    if(verifica==-1):
        print("A palavra "+pesquisa+" nao se encontra no texto")
    else:    
        print("A palavra "+pesquisa+" se encontra no texto")
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

class PlanoAula8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula8',
      aula: 'Aula 8',
      tituloAula: 'Strings',
      conteudoRelacionado: 'Apresentação das Strings',
      resumo: 'Nesta aula será apresentado as Strings',
      objetivos: 'Apresentar de forma simples e direta as Strings e demonstrar suas principais utilizações em um código. Por fim, tem-se exercícios práticos juntamente com o simulador  a fim de reforçar o conteúdo, demonstrando na prática suas utilizações.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}