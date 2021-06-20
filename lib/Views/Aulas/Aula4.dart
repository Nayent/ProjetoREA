import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
import 'package:python_project/services/txts.dart';

class Aula4 extends StatelessWidget {
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
            ClassTitleText("Aula 4 - Variáveis e Estruturas Condicionais"),
            TitleText("Variável"),
            NormalText(
                'Uma variável é um nome que guarda/armazena algum valor e que, pode-se “chamá-lo” em outro momento para realizar alguma operação com ele, seja mostrar seu conteúdo, realizar alguma operação matemática ou outra manipulação de dados.'),
            NormalText(
                'Para ter-se uma variável no programa, precisa-se de um comando de atribuição e, este comando é simbolizado pelo sinal igual “=”. Este comando indica que o lado esquerdo recebe o valor do item do lado direito.'),
            ImageCode('aula_4_1.png'),
            NormalText(
                'Neste exemplo, o “b” recebe “a”. Para exemplificar melhor, tem-se:'),
            ImageCode('aula_4_2.png'),
            NormalText(
                'Na tabela a seguir há alguns exemplos de operações matemáticas, utilizando:'),
            NormalText('   a = 8'),
            NormalText('   b = 2'),
            Center(
              child: DataTable(columns: [
                DataColumn(label: Text('Operações')),
                DataColumn(label: Text('Expressões')),
                DataColumn(label: Text('Saídas')),
              ], rows: [
                DataRow(cells: [
                  DataCell(Text('Soma')), 
                  DataCell(Text('a + b')),
                  DataCell(Text('10')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Subtração')), 
                  DataCell(Text('a - b')),
                  DataCell(Text('6')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Multiplicação')), 
                  DataCell(Text('a * b')),
                  DataCell(Text('16')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Divisão')), 
                  DataCell(Text('a / b')),
                  DataCell(Text('4')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Exponenciação')), 
                  DataCell(Text('a ** b')),
                  DataCell(Text('64')),
                ]),
              ]),
            ),
            NormalText('Em Python, há alguns tipos de variáveis, sendo que esses tipos são determinadas de forma automática no python, a não ser que seja definido pelo programador.'),
            NormalText('Os tipos básicos são:'),
            NegriteText('Inteiro: Números inteiros'),
            ImageCode('aula_4_3.png'),
            NegriteText('Ponto Flutuante: Números com vírgula, ou seja, decimais'),
            ImageCode('aula_4_4.png'),
            NegriteText('Booleano: Aceita apenas dois valores, True ou False'),
            ImageCode('aula_4_5.png'),
            NegriteText('String: Sequência de caracteres'),
            ImageCode('aula_4_6.png'),
            NormalText('Utilizando a função type(), no qual retorna o tipo da variável.'),
            TitleText('Interação com o Usuário'),
            NormalText('Um ponto interessante a ser abordado é em uma entrada de dados, ou seja, adicionarmos alguma informação quando nosso código já esta rodando. Por exemplo, supõe-se que queremos perguntar ao usuário qual seria a idade dele e mostre uma mensagem em seguida. Aqui, realizaremos um script cujo perguntará a idade do usuário e, não seguirá com o código até que o usuário responda à essa pergunta. Assim respondido, nosso código irá nos retornar uma mensagem dizendo a idade do usuário. No python, a função responsável por isso é o “input()”.'),
            NormalText('Esta função, quando executada, irá solicitar algo do usuário e a resposta dele deverá ser de duas formas possíveis, a primeira, quando solicitamos um número e a segunda, uma mensagem. Quando solicitamos o número, a entrada do usuário deverá ser apenas o número mas, caso seja uma mensagem, ela deverá estar entre aspas (“ ”). Outro ponto desta função é que, dentro do parênteses, podemos colocar uma mensagem para o usuário e, esta mensagem ficará entre aspas. '),
            NormalText('Com isso, podemos desenvolver nosso código solicitado. Inicialmente, utilizaremos nossa função input e, dentro dela, colocamos a mensagem “Digite sua idade: ”. Precisamos guardar esta informação em algum lugar e, então, utilizaremos as variáveis como vistas anteriormente, que realizam este papel de guardar algo que queremos, neste caso, criaremos uma variável que terá o nome de “idade”.'),
            NormalText('Assim, já temos nossa primeira linha de código:'),
            ImageCode('aula_4_7.png'),
            NormalText('Agora, basta imprimir uma mensagem dizendo “Sua idade é: ” e, em seguida, a idade que o usuário irá colocar. Para isso, utilizaremos a função print cujo dentro dela, colocamos a mensagem entre aspas em seguida, o valor da nossa idade, que neste caso está guardado na variável “idade” e, iremos separar a mensagem o número com uma vírgula, como vimos na aula anterior. Portanto, temos nossa segunda linha de código:'),
            ImageCode('aula_4_8.png'),
            NormalText('Com isso, construímos um código cujo pergunta a idade do usuário, guarda este valor e, em seguida, imprime esta idade com uma mensagem.'),
            ImageCode('aula_4_9.png'),
            TitleText('Estrutura Condicional'),
            NormalText('Na programação, tem-se um recurso muito utilizado que é a Condicional. Ela, irá apresentar condições de operação de um determinado item, na língua portuguesa, comumente utilizamos a palavra “se” e “caso contrário” para representar esta condição, por exemplo, “se chover, fecharei a janela, caso contrário, não fecharei”.'),
            NormalText('Já na linguagem Python, temos os termos “if” e “else” que representam - do inglês - “se” e “caso contrário” respectivamente. Sua sintaxe é dada por:'),
            ImageCode('aula_4_10.png'),
            NormalText('Com isso, podemos representar o exemplo da chuva visto acima:'),
            ImageCode('aula_4_11.png'),
            NormalText('Aqui temos que a condição é “se chover”. '),
            NormalText('Caso a condição seja verdadeira, temos que fecharemos a janela, portanto o “caso contrário” ou o “não fechar a janela” não será executado, portanto é como se ignorássemos o resto da estrutura da condicional que neste caso é o “else” do programa.'),
            NormalText('Caso a condição não seja verdadeira ou, neste caso, não chova, teremos que a primeira parte da estrutura - representado por “fechar a janela” - não é executada (pois não será verdadeira) mas sim, a parte do caso contrário que corresponde a negação da condição (else), portanto executando o “não fechar a janela”.'),
            NormalText('Com isso tem-se que a estrutura da condicional é dada por verdadeiro ou falso, de modo que, caso seja verdadeira, o programa irá retornar a expressão equivalente daquela dada condição e que, caso seja falso, ela irá “ignorar” aquela parte da estrutura.'),
            NormalText('Na condicional, podemos ter mais de uma condição e, para isso, a partir da segunda condição, utiliza-se o “elif”. Para exemplificar, tem-se:'),
            // NormalText("Tem-se 3 cores - Amarelo, Vermelho e Azul - de Camiseta, se a camiseta for a amarela custa 5 R$, se for a vermelha custa 10 R$ e se for a azul custa 15 R$ e se não escolherem nenhuma, será 0 R$"),
            NegriteText('Operadores básicas de comparação :'),
            Center(
              child: DataTable(columns: [
                DataColumn(label: Text('Operações')),
                DataColumn(label: Text('Operadores')),
              ], rows: [
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ maior que variável ‘b’')), 
                  DataCell(Text('a > b')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ menor que variável ‘b’')), 
                  DataCell(Text('a < b')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ maior ou igual que variável ‘b’')), 
                  DataCell(Text('a >= b')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ menor ou igual que variável ‘b’')), 
                  DataCell(Text('a <= b')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ igual da variável ‘b’')), 
                  DataCell(Text('a == b')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ diferente da variável ‘b’')), 
                  DataCell(Text('a <> b')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Variável ‘a’ diferente da variável ‘b’')), 
                  DataCell(Text('a != b')),
                ]),
              ]),
            ),
            NormalText('O valor que irá ser retornado realizando essas operações será um booleano (True ou False), sendo True quando a operação for verdadeira e False caso contrário.'),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}

class PlanoAula4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula4',
      aula: 'Aula 4',
      tituloAula: 'Variáveis e Estruturas Condicionais',
      conteudoRelacionado: '',
      resumo: 'Nesta aula veremos sobre Variáveis e Estruturas Condicionais',
      objetivos: 'O objetivo desta aula é apresentar os conceitos de variáveis e estruturas condicionais SE-ENTÃO em Python. Serão apresentados exemplos práticos de uso desses conceitos com experimentação robótica no simulador.',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}
