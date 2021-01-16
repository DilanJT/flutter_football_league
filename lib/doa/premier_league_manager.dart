import 'package:football_premier_league/doa/league_manager.dart';
import 'package:football_premier_league/models/football_club.dart';
import 'package:football_premier_league/models/league_match.dart';
import 'package:football_premier_league/models/match_date.dart';

class PremierLeagueManager implements LeagueManager{

  static final int MAX_CLUBS = 20;
  List<FootballClub> _clubs = new List();
  List<LeagueMatch> _matchesPlayed = new List();
  LeagueMatch _leagueMatch = new LeagueMatch();

  @override
  bool addFootballClub(FootballClub fbc) {
    if(_clubs.length < MAX_CLUBS) {
      if(!checkClubPresence(fbc)){
        _clubs.add(fbc);
        print(fbc.clubName + " got successfully added.");
        return true;
      }else{
        print(fbc.clubName + " has been already added to the premier league.");
        return false;
      }
    }else {
      print("Sorry " + fbc.clubName + " cannot be added!, Premier league clubs"
          "can only have max of 20 clubs");
      return false;
    }
  }

  @override
  void addPlayedMatch(MatchDate md, FootballClub fbc1, FootballClub fbc2) {
    // TODO: implement addPlayedMatch
  }

  @override
  bool deleteFootballClub(FootballClub fbc) {
    // TODO: implement deleteFootballClub


  }

  @override
  void displayFootballClubStats(FootballClub fbc) {
    // TODO: implement displayFootballClubStats
  }

  @override
  void displayPremierLeagueTable() {
    // TODO: implement displayPremierLeagueTable
  }

  //other functions
  bool checkClubPresence(FootballClub fbc){
    //this function is to check the presence of the club
    //usages -> validate the football club
    return _clubs.contains(fbc);
  }

}