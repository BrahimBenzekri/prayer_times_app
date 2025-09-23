// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_times_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrayerTimesResponse _$PrayerTimesResponseFromJson(Map<String, dynamic> json) =>
    _PrayerTimesResponse(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      data: PrayerTimesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrayerTimesResponseToJson(
  _PrayerTimesResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'status': instance.status,
  'data': instance.data,
};

_PrayerTimesData _$PrayerTimesDataFromJson(Map<String, dynamic> json) =>
    _PrayerTimesData(
      timings: Timings.fromJson(json['timings'] as Map<String, dynamic>),
      date: DateInfo.fromJson(json['date'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrayerTimesDataToJson(_PrayerTimesData instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

_Timings _$TimingsFromJson(Map<String, dynamic> json) => _Timings(
  fajr: json['Fajr'] as String,
  sunrise: json['Sunrise'] as String,
  dhuhr: json['Dhuhr'] as String,
  asr: json['Asr'] as String,
  sunset: json['Sunset'] as String,
  maghrib: json['Maghrib'] as String,
  isha: json['Isha'] as String,
);

Map<String, dynamic> _$TimingsToJson(_Timings instance) => <String, dynamic>{
  'Fajr': instance.fajr,
  'Sunrise': instance.sunrise,
  'Dhuhr': instance.dhuhr,
  'Asr': instance.asr,
  'Sunset': instance.sunset,
  'Maghrib': instance.maghrib,
  'Isha': instance.isha,
};

_DateInfo _$DateInfoFromJson(Map<String, dynamic> json) => _DateInfo(
  readable: json['readable'] as String,
  timestamp: json['timestamp'] as String,
  gregorian: GregorianDate.fromJson(json['gregorian'] as Map<String, dynamic>),
  hijri: HijriDate.fromJson(json['hijri'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DateInfoToJson(_DateInfo instance) => <String, dynamic>{
  'readable': instance.readable,
  'timestamp': instance.timestamp,
  'gregorian': instance.gregorian,
  'hijri': instance.hijri,
};

_GregorianDate _$GregorianDateFromJson(Map<String, dynamic> json) =>
    _GregorianDate(
      date: json['date'] as String,
      day: json['day'] as String,
      month: GregorianMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String,
    );

Map<String, dynamic> _$GregorianDateToJson(_GregorianDate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

_HijriDate _$HijriDateFromJson(Map<String, dynamic> json) => _HijriDate(
  date: json['date'] as String,
  day: json['day'] as String,
  month: HijriMonth.fromJson(json['month'] as Map<String, dynamic>),
  year: json['year'] as String,
);

Map<String, dynamic> _$HijriDateToJson(_HijriDate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

_GregorianMonth _$GregorianMonthFromJson(Map<String, dynamic> json) =>
    _GregorianMonth(
      number: (json['number'] as num).toInt(),
      en: json['en'] as String,
    );

Map<String, dynamic> _$GregorianMonthToJson(_GregorianMonth instance) =>
    <String, dynamic>{'number': instance.number, 'en': instance.en};

_HijriMonth _$HijriMonthFromJson(Map<String, dynamic> json) => _HijriMonth(
  number: (json['number'] as num).toInt(),
  en: json['en'] as String,
  ar: json['ar'] as String,
);

Map<String, dynamic> _$HijriMonthToJson(_HijriMonth instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  timezone: json['timezone'] as String,
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'timezone': instance.timezone,
};
