class SportsClub {
  String _clubName;
  String _location;

  SportsClub() {
    this._clubName = "";
    this._location = "";
  }

  SportsClub.name(String cName){
    this._clubName = cName;
  }

  SportsClub.all(String cName, String location) {
    this._clubName = cName;
    this._location = location;
  }

  String get location => _location;

  set location(String value) {
    _location = value;
  }

  String get clubName => _clubName;

  set clubName(String value) {
    _clubName = value;
  }
}