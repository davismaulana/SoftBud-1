import 'package:ecommerce/views/pages/profileuser.dart';
import 'package:ecommerce/views/pages/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/views/pages/home.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Home(),
    Profile(),
    Search(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              // ignore: deprecated_member_use
              title: Text("HOME"),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              // ignore: deprecated_member_use
              title: Text("SEARCH"),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              // ignore: deprecated_member_use
              title: Text("PROFILE"),
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
