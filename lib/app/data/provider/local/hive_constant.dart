import 'package:hive/hive.dart';


class HiveConstants {
  static const BOX_SETTING = "settings";

  static String LAST_ID = "lstid";
  static String IS_ONLINE_PLAY = "isonlnpl";
  static String KEEP_LOGIN = "keeploing";
  static String LOGIN = "loggedin";
  static String PLAY_STATUS = "plsts";
  static String USER_ID = "user_id";
  static String AUTH = "auth_key";
  static String SESSION = "session_data";
  static String USER_NAME = "user_name";
  static String USER_PROFILE = "user_profile";
  static String NOTIFICATION_STATUS = "noti_status";

  static void setNotificationStatus(String name) {
    Hive.box(BOX_SETTING).put(NOTIFICATION_STATUS, name);
  }

  static String getNotificationStatus() {
    String? s = Hive.box(BOX_SETTING)
        .get(NOTIFICATION_STATUS, defaultValue: null)
        ?.toString();
    ;
    return (s == null || s == "null") ? "1" : s;
  }

  static void setUserFullName(String name) {
    Hive.box(BOX_SETTING).put(USER_NAME, name);
  }

  static String? getUserFullName() {
    return Hive.box(BOX_SETTING).get(USER_NAME, defaultValue: null)?.toString();
  }

  static void setUserProfile(String link) {
    Hive.box(BOX_SETTING).put(USER_PROFILE, link);
  }

  static String? getUserProfile() {
    return Hive.box(BOX_SETTING)
        .get(USER_PROFILE, defaultValue: null)
        ?.toString();
  }

  static void setUserId(String userId) {
    Hive.box(BOX_SETTING).put(USER_ID, userId);
  }

  static String? getuserId() {
    return Hive.box(BOX_SETTING).get(USER_ID, defaultValue: null)?.toString();
  }

  static void setAuthToken(String userId) {
    Hive.box(BOX_SETTING).put(AUTH, userId);
  }

  static String? getAuthToken() {
    return Hive.box(BOX_SETTING).get(AUTH, defaultValue: null)?.toString();
  }

  static void setLoggedIn(bool isLoggedIn) {
    Hive.box(BOX_SETTING).put(LOGIN, isLoggedIn);
  }

  static bool? getLogin() {
    return Hive.box(BOX_SETTING).get(LOGIN, defaultValue: false) as bool;
  }

  // static void setUserSession(LoginResponse data) {
  //   Hive.box(BOX_SETTING).put(SESSION, data.toJson());
  // }
  //
  // static LoginResponse? getUserSession() {
  //   var v= Hive.box(BOX_SETTING).get(SESSION, defaultValue: null);
  //   if(v!=null) {
  //     return LoginResponse.fromJson(v);
  //   } else {
  //     return null;
  //   }
  // }

  static void cleaSession() {
    Hive.box(BOX_SETTING).clear();
    // Hive.box(BOX_DOWNLOADS).clear();
  }
}
