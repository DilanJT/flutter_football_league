import 'package:football_premier_league/models/football_club.dart';
import 'package:football_premier_league/models/match_date.dart';

abstract class LeagueManager {
  bool addFootballClub(FootballClub fbc);
  bool deleteFootballClub(FootballClub fbc);
  void displayFootballClubStats(FootballClub fbc);
  void displayPremierLeagueTable();
  void addPlayedMatch(MatchDate md, FootballClub fbc1, FootballClub fbc2);
}