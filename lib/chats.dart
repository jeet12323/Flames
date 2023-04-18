import 'package:flutter/material.dart';
import 'package:flammmes/stack.dart';
import 'package:flammmes/main.dart';

class chatting extends StatefulWidget {
  final String image;
  final String name;
  final String text1;

  chatting({required this.image, required this.name,required this.text1});

  @override
  State<chatting> createState() => _chattingState();
}

class _chattingState extends State<chatting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height/8,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: width/30)),
          CircleAvatar(
            radius: 30,
            backgroundImage:
            AssetImage(widget.image),
          ),
          Padding(padding: EdgeInsets.fromLTRB(width / 18.0, 0, 0, 0)),
          SizedBox(
            width: 100,
            child: Row(
              children: [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top:height/33)),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xff5d5d5d),
                    ),
                  ),
                  Text(
                    widget.text1,
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff505050),
                    ),
                  ),
                ],
              ),
                Padding(
                  padding: EdgeInsets.only(bottom: height/36,left: width/50),
                  child: Icon(

                    Icons.verified,
                    size: 20,
                    color: Colors.blue,

                  ),
                ),
    ]
            ),
          ),
          // Padding(padding: EdgeInsets.fromLTRB(width / 4, 0, 0, 0)),

          Padding(padding: EdgeInsets.fromLTRB(width / 2.7, 0, 0, 0)),
          Padding(
            padding: EdgeInsets.only(bottom: height/40),
            child: Text('13:10'),
          ),
        ],
      ),
    );
  }
}
