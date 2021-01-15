import 'package:flutter/material.dart';
import 'package:football_premier_league/views/add_footballclub.dart';
import 'package:football_premier_league/views/footballclub_info.dart';
import 'package:football_premier_league/views/home_page.dart';
import 'package:football_premier_league/views/intro_page.dart';
import 'package:football_premier_league/views/league_table.dart';
import 'package:football_premier_league/views/matches_table.dart';
import 'package:football_premier_league/views/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football League Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: IntroPage.id,
      routes: {
        IntroPage.id: (context) => IntroPage(),
        Navigation.id: (context) => Navigation(),
        HomePage.id: (context) => HomePage(),
        AddFootballClub.id: (context) => AddFootballClub(),
        FootballClubInfo.id: (context) => FootballClubInfo(),
        LeagueTable.id: (context) => LeagueTable(),
        MatchesTable.id: (context) => MatchesTable()
      },
    );
  }
}

