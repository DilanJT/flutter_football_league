import 'package:football_premier_league/models/football_club.dart';

import 'match_date.dart';

class LeagueMatch implements Comparable{

  MatchDate _matchDate;
  List<FootballClub> _twoClubs;


  LeagueMatch(){
    _twoClubs = new List(2);
  }


  MatchDate get matchDate => _matchDate;

  set matchDate(MatchDate value) {
    _matchDate = value;
  }



  List<FootballClub> get twoClubs => _twoClubs;

  set twoClubs(List<FootballClub> value) {
    _twoClubs = value;
  }

  @override
  int compareTo(other) {
    LeagueMatch leagueMatch = other;
    if(this._matchDate.year == matchDate.year){
      if(this._matchDate.month == matchDate.month){
        if(this._matchDate.day == matchDate.day){
          if(this._matchDate.hour == matchDate.hour){
            return 0;
          }else if(this._matchDate.hour > matchDate.hour){
            return 1;
          }else {
            return -1;
          }
        }else if(this._matchDate.day > matchDate.day){
          return 1;
        }else {
          return -1;
        }
      }else if(this._matchDate.month > matchDate.month){
        return 1;
      }else {
        return -1;
      }
    }else if(this._matchDate.year > matchDate.year){
      return 1;
    }else{
      return -1;
    }

  }
}