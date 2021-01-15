import 'package:flutter/material.dart';

class MatchesTable extends StatefulWidget {
  static String id = "matches_table";
  @override
  _MatchesTableState createState() => _MatchesTableState();
}

class _MatchesTableState extends State<MatchesTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
                "all the played matches are displayed"
            ),
          ),
        ),
      ),
    );
  }
}
