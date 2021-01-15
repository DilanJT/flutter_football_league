import 'package:flutter/material.dart';
import 'package:football_premier_league/views/league_table.dart';
import 'package:football_premier_league/views/matches_table.dart';

class HomePage extends StatefulWidget {
  static String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              "This is the home page"
            ),
          ),
        ),
      ),
    );
  }
}
