import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var currenttime = DateFormat("HH:mm").format(DateTime.now());

  saveValue(String s, String currenttime) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('currenttime', currenttime.toString());

    // print("เวลา $currenttime");
  }
  getValue(String s) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var currenttime = prefs.getString('currenttime');

    return currenttime;
  }
}