import 'package:football_premier_league/models/football_club.dart';
import 'package:intl/intl.dart';

class MatchDate implements Comparable{
  int _day = 1;
  int _month = 1;
  int _year = 1;
  String _date;

  int _hour = 0;
  int _minutes = 0;
  String _time;

  MatchDate(){

  }

  MatchDate.datetime(int day, int month, int year, int hour, int minutes){
    setDay(day);
    setMonth(month);
    setYear(year);
    setHour(hour);
    setMinutes(minutes);
  }

  void setDay(int day) {
    if(day > 0 && day <= 31){
      this._day = day;
    }
  }

  void setMonth(int month) {
    if(month > 0 && month <= 12){
      this._month = month;
    }
  }

  void setYear(int year) {
    if(year > 0){
      this._year = year;
    }
  }

  void setHour(int hour) {
    if(hour >= 0 && hour <= 23){
      this._hour = hour;
    }
  }

  void setMinutes(int minutes) {
    if(minutes >= 0 && minutes <= 60){
      this._minutes = minutes;
    }
  }

  void setTime() {
    //Formatting the time
    NumberFormat timeFormat = new NumberFormat("00");
    String hOutput = timeFormat.format(this.hour);
    String mOutput = timeFormat.format(this.minutes);
    this._time = hOutput + ":" + mOutput;
  }

  void setDate() {
    //formatting the date easy to understand
    NumberFormat dmFormat = new NumberFormat("00");
    NumberFormat yFormat = new NumberFormat("0000");
    String dOutput = dmFormat.format(this.day);
    String mOutput = dmFormat.format(this.month);
    String yOutput = yFormat.format(this.year);
    this._date = dOutput + "-" + mOutput + "-" + yOutput;
  }

  String get time => _time;

  int get minutes => _minutes;

  int get hour => _hour;

  String get date => _date;

  int get year => _year;

  int get month => _month;

  int get day => _day;

  @override
  int compareTo(other) {
    MatchDate matchDate = other;
    if(this._year == matchDate.year){
      if(this._month == matchDate.month){
        if(this._day == matchDate.day){
          if(this._hour == matchDate.hour){
            return 0;
          }else if(this._hour > matchDate.hour){
            return 1;
          }else {
            return -1;
          }
        }else if(this._day > matchDate.day){
          return 1;
        }else {
          return -1;
        }
      }else if(this._month > matchDate.month){
        return 1;
      }else {
        return -1;
      }
    }else if(this._year > matchDate.year){
      return 1;
    }else{
      return -1;
    }
  }
}
