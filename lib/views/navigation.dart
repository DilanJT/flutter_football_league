import 'package:flutter/material.dart';
import 'package:football_premier_league/views/home_page.dart';

import 'league_table.dart';
import 'matches_table.dart';

class Navigation extends StatefulWidget {
  static String id = "navigation";
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    MatchesTable(),
    LeagueTable()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.nature_people),
              title: Text('Matches')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Clubs')
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
