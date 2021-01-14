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

  void setTwoClubs(FootballClub firstClub, FootballClub secClub){
    this.twoClubs[0] = firstClub;
    this.twoClubs[1] = secClub;
  }

  @override
  int compareTo(other) {
    LeagueMatch leagueMatch = other;
    if(this._matchDate.year == leagueMatch.matchDate.year){
      if(this._matchDate.month == leagueMatch.matchDate.month){
        if(this._matchDate.day == leagueMatch.matchDate.day){
          if(this._matchDate.hour == leagueMatch.matchDate.hour){
            return 0;
          }else if(this._matchDate.hour > leagueMatch.matchDate.hour){
            return 1;
          }else {
            return -1;
          }
        }else if(this._matchDate.day > leagueMatch.matchDate.day){
          return 1;
        }else {
          return -1;
        }
      }else if(this._matchDate.month > leagueMatch.matchDate.month){
        return 1;
      }else {
        return -1;
      }
    }else if(this._matchDate.year > leagueMatch.matchDate.year){
      return 1;
    }else{
      return -1;
    }

  }
}