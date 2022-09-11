class Urls {
  /// Local
  static const String host = 'http://192.168.137.1:3000';    ///Phone Ale
  //static const String host = 'http://192.168.137.26:8080';

  ///Phone Dry

  ///Auth Services
  static const String authUrl = '$host/auth';

  static String get login => '$authUrl/login';
  static String get logout => '$authUrl/logout';
  static String get signup => '$authUrl/signup';

  ///User services
  static const String userUrl = '$host/user';

  static String get getUser => '$userUrl/getUserInfo';

  ///Swap services
  static const String swap = '$host/user/swap';

  static String get getAllSwaps => '$swap/getAllSwaps';
}
