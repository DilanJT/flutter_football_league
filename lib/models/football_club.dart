import 'package:football_premier_league/models/sportsclub.dart';

class FootballClub extends SportsClub{
  int _footballClubID;
  int _numMatches;
  int _points;

  int _wins;
  int _losses;
  int _draws;
  int _redCards;
  int _yellowCards;
  int _cleanSheets;
  int _goalsScored;
  int _goalsConceded;

  FootballClub();

  FootballClub.second(String cName, int footballClubID): super.name(cName){
    this._footballClubID = footballClubID;
  }

  FootballClub.third(String cName,
      String location,
      int footballClubID): super.all(cName, location){
    this._footballClubID = footballClubID;
  }

  int get goalsConceded => _goalsConceded;

  set goalsConceded(int value) {
    _goalsConceded = value;
  }

  int get goalsScored => _goalsScored;

  set goalsScored(int value) {
    _goalsScored = value;
  }

  int get cleanSheets => _cleanSheets;

  set cleanSheets(int value) {
    _cleanSheets = value;
  }

  int get yellowCards => _yellowCards;

  set yellowCards(int value) {
    _yellowCards = value;
  }

  int get redCards => _redCards;

  set redCards(int value) {
    _redCards = value;
  }

  int get draws => _draws;

  set draws(int value) {
    _draws = value;
  }

  int get losses => _losses;

  set losses(int value) {
    _losses = value;
  }

  int get wins => _wins;

  set wins(int value) {
    _wins = value;
  }

  int get points => _points;

  set points(int value) {
    _points = value;
  }

  int get numMatches => _numMatches;

  set numMatches(int value) {
    _numMatches = value;
  }

  int get footballClubID => _footballClubID;

  set footballClubID(int value) {
    _footballClubID = value;
  }

  //additions
  void incrementWins() {
    this._wins += 1;
  }

  void incrementLosses() {
    this._losses += 1;
  }

  void incrementDraws(){
    this._losses += 1;
  }

  void addGoalsScored(int goalsScored){
    this._goalsScored = goalsScored;
  }

  void addGoalsConceded(int goalsConceded){
    this._goalsConceded = goalsConceded;
  }

  void addCleanSheets(int cleanSheets){
    this._cleanSheets += cleanSheets;
  }
  void addYellowCards(int yellowCards){
    this._yellowCards += yellowCards;
  }
  void addRedCards(int redCards) {
    this._redCards += redCards;
  }
  void addWins(int wins){
    this._wins += wins;
  }
  void addLosses(int losses){
    this._losses += losses;
  }
  void addDraws(int draws) {
    this._draws += draws;
  }

  @override
  String toString() {
    return 'FootballClub{_numMatches: $_numMatches, _points: $_points, _goalsScored: $_goalsScored}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FootballClub &&
          runtimeType == other.runtimeType &&
          _footballClubID == other._footballClubID;

  @override
  int get hashCode => _footballClubID.hashCode;
}