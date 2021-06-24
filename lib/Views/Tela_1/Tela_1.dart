import 'package:flutter/material.dart';
import 'package:python_project/services/txts.dart';

class Tela1Page extends StatelessWidget {
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
                  ClassTitleText('Links Para os Códigos'),
                  NormalText('Nesta seção está os links para os arquivos com os códigos apresentados em aula, pois com o intuito de não apenas copiar o código enquanto faz a aula mas sim escrever todo o código, para que fique fixado da melhor maneira possível. Porém para caso ainda não tenha conseguido, acesse os links abaixos e pegue o arquivo com o código pronto para utilziar.'),
                  TitleText('Aula 1'),
                  HyperText('Códigos Aula 1', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_1'),
                  TitleText('Aula 2'),
                  HyperText('Códigos Aula 2', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_2'),
                  TitleText('Aula 3'),
                  HyperText('Códigos Aula 3', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_3'),
                  TitleText('Aula 4'),
                  HyperText('Códigos Aula 4', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_4'),
                  TitleText('Aula 5'),
                  HyperText('Códigos Aula 5', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_5'),
                  TitleText('Aula 6'),
                  HyperText('Códigos Aula 6', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_6'),
                  TitleText('Aula 7'),
                  HyperText('Códigos Aula 7', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_7'),
                  TitleText('Aula 8'),
                  HyperText('Códigos Aula 8', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_8'),
                  TitleText('Aula 9'),
                  HyperText('Códigos Aula 9', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_9'),
                  TitleText('Aula 10'),
                  HyperText('Códigos Aula 10', 'https://github.com/Nayent/arquivos_rea/tree/main/Aula_10'),
                  NormalText(''),
                ])));
  }
}
