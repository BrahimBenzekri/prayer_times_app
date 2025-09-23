import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_times_model.freezed.dart';
part 'prayer_times_model.g.dart';

@freezed
abstract class PrayerTimesResponse with _$PrayerTimesResponse {
  const factory PrayerTimesResponse({
    required int code,
    required String status,
    required PrayerTimesData data,
  }) = _PrayerTimesResponse;

  factory PrayerTimesResponse.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimesResponseFromJson(json);
}

@freezed
abstract class PrayerTimesData with _$PrayerTimesData {
  const factory PrayerTimesData({
    required Timings timings,
    required DateInfo date,
    required Meta meta,
  }) = _PrayerTimesData;

  factory PrayerTimesData.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimesDataFromJson(json);
}

@freezed
abstract class Timings with _$Timings {
  const factory Timings({
    @JsonKey(name: 'Fajr') required String fajr,
    @JsonKey(name: 'Sunrise') required String sunrise,
    @JsonKey(name: 'Dhuhr') required String dhuhr,
    @JsonKey(name: 'Asr') required String asr,
    @JsonKey(name: 'Sunset') required String sunset,
    @JsonKey(name: 'Maghrib') required String maghrib,
    @JsonKey(name: 'Isha') required String isha,
  }) = _Timings;

  factory Timings.fromJson(Map<String, dynamic> json) =>
      _$TimingsFromJson(json);
}

@freezed
abstract class DateInfo with _$DateInfo {
  const factory DateInfo({
    required String readable,
    required String timestamp,
    required GregorianDate gregorian,
    required HijriDate hijri,
  }) = _DateInfo;

  factory DateInfo.fromJson(Map<String, dynamic> json) =>
      _$DateInfoFromJson(json);
}

@freezed
abstract class GregorianDate with _$GregorianDate {
  const factory GregorianDate({
    required String date,
    required String day,
    required GregorianMonth month,
    required String year,
  }) = _GregorianDate;

  factory GregorianDate.fromJson(Map<String, dynamic> json) =>
      _$GregorianDateFromJson(json);
}

@freezed
abstract class HijriDate with _$HijriDate {
  const factory HijriDate({
    required String date,
    required String day,
    required HijriMonth month,
    required String year,
  }) = _HijriDate;

  factory HijriDate.fromJson(Map<String, dynamic> json) =>
      _$HijriDateFromJson(json);
}

@freezed
abstract class GregorianMonth with _$GregorianMonth {
  const factory GregorianMonth({required int number, required String en}) =
      _GregorianMonth;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) =>
      _$GregorianMonthFromJson(json);
}

@freezed
abstract class HijriMonth with _$HijriMonth {
  const factory HijriMonth({
    required int number,
    required String en,
    required String ar,
  }) = _HijriMonth;

  factory HijriMonth.fromJson(Map<String, dynamic> json) =>
      _$HijriMonthFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required double latitude,
    required double longitude,
    required String timezone,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
