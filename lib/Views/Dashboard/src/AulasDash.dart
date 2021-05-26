import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:python_project/services/navigation_services.dart';

import '../../../locator.dart';

class AulasDash extends StatefulWidget {
  final String sharedFileName;
  final Color color;
  final String members;
  final String et;
  final String fileSize;
  final String title;
  final String path;

  AulasDash({
    this.color,
    this.et,
    this.fileSize,
    this.members,
    this.sharedFileName,
    this.title,
    this.path,
  });

  @override
  _AulasDashState createState() => _AulasDashState();
}

class _AulasDashState extends State<AulasDash> {
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
          showDialog(context: context, builder: (_) => AulaDialog(widget.path));
          print(widget.title);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 275),
          margin: EdgeInsets.only(bottom: 10.0, left: 40.0, right: 15.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: hovered
                  ? [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 13.0,
                        spreadRadius: 0.0,
                      ),
                    ]
                  : []),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          height: 28.0,
                          width: 28.0,
                          decoration: BoxDecoration(
                            color: widget.color.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(widget.title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          widget.sharedFileName,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            widget.et,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.0,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AulaDialog extends StatelessWidget {
  final String navigationPath;

  const AulaDialog(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width - 300,
        height: MediaQuery.of(context).size.height - 100,
        child: Center(
          child: Container(
            width: 150,
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                locator<NavigationService>().navigateTo(this.navigationPath);
              },
              child: Text("Ir para Aula 1"),
            ),
          ),
        ),
      ),
    );
  }
}
