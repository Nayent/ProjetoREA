import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aula1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 100,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            color: Colors.white,
            width: MediaQuery.of(context).size.width - 100,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClassTitleText("Aula 1 - Introdução à Python"),
                TitleText("Conteúdo relacionado"),
                NormalText("Introdução à linguagem python, pontos positivos e negativos e suas aplicações."),
                TitleText("Resumo"),
                NormalText("A linguagem de programação Python deu-se partida com o objetivo de desenvolver uma linguagem fácil, intuitiva e tão poderosa quanto as concorrentes. Estas características fizeram a linguagem se popularizar e se tornar amplamente utilizada, tanto por programadores quanto por engenheiros, matemáticos e pesquisadores em geral por - justamente - ser totalmente expressiva, sendo simples de traduzir o raciocínio em um algoritmo. Atualmente, uma das principais atuações do Python é no desenvolvimento da Inteligência Artificial (IA)."),
                TitleText("Orientações Pedagógicas"),
                NormalText("Atente-se nos pontos fortes e fracos da utilização do python assim como suas principais aplicações, de modo a compreender sua atuação no mundo atual e, principalmente, a possibilidade de aplicar esta poderosa ferramenta na solução de seus problemas."),
                TitleText("Pré-requisitos"),
                NormalText("Sem requisitos"),
                NormalText(
                    "Lorem ipsum est condimentum enim tortor proin nulla, habitasse netus tempus at erat inceptos, morbi per ad nisl rhoncus aliquet. ultrices amet nulla tempor curae volutpat ut taciti accumsan, velit nisl sollicitudin fermentum risus dolor sit, tellus rutrum torquent nisl fringilla faucibus sed. molestie inceptos velit class vel potenti libero purus tristique, dictum placerat libero rutrum integer erat amet tincidunt integer, sociosqu netus pretium tincidunt nec porta convallis. ornare ullamcorper quis ac potenti velit scelerisque curae pulvinar arcu, fames nunc tortor fermentum platea hendrerit senectus euismod, ante rhoncus justo quam ornare vitae mi malesuada."),
                NormalText(
                    "Lorem ipsum est condimentum enim tortor proin nulla, habitasse netus tempus at erat inceptos, morbi per ad nisl rhoncus aliquet. ultrices amet nulla tempor curae volutpat ut taciti accumsan, velit nisl sollicitudin fermentum risus dolor sit, tellus rutrum torquent nisl fringilla faucibus sed. molestie inceptos velit class vel potenti libero purus tristique, dictum placerat libero rutrum integer erat amet tincidunt integer, sociosqu netus pretium tincidunt nec porta convallis. ornare ullamcorper quis ac potenti velit scelerisque curae pulvinar arcu, fames nunc tortor fermentum platea hendrerit senectus euismod, ante rhoncus justo quam ornare vitae mi malesuada."),
                NormalText(
                    "Lorem ipsum est condimentum enim tortor proin nulla, habitasse netus tempus at erat inceptos, morbi per ad nisl rhoncus aliquet. ultrices amet nulla tempor curae volutpat ut taciti accumsan, velit nisl sollicitudin fermentum risus dolor sit, tellus rutrum torquent nisl fringilla faucibus sed. molestie inceptos velit class vel potenti libero purus tristique, dictum placerat libero rutrum integer erat amet tincidunt integer, sociosqu netus pretium tincidunt nec porta convallis. ornare ullamcorper quis ac potenti velit scelerisque curae pulvinar arcu, fames nunc tortor fermentum platea hendrerit senectus euismod, ante rhoncus justo quam ornare vitae mi malesuada."),
              ],
            ),
          ),
        ));
  }
}

class ClassTitleText extends StatelessWidget {
  String text;

  ClassTitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style:
            GoogleFonts.quicksand(fontSize: 28.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  String text;

  TitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style:
            GoogleFonts.quicksand(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  String text;

  NormalText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: GoogleFonts.quicksand(fontSize: 16.0),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
