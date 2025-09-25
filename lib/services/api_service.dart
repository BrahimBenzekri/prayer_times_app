import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../core/constants/api_constants.dart';
import '../data/models/prayer_times_model.dart';
import 'package:flutter/foundation.dart'; // Add this for kDebugMode

part 'api_service.g.dart';

// Dio provider for dependency injection
@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: ApiConstants.connectTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  // Add logging interceptor in debflutter packages pub run build_runner watchug mode
  if (kDebugMode) {
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) => log('🌐 API: ${object.toString()}'),
      ),
    );
  }

  return dio;
}

// API service provider
@riverpod
ApiService apiService(Ref ref) {
  return ApiService(ref.read(dioProvider));
}

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  /// Get prayer times by coordinates for today or specific date
  /// [date] format: DD-MM-YYYY or 'today' (default)
  Future<PrayerTimesResponse> getPrayerTimesByCoordinates({
    required double latitude,
    required double longitude,
    String? date,
  }) async {
    try {
      final queryParams = {
        'latitude': latitude,
        'longitude': longitude,
        'method': ApiConstants.calculationMethod,
        'school': ApiConstants.school,
      };

      final response = await _dio.get(
        '${ApiConstants.timings}/${date ?? 'today'}',
        queryParameters: queryParams,
      );

      return PrayerTimesResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Get prayer times by city for today or specific date
  Future<PrayerTimesResponse> getPrayerTimesByCity({
    required String city,
    required String country,
    String? date,
  }) async {
    try {
      final queryParams = {
        'city': city,
        'country': country,
        'method': ApiConstants.calculationMethod,
        'school': ApiConstants.school,
      };

      final response = await _dio.get(
        '${ApiConstants.timingsByCity}/${date ?? 'today'}',
        queryParameters: queryParams,
      );

      return PrayerTimesResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Convert Gregorian date to Hijri
  /// [date] format: DD-MM-YYYY
  Future<Map<String, dynamic>> gregorianToHijri(String date) async {
    try {
      final response = await _dio.get('${ApiConstants.gregorianToHijri}/$date');
      return response.data;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  // Centralized error handling
  String _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout. Please check your internet connection.';

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        switch (statusCode) {
          case 400:
            return 'Invalid request. Please check your location or date format.';
          case 404:
            return 'Prayer times not found for this location.';
          case 429:
            return 'Too many requests. Please wait a moment and try again.';
          case 500:
          case 502:
          case 503:
            return 'Server error. Please try again later.';
          default:
            return 'Failed to fetch prayer times. (Status: $statusCode)';
        }

      case DioExceptionType.cancel:
        return 'Request was cancelled.';

      case DioExceptionType.unknown:
        if (e.error.toString().contains('SocketException')) {
          return 'No internet connection. Please check your network settings.';
        }
        return 'Network error. Please check your connection and try again.';

      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
