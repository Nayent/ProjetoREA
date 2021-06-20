import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
import 'package:python_project/services/plano_aula.dart';
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
            ClassTitleText("Aula 9 - Tratamento de erros e Exceções"),
            NormalText('No nosso desenvolvimento até aqui, tivemos momentos em que escrevemos um código e, na hora de compilar, apareceu uma mensagem de erro. No mundo da programação terá esses momentos e, nesta aula, abordaremos justamente sobre eles: Erros.'),
            NormalText('Existem pelo menos dois tipos distintos de erros: erros de sintaxe e exceções.'),
            TitleText("Erros de sintaxe"),
            NormalText('Erros de sintaxe, também conhecidos como erros de parse, são provavelmente os mais frequentes entre aqueles que ainda estão aprendendo Python. É quando escrevemos alguma função errada por exemplo “prit” ao invés de “print” ou, principalmente, quando há um erro na estrutura de alguma função, por exemplo:'),
            ImageCode('aula_9_1.png'),
            NormalText('Neste exemplo terá um erro de sintaxe pois, após o while() precisa-se do dois pontos “:”. Ou seja, para corrigirmos o erro de sintaxe, basta colocar os dois pontos após o while(), assim:'),
            ImageCode('aula_9_2.png'),
            TitleText("Erros de exceções"),
            NormalText('Os erros de exceções são quando ocorre um erro na hora da execução do código, mesmo que um comando ou expressão estejam sintaticamente corretos. Alguns erros de exceções mais comuns são NameError e TypeError.'),
            NormalText('NameError é quando tem-se algum erro relacionado à alguma variável que não foi declarada, por exemplo:'),
            ImageCode('aula_9_3.png'),
            NormalText('TypeError é quando tem-se um erro de Tipo. Por exemplo:'),
            ImageCode('aula_9_4.png'),
            NormalText('Neste caso, o erro aparece pois não podemos somar uma string com um inteiro pois são de tipos diferentes.'),
            NormalText('Um outro erro que pode ser facilmente encontrado, principalmente nos primeiros códigos é o erro ZeroDivisionError. Este erro indica quando tem-se uma divisão por 0, como pode-se ver no exemplo a seguir:'),
            ImageCode('aula_9_5.png'),
            NormalText('Outro exemplo que também é comum é o erro FileNotFoundError, ele indica que um arquivo não foi encontrado ou que não existe tal arquivo ou diretório.'),
            TitleText("Tratamento de erros"),
            NormalText('Quando nos deparamos com estes erros de exceções, podemos ver que eles irão interromper o código e não rodar mais, por exemplo:'),
            ImageCode('aula_9_6.png'),
            NormalText('Temos que este código terá o erro ZeroDivisionError e irá parar aí, não executando os prints que vêm em sequência. Assim, ao executar estes comandos, a saída será:'),
            ImageCode('aula_9_7.png'),
            NormalText('Para não acontecer isso (“quebrarmos” o código e ele não terminar de rodar), utilizamos o tratamento de erros de exceção. Para isso, utilizamos as funções “try” e “except” e a estrutura utilizada é:'),
            ImageCode('aula_9_8.png'),
            NormalText('Esta estrutura nos diz que, quando entramos no “try” tentaremos executar o “caso” e, se for bem executado (sem ocorrer nenhum erro de exceção) ele irá sair desta estrutura e continuar rodando o código.'),
            NormalText('Já quando o try nos dizer que ao executar o “caso” ocorreu uma exceção e ela for do tipo declarado em except (objeto_de_exceção), ela deverá ser tratada pelo caso de except (comando).  Caso ocorra uma exceção mas ela não for do tipo que except esta preparado para receber a exceção não será tratada.'),
            NormalText('Quando queremos um caso mais geral ou, quando não sabemos ao certo o tipo de erro de exceção que surgirá, pode-se retirar da estrutura o objeto_de_exceção assim, ficando apenas:'),
            ImageCode('aula_9_9.png'),
            NormalText('Assim, para o caso anterior, podemos reescrever:'),
            ImageCode('aula_9_10.png'),
            NegriteText('*Atenção: não colocamos para realizar a leitura do “a” pois sabemos que o “a” não estará declarado (pois quando declaramos ele em a=10 * (1/0) esta linha apresentou erro e, portanto, não será levada para frente). Deste modo,  apresentará erro novamente.'),
            NormalText('Para ultrapassarmos esta questão, pode-se utilizar o “else” - que aprendemos em aulas anteriores - após o “except”. Ele nos retornará - caso não entre no except - algum comando que queremos que irá utilizar o “caso” do “try”. E, se nosso “caso” entre no “except” o “else” não será executado. Com isso, agora podemos reescrever o exemplo inicial:'),
            ImageCode('aula_9_11.png'),
            NegriteText('*Atenção: Adicionou-se no início um input para solicitarmos um número qualquer para que tenhamos entradas variadas para nosso teste.'),
            NormalText('Neste exemplo, o usuário irá digitar um número qualquer e nosso código irá tentar (try) executar o caso (a = 10*(1/x)). Se apresentar erro de divisão por zero, nosso código irá retornar uma mensagem dizendo "Não é possível dividir por zero”. Caso o usuário digite outro número, sem ser o zero, irá tentar realizar nosso cálculo e, como não será um erro de exceção, realiza o cálculo e pula direto para nosso “else” e nos diz a resposta (guardada na variável “a”). Em ambos os casos, nosso código não é interrompido e, ao sair da estrutura de tratamento de erro, irá nos retornar a mensagem "Saindo...".'),
            NormalText('Um ponto que pode surgir é quando não queremos dar nenhum comando quando o código entra no “except”. Para isso, utiliza-se o “pass” que irá mandar o código apenas “passar" ou “seguir” sem nenhuma interrupção. Utilizando o mesmo exemplo, tem-se:'),
            ImageCode('aula_9_12.png'),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}

class PlanoAula9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanoAula(
      path: 'aula9',
      aula: 'Aula 9',
      tituloAula: 'Tratamento de erros e Exceções',
      conteudoRelacionado: 'Tratamento de erros e Exceções',
      resumo: 'Nesta aula será apresentado como resolver erros e Exceções',
      objetivos: 'Capacitar o aluno para que quando surja algum problema durante a resolução de algum código, consiga resolve-lo',
      pre: 'Computador com Sistema Operacional Linux Ubuntu versão 16.04.LTS, acesso à internet, ter realizado as aulas anteriores.',
    );
  }
}