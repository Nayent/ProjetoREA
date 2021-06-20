import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AulasDash extends StatefulWidget {
  final Color color;
  final String et;
  final String title;
  final path;

  AulasDash({
    this.color,
    this.et,
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
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 275),
          margin: EdgeInsets.only(bottom: 10.0, left: 40.0, right: 40.0),
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
                            color: widget.color.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text('',
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
                          widget.title,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
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
                              fontSize: 12.0,
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
  final planoAula;

  const AulaDialog(this.planoAula);

  @override
  Widget build(BuildContext context) {

    double width = 1500.0;
    double height = 622.0;

    if(MediaQuery.of(context).size.width - 300 < width){
      width = MediaQuery.of(context).size.width - 300;
    }
    if(MediaQuery.of(context).size.height - 100 < height){
      height = MediaQuery.of(context).size.width - 100;
    }

    return Dialog(
      child: Container(
        width: width,
        height: height,
        child: planoAula,
      ),
    );
  }
}
