import 'package:flutter/material.dart';
import 'package:navigation_bar/farm_page.dart';
import 'package:navigation_bar/screens/home_page.dart';
import 'package:navigation_bar/screens/office_page.dart';
import 'package:navigation_bar/screens/school_page.dart';
import 'package:navigation_bar/screens/village_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NavigationBar(),
  ));
}

class NavigationBar extends StatefulWidget {
  NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomePage(),
    OfficePage(),
    SchoolPage(),
    Foodbank(),
    VillagePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Office'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'SCHOOL'),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'food bank'),
          BottomNavigationBarItem(icon: Icon(Icons.villa), label: 'Village'),
          BottomNavigationBarItem(icon: Icon(Icons.villa), label: 'Village'),
        ],
        currentIndex: _currentIndex,
      ),
    );
  }
}
