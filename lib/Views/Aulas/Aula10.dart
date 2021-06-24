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