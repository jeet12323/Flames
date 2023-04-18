import 'package:flutter/material.dart';
import 'package:flammmes/main.dart';

class stackk extends StatefulWidget {
  final String img;
  final String text;
  stackk({required this.img, required this.text});

  @override
  State<stackk> createState() => _stackkState();
}

class _stackkState extends State<stackk> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            scale: 1.6,
            image: AssetImage(
              widget.img,
            ),
          ),
          color: Color(0xfffff6fa),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: height / 5,
        width: width / 3.5,
      ),
      Padding(
        padding: EdgeInsets.only(top: height / 6.5, left: width / 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(child: Text(widget.text)),
          height: height / 35,
          width: width / 5.0,
        ),
      )
    ]);
  }
}
