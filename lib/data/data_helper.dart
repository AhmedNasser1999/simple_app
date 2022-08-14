import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static SharedPreferences? pref;

  static init() async {
    pref = await SharedPreferences.getInstance();
  }

  static setData(String data) async {
    await pref!.setString('data', data);
  }

  static getData() {
    return pref!.getString('data');
  }
}
