// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
  name: json['name'] as String,
  cities: (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'name': instance.name,
  'cities': instance.cities,
};

_City _$CityFromJson(Map<String, dynamic> json) =>
    _City(name: json['name'] as String, country: json['country'] as String);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'name': instance.name,
  'country': instance.country,
};
