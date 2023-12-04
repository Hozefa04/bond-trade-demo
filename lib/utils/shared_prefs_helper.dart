import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static late SharedPreferences prefs;

  static Future<void> initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setOnboardingValue(bool value) async {
    await prefs.setBool(PrefKeys.onboardingKey, value);
  }

  static bool getOnboardingValue() {
    return prefs.getBool(PrefKeys.onboardingKey) ?? false;
  }

  static Future<void> setBookmarks(List<String> value) async {
    await prefs.setStringList(PrefKeys.bookmarkKey, value);
  }

  static List<String> getBookmarks() {
    return prefs.getStringList(PrefKeys.bookmarkKey) ?? [];
  }
}

class PrefKeys {
  static String onboardingKey = "ONBOARDING_KEY";
  static String bookmarkKey = "BOOKMARK_KEY";
}
