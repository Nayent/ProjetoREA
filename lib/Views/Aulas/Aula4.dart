import 'package:flutter/material.dart';
import 'package:python_project/services/images.dart';
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
            NormalText(''),
            NormalText(''),
            NormalText(''),
          ],
        ),
      ),
    );
  }
}
