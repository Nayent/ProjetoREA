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
            SubtitleText('Função len() - Tamanho da string'),
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