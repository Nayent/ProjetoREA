import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/services/txts.dart';
import 'button_class.dart';

class PlanoAula extends StatelessWidget {
  final String path;
  final String aula;
  final String tituloAula;
  final String conteudoRelacionado;
  final String resumo;
  final String objetivos;
  final String pre;

  const PlanoAula(
      {Key key,
      this.path,
      this.aula,
      this.tituloAula,
      this.conteudoRelacionado,
      this.resumo,
      this.objetivos,
      this.pre})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
        child: Center(
          child: DataTable(
            dataRowHeight: 110,
            columnSpacing: 60,
            columns: [
            DataColumn(label: GoToClass(path)),
            DataColumn(
                label: Text(
              'Plano de Aula',
              style: GoogleFonts.quicksand(
                  fontSize: 18.0, fontWeight: FontWeight.bold),
            )),
          ], rows: [
            DataRow(cells: [
              DataCell(NegriteText(aula)),
              DataCell(NormalText(tituloAula)),
            ]),
            DataRow(cells: [
              DataCell(NegriteText('Conteúdo Relacionado')),
              DataCell(NormalText(conteudoRelacionado)),
            ]),
            DataRow(cells: [
              DataCell(NegriteText('Resumo')),
              DataCell(NormalText(resumo))
            ]),
            DataRow(cells: [
              DataCell(NegriteText('Objetivos')),
              DataCell(NormalText(objetivos)),
            ]),
            DataRow(cells: [
              DataCell(NegriteText('Pré-requisitos')),
              DataCell(NormalText(pre)),
            ]),
          ]),
        ),
      ),
    );
  }
}
