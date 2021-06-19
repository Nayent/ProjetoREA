import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/txts.dart';

class Aula9 extends StatelessWidget {
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
            ImageCode('aula_9_1.png'),
            NormalText('Para acessar valores, utilizamos o mesmo princípio das listas, por index.'),
            ImageCode('aula_9_2.png'),
            NormalText('Para selecionar um intervalo dentro da string, fazemos o seguinte:'),
            ImageCode('aula_9_3.png'),
            NormalText('É possível utilizar um loop na string, por exemplo:'),
            ImageCode('aula_9_4.png'),
            TitleText('Funções de String'),
            SubtitleText('Função len() - Tamanho da string'),
            ImageCode('aula_9_5.png'),
            SubtitleText('Função replace() - Substituir uma substring por alguma outra coisa'),
            ImageCode('aula_9_6.png'),
            SubtitleText('Concatenar Strings'),
            ImageCode('aula_9_7.png'),
            SubtitleText('Função upper() - Transformar tudo para maiúsculo'),
            ImageCode('aula_9_8.png'),
            SubtitleText('Função lower() - Transformar tudo para minusculo'),
            ImageCode('aula_9_9.png'),
            SubtitleText('Função find() - Verificar se existe algum valor dentro da string'),
            ImageCode('aula_9_10.png'),
            NormalText('Quando exister o que foi procurado dentro da string, ele irá retornar a posição na qual começa o valor desejado. Caso não exista, retorna -1.'),
            SubtitleText('Função len() - Tamanho da string'),
            ImageCode('aula_9_11.png'),
            NormalText('A função split aceita como parâmetro o caracter que irá ser utilizado como chave para separar a string em várias partes. No exemplo acima, o caractere utilizado foi o padrão, sendo ele o espaço.'),
            SubtitleText('Acentuação'),
            NormalText('No python 2, para utilizarmos acentuação devemos especificar no nosso código que estamos utilizando o utf-8, caso contrário ele irá retornar erro nas string que possuem acentuação.'),
            ImageCode('aula_9_12.png'),
            NormalText('Resolvemos o problema da seguinte maneira:'),
            ImageCode('aula_9_13.png'),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}
