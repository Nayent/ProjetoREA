import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassTitleText extends StatelessWidget {
  final String text;

  ClassTitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SelectableText(
        text,
        style:
            GoogleFonts.quicksand(fontSize: 28.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;

  TitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0,bottom: 24.0),
      child: SelectableText(
        text,
        style:
            GoogleFonts.quicksand(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;

  NormalText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SelectableText(
        text,
        style: GoogleFonts.quicksand(fontSize: 16.0),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class NegriteText extends StatelessWidget {
  final String text;

  NegriteText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SelectableText(
        text,
        style: GoogleFonts.quicksand(fontSize: 16.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class CenterText extends StatelessWidget {
  final String text;

  CenterText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.quicksand(fontSize: 16.0),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}