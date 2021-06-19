import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
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
            ClassTitleText("Aula 7 - Arrays"),
            TitleText("Listas"),
            NormalText('Uma lista nada mais é do que uma variável que armazena uma sequência de itens. Por exemplo:'),
            ImageCode('aula_8_1.png'),
            NormalText('É utilizado colchetes [] para inicializá-la, e também para acessar os valores dentro da mesma, utilizando o index, sempre começando em 0. por exemplo:'),
            ImageCode('aula_8_2.png'),
            ImageCode('aula_8_3.png'),
            NormalText('Para entender melhor as posições de um array, a imagem abaixo irá nos auxiliar:'),
            ImageCode('aula_8_4.png'),
            NormalText('Nas listas, não é preciso apenas armazenar valores do mesmo tipo, é possível conter todos os tipos dentro. Por exemplo:'),
            ImageCode('aula_8_5.png'),
            NormalText('As listas são mutáveis, logo, podemos adicionar, remover e alterar os seus valores.'),
            SubtitleText('    Incluir valores no final da lista'),
            ImageCode('aula_8_6.png'),
            SubtitleText('    Incluir valor na posição desejada'),
            ImageCode('aula_8_7.png'),
            SubtitleText('    Alterar valor'),
            ImageCode('aula_8_8.png'),
            SubtitleText('    Deletar elemento'),
            ImageCode('aula_8_9.png'),
            NormalText('Para selecionar um intervalo dentro da lista, fazemos o seguinte:'),
            ImageCode('aula_8_10.png'),
            TitleText("Tuplas"),
            NormalText('Uma tupla é basicamente uma lista, possuindo a mesma estrutura, porém, uma tupla é imutável, ou seja, após declarada, não é possível alterar seus valores.'),
            NormalText('Para declarar uma tupla, utilizamos os parênteses.'),
            ImageCode('aula_8_11.png'),
            TitleText("Dicionários"),
            NormalText('Os dicionários também são parecidos com listas, porém servem para armazenar dados em par, sendo uma chave e um valor. Para declarar um dicionário é utilizado chaves. Por exemplo:'),
            ImageCode('aula_8_12.png'),
            NormalText('Exemplo prático:'),
            ImageCode('aula_8_13.png'),
            NormalText('No exemplo acima é possível ver que foi salvo diversas informações a respeito de um filme, tudo em apenas um lugar.'),
            NormalText('Para buscar um valor no dicionário utilizamos o valor da chave, por exemplo:'),
            ImageCode('aula_8_14.png'),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}
