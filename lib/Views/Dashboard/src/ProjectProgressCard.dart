import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/services/txts.dart';

class ProjectProgressCard extends StatefulWidget {
  final Color color;
  final String projectName;
  final String exercicio;
  final String gabarito;
  final String time;
  final String dif;
  var gabs;
  final bool bol;

  ProjectProgressCard(this.color, this.projectName, this.exercicio,
      this.gabarito, this.time, this.dif,
      {this.gabs, this.bol});
  @override
  _ProjectProgressCardState createState() => _ProjectProgressCardState();
}

class _ProjectProgressCardState extends State<ProjectProgressCard> {

  bool hovered = false;
  
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (_) => AulaDialog(
                  widget.exercicio, widget.projectName, widget.gabarito,
                  gabs: widget.gabs, bol: widget.bol));
        },
        child: Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 275),
            height: hovered ? 150.0 : 145.0,
            width: hovered ? 180.0 : 175.0,
            decoration: BoxDecoration(
                color: hovered ? widget.color : Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                  ),
                ]),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: hovered ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 13.0,
                      ),
                      Container(
                        child: Text(
                          widget.projectName,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: hovered ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        height: 13.0,
                        width: 13.0,
                        child: Icon(
                          FeatherIcons.edit,
                          size: 13.0,
                          color: hovered ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        child: Text(
                          widget.dif,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.0,
                            color: hovered ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        height: 13.0,
                        width: 13.0,
                        child: Icon(
                          FeatherIcons.clock,
                          size: 13.0,
                          color: hovered ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        child: Text(
                          widget.time,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.0,
                            color: hovered ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AulaDialog extends StatelessWidget {
  bool _visible = false;

  final String exercicioNumber;
  final String exercicio;
  final String gabarito;
  final gabs;
  final bool bol;

  AulaDialog(this.exercicio, this.exercicioNumber, this.gabarito, {this.gabs, this.bol});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width - 500,
        height: MediaQuery.of(context).size.height - 100,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 30.0, right: 30.0, bottom: 0.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TitleText(exercicioNumber),
              SubtitleText(exercicio),
              Gabarito(
                gabarito: gabarito,
                gabs: gabs,
                bol: bol,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class Gabarito extends StatefulWidget {
  final String gabarito;
  var gabs;
  final bool bol;

  Gabarito({this.gabarito, this.gabs, this.bol});

  @override
  _GabaritoState createState() => _GabaritoState();
}

class _GabaritoState extends State<Gabarito> {
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SwitchListTile(
          title: Text('Gabarito',
              style:
                  GoogleFonts.quicksand(fontSize: 16.0, color: Colors.purple)),
          value: _toggled,
          activeColor: Colors.purple,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _toggled = value;
              if (_toggled == false) {}
            });
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        Opacity(
          opacity: _toggled ? 1.0 : 0.0,
          child: Container(
            width: double.infinity,
            color: Colors.grey[100],
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      widget.gabarito,
                      style: GoogleFonts.quicksand(fontSize: 16.0),
                    ),
                    widget.bol ? widget.gabs : Text(''),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
