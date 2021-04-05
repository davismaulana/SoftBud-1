import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text("Home"),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // ignore: deprecated_member_use
              title: Text("Search"),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text("Profile"),
              backgroundColor: Colors.transparent),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
