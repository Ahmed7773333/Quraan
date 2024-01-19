import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static const String _key = 'currentPage';

  static late SharedPreferences _prefs;

  // Initialize SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Set the shared preference value to Index
  static void setIndexValue() {
    _prefs.setInt(_key, 0);
  }

  // Get the shared preference value
  static int? getIndexValue() {
    return _prefs.getInt(_key);
  }

  // Increment the shared preference value by one
  static void changeValue(int index) {
    _prefs.setInt(_key, index);
  }

  // Reset the shared preference value to Index
  static void resetToIndex() {
    _prefs.setInt(_key, 0);
  }
}
