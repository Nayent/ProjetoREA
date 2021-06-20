import 'package:flutter/material.dart';
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