import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_models.freezed.dart';
part 'location_models.g.dart';

@freezed
abstract class Country with _$Country {
  const factory Country({required String name, required List<String> cities}) =
      _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class City with _$City {
  const factory City({required String name, required String country}) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
