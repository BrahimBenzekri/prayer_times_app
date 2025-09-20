class ApiConstants {
  // Base URL
  static const String baseUrl = 'https://api.aladhan.com/v1';

  // Endpoints
  static const String timings = '/timings';
  static const String timingsByCity = '/timingsByCity';
  static const String gregorianToHijri = '/gToH';

  // Fixed calculation method - ISNA (good global default)
  static const int calculationMethod = 3; // Muslim World League

  // Fixed school - Shafi (majority of Muslims)
  static const int school = 0; // or 1 for hanafi

  // Timeout settings
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
}
