import 'package:flutter/material.dart';

class LeagueTable extends StatefulWidget {
  static String id = "league_table";
  @override
  _LeagueTableState createState() => _LeagueTableState();
}

class _LeagueTableState extends State<LeagueTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
                "This is the club standing table"
            ),
          ),
        ),
      ),
    );;
  }
}
