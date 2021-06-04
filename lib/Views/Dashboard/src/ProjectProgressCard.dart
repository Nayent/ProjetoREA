import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectProgressCard extends StatefulWidget {
  final Color color;
  final String projectName;
  final String icon;
  ProjectProgressCard({
    this.color,
    this.projectName,
    this.icon,
  });
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
          print(widget.projectName);
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
                          '10 Exercícios',
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
                          '30m',
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
