class Urls {
  /// Local
  static const String host = 'http://192.168.137.1:3000';    ///Phone Ale
  //static const String host = 'http://172.20.10.5:3000';

  ///Phone Dry

  ///Auth Services
  static const String authUrl = '$host/auth';

  static String get login => '$authUrl/signin';
  static String get logout => '$authUrl/logout';
  static String get signup => '$authUrl/signup';

  ///User services
  static const String userUrl = '$host/user';

  static String get getUser => '$userUrl/info';

  ///Swap services
  static const String swap = '$host/swap';

  static String get getAllSwaps => '$swap/all';
  static String get getSwapsByCategoryArticle => '$swap/byCategoryArticle';
}
