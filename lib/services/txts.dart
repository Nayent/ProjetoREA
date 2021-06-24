import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ClassTitleText extends StatelessWidget {
  final String text;

  ClassTitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
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

class SubtitleText extends StatelessWidget {
  final String text;

  SubtitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SelectableText(
        text,
        style:
            GoogleFonts.quicksand(fontSize: 18.0, fontWeight: FontWeight.bold),
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

class ItalicText extends StatelessWidget {
  final String text;

  ItalicText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SelectableText(
        text,
        style: GoogleFonts.quicksand(fontSize: 16.0, fontStyle: FontStyle.italic),
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
        child: SelectableText(
          text,
          style: GoogleFonts.quicksand(fontSize: 16.0),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class HyperText extends StatelessWidget {
  final String text;
  final String link;

  HyperText(this.text, this.link);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        child: Text(
          '       ' + text,
          style: GoogleFonts.quicksand(fontSize: 16.0, color: Colors.blue),
        ),
        onTap: () => launch(link),
      ),
    );
  }
}

class CenterItalicText extends StatelessWidget {
  final String text;

  CenterItalicText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
      child: Center(
        child: SelectableText(
          text,
          style: GoogleFonts.quicksand(fontSize: 16.0, fontStyle: FontStyle.italic),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class HomeText extends StatelessWidget {
  final String text;

  HomeText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SelectableText(
        text,
        style: GoogleFonts.quicksand(fontSize: 24.0),
        textAlign: TextAlign.justify,
      ),
    );
  }
}