// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:day_8/pages/home.dart';
import 'package:flutter/material.dart';
import '../pages/animation.dart';
import '../pages/responsive.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomePage(),
    AnimationPage(),
    ResponsivePage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF5364F4),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_sharp),
          ),
          BottomNavigationBarItem(
            label: "Animation",
            icon: Icon(Icons.animation),
          ),
          BottomNavigationBarItem(
            label: "Responsive",
            icon: Icon(Icons.add_reaction),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
         setState(() {
           _currentIndex =  index;
         });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
