import 'package:flutter/material.dart';

class ImageCode extends StatelessWidget {
  final image;

  ImageCode(this.image);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          width: 550,
          color: Colors.white,
          child: GestureDetector(
              child: Center(child: Image.asset('assets/' + image)))),
    );
  }
}


class ImageGabs extends StatelessWidget {
  final image;
  final double wid;

  ImageGabs(this.image, this.wid);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          width: wid,
          color: Colors.white,
          child: GestureDetector(
              child: Center(child: Image.asset('assets/' + image)))),
    );
  }
}