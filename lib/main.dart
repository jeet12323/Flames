import 'dart:math';

import 'package:flammmes/chats.dart';
import 'package:flutter/material.dart';
import 'package:flammmes/stack.dart';

var orientation, size, height, width;
Map<String, String> data = {
  'Likes': 'images/image1.jpg',
  'Tony': 'images/image2.jpg',
  'James': 'images/image3.jpg',
  'Jordan': 'images/image6.jpg',
};

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Favorites'),
    Text('Settings'),
    Text('hia'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Container(
                  height: height / 10,
                  width: double.infinity,
                  // margin:EdgeInsets.symmetric(vertical: 50,horizontal: 100),

                  color: Color(0xfffff6fa),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                           AssetImage('images/firstimage.jpg'),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(width / 3.7, 0, 0, 0)),
                      Text(
                        'Find Flames',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xffff5f8f),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(width / 4, 0, 0, 0)),
                      Icon(
                        Icons.tune_outlined,
                        size: 32,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xfffff6fa),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Color(0xfffff6fa),
                      height: height / 4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          stackk(
                              img: data[data.keys.elementAt(0)]!,
                              text: data.keys.elementAt(0)),
                          stackk(
                              img: data[data.keys.elementAt(1)]!,
                              text: data.keys.elementAt(1)),
                          stackk(
                              img: data[data.keys.elementAt(2)]!,
                              text: data.keys.elementAt(2)),
                          stackk(
                              img: data[data.keys.elementAt(1)]!,
                              text: data.keys.elementAt(1)),
                          // stackk(img: 'images/image2.jpg'),
                          // stackk(img: 'images/image3.jpg'),
                          // stackk(img: 'images/image2.jpg'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            chatting(
                                image: data[data.keys.elementAt(3)]!,
                                name: data.keys.elementAt(3),
                                text1: 'Hii!'),
                            chatting(
                                image: data[data.keys.elementAt(1)]!,
                                name: data.keys.elementAt(1),
                                text1: 'Hii!'),
                            chatting(
                                image: data[data.keys.elementAt(2)]!,
                                name: data.keys.elementAt(2),
                                text1: 'Hii!'),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:height/3,left: width/8,right: width/8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: const[ BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 2,

                  ),],

                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    
                    Icon(
                      Icons.search_outlined,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text('Search',style: TextStyle(fontSize: 20),),
                  ],
                ),
  

                height: height/13,
              ),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                size: 40,
                Icons.cottage_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: 40,
                Icons.travel_explore_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: 40,
                Icons.calendar_month_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: 40,
                Icons.calendar_month_outlined,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
