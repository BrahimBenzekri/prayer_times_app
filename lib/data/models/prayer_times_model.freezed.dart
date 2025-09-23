// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_times_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrayerTimesResponse {

 int get code; String get status; PrayerTimesData get data;
/// Create a copy of PrayerTimesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayerTimesResponseCopyWith<PrayerTimesResponse> get copyWith => _$PrayerTimesResponseCopyWithImpl<PrayerTimesResponse>(this as PrayerTimesResponse, _$identity);

  /// Serializes this PrayerTimesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayerTimesResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,status,data);

@override
String toString() {
  return 'PrayerTimesResponse(code: $code, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $PrayerTimesResponseCopyWith<$Res>  {
  factory $PrayerTimesResponseCopyWith(PrayerTimesResponse value, $Res Function(PrayerTimesResponse) _then) = _$PrayerTimesResponseCopyWithImpl;
@useResult
$Res call({
 int code, String status, PrayerTimesData data
});


$PrayerTimesDataCopyWith<$Res> get data;

}
/// @nodoc
class _$PrayerTimesResponseCopyWithImpl<$Res>
    implements $PrayerTimesResponseCopyWith<$Res> {
  _$PrayerTimesResponseCopyWithImpl(this._self, this._then);

  final PrayerTimesResponse _self;
  final $Res Function(PrayerTimesResponse) _then;

/// Create a copy of PrayerTimesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PrayerTimesData,
  ));
}
/// Create a copy of PrayerTimesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayerTimesDataCopyWith<$Res> get data {
  
  return $PrayerTimesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayerTimesResponse].
extension PrayerTimesResponsePatterns on PrayerTimesResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayerTimesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayerTimesResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayerTimesResponse value)  $default,){
final _that = this;
switch (_that) {
case _PrayerTimesResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayerTimesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PrayerTimesResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int code,  String status,  PrayerTimesData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayerTimesResponse() when $default != null:
return $default(_that.code,_that.status,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int code,  String status,  PrayerTimesData data)  $default,) {final _that = this;
switch (_that) {
case _PrayerTimesResponse():
return $default(_that.code,_that.status,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int code,  String status,  PrayerTimesData data)?  $default,) {final _that = this;
switch (_that) {
case _PrayerTimesResponse() when $default != null:
return $default(_that.code,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrayerTimesResponse implements PrayerTimesResponse {
  const _PrayerTimesResponse({required this.code, required this.status, required this.data});
  factory _PrayerTimesResponse.fromJson(Map<String, dynamic> json) => _$PrayerTimesResponseFromJson(json);

@override final  int code;
@override final  String status;
@override final  PrayerTimesData data;

/// Create a copy of PrayerTimesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayerTimesResponseCopyWith<_PrayerTimesResponse> get copyWith => __$PrayerTimesResponseCopyWithImpl<_PrayerTimesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrayerTimesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayerTimesResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,status,data);

@override
String toString() {
  return 'PrayerTimesResponse(code: $code, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PrayerTimesResponseCopyWith<$Res> implements $PrayerTimesResponseCopyWith<$Res> {
  factory _$PrayerTimesResponseCopyWith(_PrayerTimesResponse value, $Res Function(_PrayerTimesResponse) _then) = __$PrayerTimesResponseCopyWithImpl;
@override @useResult
$Res call({
 int code, String status, PrayerTimesData data
});


@override $PrayerTimesDataCopyWith<$Res> get data;

}
/// @nodoc
class __$PrayerTimesResponseCopyWithImpl<$Res>
    implements _$PrayerTimesResponseCopyWith<$Res> {
  __$PrayerTimesResponseCopyWithImpl(this._self, this._then);

  final _PrayerTimesResponse _self;
  final $Res Function(_PrayerTimesResponse) _then;

/// Create a copy of PrayerTimesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? status = null,Object? data = null,}) {
  return _then(_PrayerTimesResponse(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PrayerTimesData,
  ));
}

/// Create a copy of PrayerTimesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrayerTimesDataCopyWith<$Res> get data {
  
  return $PrayerTimesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PrayerTimesData {

 Timings get timings; DateInfo get date; Meta get meta;
/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayerTimesDataCopyWith<PrayerTimesData> get copyWith => _$PrayerTimesDataCopyWithImpl<PrayerTimesData>(this as PrayerTimesData, _$identity);

  /// Serializes this PrayerTimesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayerTimesData&&(identical(other.timings, timings) || other.timings == timings)&&(identical(other.date, date) || other.date == date)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timings,date,meta);

@override
String toString() {
  return 'PrayerTimesData(timings: $timings, date: $date, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PrayerTimesDataCopyWith<$Res>  {
  factory $PrayerTimesDataCopyWith(PrayerTimesData value, $Res Function(PrayerTimesData) _then) = _$PrayerTimesDataCopyWithImpl;
@useResult
$Res call({
 Timings timings, DateInfo date, Meta meta
});


$TimingsCopyWith<$Res> get timings;$DateInfoCopyWith<$Res> get date;$MetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$PrayerTimesDataCopyWithImpl<$Res>
    implements $PrayerTimesDataCopyWith<$Res> {
  _$PrayerTimesDataCopyWithImpl(this._self, this._then);

  final PrayerTimesData _self;
  final $Res Function(PrayerTimesData) _then;

/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timings = null,Object? date = null,Object? meta = null,}) {
  return _then(_self.copyWith(
timings: null == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as Timings,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateInfo,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,
  ));
}
/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingsCopyWith<$Res> get timings {
  
  return $TimingsCopyWith<$Res>(_self.timings, (value) {
    return _then(_self.copyWith(timings: value));
  });
}/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateInfoCopyWith<$Res> get date {
  
  return $DateInfoCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayerTimesData].
extension PrayerTimesDataPatterns on PrayerTimesData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayerTimesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayerTimesData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayerTimesData value)  $default,){
final _that = this;
switch (_that) {
case _PrayerTimesData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayerTimesData value)?  $default,){
final _that = this;
switch (_that) {
case _PrayerTimesData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Timings timings,  DateInfo date,  Meta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayerTimesData() when $default != null:
return $default(_that.timings,_that.date,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Timings timings,  DateInfo date,  Meta meta)  $default,) {final _that = this;
switch (_that) {
case _PrayerTimesData():
return $default(_that.timings,_that.date,_that.meta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Timings timings,  DateInfo date,  Meta meta)?  $default,) {final _that = this;
switch (_that) {
case _PrayerTimesData() when $default != null:
return $default(_that.timings,_that.date,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrayerTimesData implements PrayerTimesData {
  const _PrayerTimesData({required this.timings, required this.date, required this.meta});
  factory _PrayerTimesData.fromJson(Map<String, dynamic> json) => _$PrayerTimesDataFromJson(json);

@override final  Timings timings;
@override final  DateInfo date;
@override final  Meta meta;

/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayerTimesDataCopyWith<_PrayerTimesData> get copyWith => __$PrayerTimesDataCopyWithImpl<_PrayerTimesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrayerTimesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayerTimesData&&(identical(other.timings, timings) || other.timings == timings)&&(identical(other.date, date) || other.date == date)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timings,date,meta);

@override
String toString() {
  return 'PrayerTimesData(timings: $timings, date: $date, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PrayerTimesDataCopyWith<$Res> implements $PrayerTimesDataCopyWith<$Res> {
  factory _$PrayerTimesDataCopyWith(_PrayerTimesData value, $Res Function(_PrayerTimesData) _then) = __$PrayerTimesDataCopyWithImpl;
@override @useResult
$Res call({
 Timings timings, DateInfo date, Meta meta
});


@override $TimingsCopyWith<$Res> get timings;@override $DateInfoCopyWith<$Res> get date;@override $MetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$PrayerTimesDataCopyWithImpl<$Res>
    implements _$PrayerTimesDataCopyWith<$Res> {
  __$PrayerTimesDataCopyWithImpl(this._self, this._then);

  final _PrayerTimesData _self;
  final $Res Function(_PrayerTimesData) _then;

/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timings = null,Object? date = null,Object? meta = null,}) {
  return _then(_PrayerTimesData(
timings: null == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as Timings,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateInfo,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,
  ));
}

/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingsCopyWith<$Res> get timings {
  
  return $TimingsCopyWith<$Res>(_self.timings, (value) {
    return _then(_self.copyWith(timings: value));
  });
}/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateInfoCopyWith<$Res> get date {
  
  return $DateInfoCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of PrayerTimesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$Timings {

@JsonKey(name: 'Fajr') String get fajr;@JsonKey(name: 'Sunrise') String get sunrise;@JsonKey(name: 'Dhuhr') String get dhuhr;@JsonKey(name: 'Asr') String get asr;@JsonKey(name: 'Sunset') String get sunset;@JsonKey(name: 'Maghrib') String get maghrib;@JsonKey(name: 'Isha') String get isha;
/// Create a copy of Timings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimingsCopyWith<Timings> get copyWith => _$TimingsCopyWithImpl<Timings>(this as Timings, _$identity);

  /// Serializes this Timings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Timings&&(identical(other.fajr, fajr) || other.fajr == fajr)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isha, isha) || other.isha == isha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fajr,sunrise,dhuhr,asr,sunset,maghrib,isha);

@override
String toString() {
  return 'Timings(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, sunset: $sunset, maghrib: $maghrib, isha: $isha)';
}


}

/// @nodoc
abstract mixin class $TimingsCopyWith<$Res>  {
  factory $TimingsCopyWith(Timings value, $Res Function(Timings) _then) = _$TimingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Fajr') String fajr,@JsonKey(name: 'Sunrise') String sunrise,@JsonKey(name: 'Dhuhr') String dhuhr,@JsonKey(name: 'Asr') String asr,@JsonKey(name: 'Sunset') String sunset,@JsonKey(name: 'Maghrib') String maghrib,@JsonKey(name: 'Isha') String isha
});




}
/// @nodoc
class _$TimingsCopyWithImpl<$Res>
    implements $TimingsCopyWith<$Res> {
  _$TimingsCopyWithImpl(this._self, this._then);

  final Timings _self;
  final $Res Function(Timings) _then;

/// Create a copy of Timings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fajr = null,Object? sunrise = null,Object? dhuhr = null,Object? asr = null,Object? sunset = null,Object? maghrib = null,Object? isha = null,}) {
  return _then(_self.copyWith(
fajr: null == fajr ? _self.fajr : fajr // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,dhuhr: null == dhuhr ? _self.dhuhr : dhuhr // ignore: cast_nullable_to_non_nullable
as String,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as String,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Timings].
extension TimingsPatterns on Timings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Timings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Timings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Timings value)  $default,){
final _that = this;
switch (_that) {
case _Timings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Timings value)?  $default,){
final _that = this;
switch (_that) {
case _Timings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Fajr')  String fajr, @JsonKey(name: 'Sunrise')  String sunrise, @JsonKey(name: 'Dhuhr')  String dhuhr, @JsonKey(name: 'Asr')  String asr, @JsonKey(name: 'Sunset')  String sunset, @JsonKey(name: 'Maghrib')  String maghrib, @JsonKey(name: 'Isha')  String isha)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Timings() when $default != null:
return $default(_that.fajr,_that.sunrise,_that.dhuhr,_that.asr,_that.sunset,_that.maghrib,_that.isha);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Fajr')  String fajr, @JsonKey(name: 'Sunrise')  String sunrise, @JsonKey(name: 'Dhuhr')  String dhuhr, @JsonKey(name: 'Asr')  String asr, @JsonKey(name: 'Sunset')  String sunset, @JsonKey(name: 'Maghrib')  String maghrib, @JsonKey(name: 'Isha')  String isha)  $default,) {final _that = this;
switch (_that) {
case _Timings():
return $default(_that.fajr,_that.sunrise,_that.dhuhr,_that.asr,_that.sunset,_that.maghrib,_that.isha);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Fajr')  String fajr, @JsonKey(name: 'Sunrise')  String sunrise, @JsonKey(name: 'Dhuhr')  String dhuhr, @JsonKey(name: 'Asr')  String asr, @JsonKey(name: 'Sunset')  String sunset, @JsonKey(name: 'Maghrib')  String maghrib, @JsonKey(name: 'Isha')  String isha)?  $default,) {final _that = this;
switch (_that) {
case _Timings() when $default != null:
return $default(_that.fajr,_that.sunrise,_that.dhuhr,_that.asr,_that.sunset,_that.maghrib,_that.isha);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Timings implements Timings {
  const _Timings({@JsonKey(name: 'Fajr') required this.fajr, @JsonKey(name: 'Sunrise') required this.sunrise, @JsonKey(name: 'Dhuhr') required this.dhuhr, @JsonKey(name: 'Asr') required this.asr, @JsonKey(name: 'Sunset') required this.sunset, @JsonKey(name: 'Maghrib') required this.maghrib, @JsonKey(name: 'Isha') required this.isha});
  factory _Timings.fromJson(Map<String, dynamic> json) => _$TimingsFromJson(json);

@override@JsonKey(name: 'Fajr') final  String fajr;
@override@JsonKey(name: 'Sunrise') final  String sunrise;
@override@JsonKey(name: 'Dhuhr') final  String dhuhr;
@override@JsonKey(name: 'Asr') final  String asr;
@override@JsonKey(name: 'Sunset') final  String sunset;
@override@JsonKey(name: 'Maghrib') final  String maghrib;
@override@JsonKey(name: 'Isha') final  String isha;

/// Create a copy of Timings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimingsCopyWith<_Timings> get copyWith => __$TimingsCopyWithImpl<_Timings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Timings&&(identical(other.fajr, fajr) || other.fajr == fajr)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr)&&(identical(other.asr, asr) || other.asr == asr)&&(identical(other.sunset, sunset) || other.sunset == sunset)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isha, isha) || other.isha == isha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fajr,sunrise,dhuhr,asr,sunset,maghrib,isha);

@override
String toString() {
  return 'Timings(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, sunset: $sunset, maghrib: $maghrib, isha: $isha)';
}


}

/// @nodoc
abstract mixin class _$TimingsCopyWith<$Res> implements $TimingsCopyWith<$Res> {
  factory _$TimingsCopyWith(_Timings value, $Res Function(_Timings) _then) = __$TimingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Fajr') String fajr,@JsonKey(name: 'Sunrise') String sunrise,@JsonKey(name: 'Dhuhr') String dhuhr,@JsonKey(name: 'Asr') String asr,@JsonKey(name: 'Sunset') String sunset,@JsonKey(name: 'Maghrib') String maghrib,@JsonKey(name: 'Isha') String isha
});




}
/// @nodoc
class __$TimingsCopyWithImpl<$Res>
    implements _$TimingsCopyWith<$Res> {
  __$TimingsCopyWithImpl(this._self, this._then);

  final _Timings _self;
  final $Res Function(_Timings) _then;

/// Create a copy of Timings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fajr = null,Object? sunrise = null,Object? dhuhr = null,Object? asr = null,Object? sunset = null,Object? maghrib = null,Object? isha = null,}) {
  return _then(_Timings(
fajr: null == fajr ? _self.fajr : fajr // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as String,dhuhr: null == dhuhr ? _self.dhuhr : dhuhr // ignore: cast_nullable_to_non_nullable
as String,asr: null == asr ? _self.asr : asr // ignore: cast_nullable_to_non_nullable
as String,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isha: null == isha ? _self.isha : isha // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DateInfo {

 String get readable; String get timestamp; GregorianDate get gregorian; HijriDate get hijri;
/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateInfoCopyWith<DateInfo> get copyWith => _$DateInfoCopyWithImpl<DateInfo>(this as DateInfo, _$identity);

  /// Serializes this DateInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateInfo&&(identical(other.readable, readable) || other.readable == readable)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.gregorian, gregorian) || other.gregorian == gregorian)&&(identical(other.hijri, hijri) || other.hijri == hijri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,readable,timestamp,gregorian,hijri);

@override
String toString() {
  return 'DateInfo(readable: $readable, timestamp: $timestamp, gregorian: $gregorian, hijri: $hijri)';
}


}

/// @nodoc
abstract mixin class $DateInfoCopyWith<$Res>  {
  factory $DateInfoCopyWith(DateInfo value, $Res Function(DateInfo) _then) = _$DateInfoCopyWithImpl;
@useResult
$Res call({
 String readable, String timestamp, GregorianDate gregorian, HijriDate hijri
});


$GregorianDateCopyWith<$Res> get gregorian;$HijriDateCopyWith<$Res> get hijri;

}
/// @nodoc
class _$DateInfoCopyWithImpl<$Res>
    implements $DateInfoCopyWith<$Res> {
  _$DateInfoCopyWithImpl(this._self, this._then);

  final DateInfo _self;
  final $Res Function(DateInfo) _then;

/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? readable = null,Object? timestamp = null,Object? gregorian = null,Object? hijri = null,}) {
  return _then(_self.copyWith(
readable: null == readable ? _self.readable : readable // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,gregorian: null == gregorian ? _self.gregorian : gregorian // ignore: cast_nullable_to_non_nullable
as GregorianDate,hijri: null == hijri ? _self.hijri : hijri // ignore: cast_nullable_to_non_nullable
as HijriDate,
  ));
}
/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GregorianDateCopyWith<$Res> get gregorian {
  
  return $GregorianDateCopyWith<$Res>(_self.gregorian, (value) {
    return _then(_self.copyWith(gregorian: value));
  });
}/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HijriDateCopyWith<$Res> get hijri {
  
  return $HijriDateCopyWith<$Res>(_self.hijri, (value) {
    return _then(_self.copyWith(hijri: value));
  });
}
}


/// Adds pattern-matching-related methods to [DateInfo].
extension DateInfoPatterns on DateInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DateInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DateInfo value)  $default,){
final _that = this;
switch (_that) {
case _DateInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DateInfo value)?  $default,){
final _that = this;
switch (_that) {
case _DateInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String readable,  String timestamp,  GregorianDate gregorian,  HijriDate hijri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DateInfo() when $default != null:
return $default(_that.readable,_that.timestamp,_that.gregorian,_that.hijri);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String readable,  String timestamp,  GregorianDate gregorian,  HijriDate hijri)  $default,) {final _that = this;
switch (_that) {
case _DateInfo():
return $default(_that.readable,_that.timestamp,_that.gregorian,_that.hijri);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String readable,  String timestamp,  GregorianDate gregorian,  HijriDate hijri)?  $default,) {final _that = this;
switch (_that) {
case _DateInfo() when $default != null:
return $default(_that.readable,_that.timestamp,_that.gregorian,_that.hijri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DateInfo implements DateInfo {
  const _DateInfo({required this.readable, required this.timestamp, required this.gregorian, required this.hijri});
  factory _DateInfo.fromJson(Map<String, dynamic> json) => _$DateInfoFromJson(json);

@override final  String readable;
@override final  String timestamp;
@override final  GregorianDate gregorian;
@override final  HijriDate hijri;

/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateInfoCopyWith<_DateInfo> get copyWith => __$DateInfoCopyWithImpl<_DateInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateInfo&&(identical(other.readable, readable) || other.readable == readable)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.gregorian, gregorian) || other.gregorian == gregorian)&&(identical(other.hijri, hijri) || other.hijri == hijri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,readable,timestamp,gregorian,hijri);

@override
String toString() {
  return 'DateInfo(readable: $readable, timestamp: $timestamp, gregorian: $gregorian, hijri: $hijri)';
}


}

/// @nodoc
abstract mixin class _$DateInfoCopyWith<$Res> implements $DateInfoCopyWith<$Res> {
  factory _$DateInfoCopyWith(_DateInfo value, $Res Function(_DateInfo) _then) = __$DateInfoCopyWithImpl;
@override @useResult
$Res call({
 String readable, String timestamp, GregorianDate gregorian, HijriDate hijri
});


@override $GregorianDateCopyWith<$Res> get gregorian;@override $HijriDateCopyWith<$Res> get hijri;

}
/// @nodoc
class __$DateInfoCopyWithImpl<$Res>
    implements _$DateInfoCopyWith<$Res> {
  __$DateInfoCopyWithImpl(this._self, this._then);

  final _DateInfo _self;
  final $Res Function(_DateInfo) _then;

/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? readable = null,Object? timestamp = null,Object? gregorian = null,Object? hijri = null,}) {
  return _then(_DateInfo(
readable: null == readable ? _self.readable : readable // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,gregorian: null == gregorian ? _self.gregorian : gregorian // ignore: cast_nullable_to_non_nullable
as GregorianDate,hijri: null == hijri ? _self.hijri : hijri // ignore: cast_nullable_to_non_nullable
as HijriDate,
  ));
}

/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GregorianDateCopyWith<$Res> get gregorian {
  
  return $GregorianDateCopyWith<$Res>(_self.gregorian, (value) {
    return _then(_self.copyWith(gregorian: value));
  });
}/// Create a copy of DateInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HijriDateCopyWith<$Res> get hijri {
  
  return $HijriDateCopyWith<$Res>(_self.hijri, (value) {
    return _then(_self.copyWith(hijri: value));
  });
}
}


/// @nodoc
mixin _$GregorianDate {

 String get date; String get day; GregorianMonth get month; String get year;
/// Create a copy of GregorianDate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GregorianDateCopyWith<GregorianDate> get copyWith => _$GregorianDateCopyWithImpl<GregorianDate>(this as GregorianDate, _$identity);

  /// Serializes this GregorianDate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GregorianDate&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,day,month,year);

@override
String toString() {
  return 'GregorianDate(date: $date, day: $day, month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class $GregorianDateCopyWith<$Res>  {
  factory $GregorianDateCopyWith(GregorianDate value, $Res Function(GregorianDate) _then) = _$GregorianDateCopyWithImpl;
@useResult
$Res call({
 String date, String day, GregorianMonth month, String year
});


$GregorianMonthCopyWith<$Res> get month;

}
/// @nodoc
class _$GregorianDateCopyWithImpl<$Res>
    implements $GregorianDateCopyWith<$Res> {
  _$GregorianDateCopyWithImpl(this._self, this._then);

  final GregorianDate _self;
  final $Res Function(GregorianDate) _then;

/// Create a copy of GregorianDate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? day = null,Object? month = null,Object? year = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as GregorianMonth,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of GregorianDate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GregorianMonthCopyWith<$Res> get month {
  
  return $GregorianMonthCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}
}


/// Adds pattern-matching-related methods to [GregorianDate].
extension GregorianDatePatterns on GregorianDate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GregorianDate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GregorianDate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GregorianDate value)  $default,){
final _that = this;
switch (_that) {
case _GregorianDate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GregorianDate value)?  $default,){
final _that = this;
switch (_that) {
case _GregorianDate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  String day,  GregorianMonth month,  String year)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GregorianDate() when $default != null:
return $default(_that.date,_that.day,_that.month,_that.year);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  String day,  GregorianMonth month,  String year)  $default,) {final _that = this;
switch (_that) {
case _GregorianDate():
return $default(_that.date,_that.day,_that.month,_that.year);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  String day,  GregorianMonth month,  String year)?  $default,) {final _that = this;
switch (_that) {
case _GregorianDate() when $default != null:
return $default(_that.date,_that.day,_that.month,_that.year);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GregorianDate implements GregorianDate {
  const _GregorianDate({required this.date, required this.day, required this.month, required this.year});
  factory _GregorianDate.fromJson(Map<String, dynamic> json) => _$GregorianDateFromJson(json);

@override final  String date;
@override final  String day;
@override final  GregorianMonth month;
@override final  String year;

/// Create a copy of GregorianDate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GregorianDateCopyWith<_GregorianDate> get copyWith => __$GregorianDateCopyWithImpl<_GregorianDate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GregorianDateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GregorianDate&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,day,month,year);

@override
String toString() {
  return 'GregorianDate(date: $date, day: $day, month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class _$GregorianDateCopyWith<$Res> implements $GregorianDateCopyWith<$Res> {
  factory _$GregorianDateCopyWith(_GregorianDate value, $Res Function(_GregorianDate) _then) = __$GregorianDateCopyWithImpl;
@override @useResult
$Res call({
 String date, String day, GregorianMonth month, String year
});


@override $GregorianMonthCopyWith<$Res> get month;

}
/// @nodoc
class __$GregorianDateCopyWithImpl<$Res>
    implements _$GregorianDateCopyWith<$Res> {
  __$GregorianDateCopyWithImpl(this._self, this._then);

  final _GregorianDate _self;
  final $Res Function(_GregorianDate) _then;

/// Create a copy of GregorianDate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? day = null,Object? month = null,Object? year = null,}) {
  return _then(_GregorianDate(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as GregorianMonth,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of GregorianDate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GregorianMonthCopyWith<$Res> get month {
  
  return $GregorianMonthCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}
}


/// @nodoc
mixin _$HijriDate {

 String get date; String get day; HijriMonth get month; String get year;
/// Create a copy of HijriDate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HijriDateCopyWith<HijriDate> get copyWith => _$HijriDateCopyWithImpl<HijriDate>(this as HijriDate, _$identity);

  /// Serializes this HijriDate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HijriDate&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,day,month,year);

@override
String toString() {
  return 'HijriDate(date: $date, day: $day, month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class $HijriDateCopyWith<$Res>  {
  factory $HijriDateCopyWith(HijriDate value, $Res Function(HijriDate) _then) = _$HijriDateCopyWithImpl;
@useResult
$Res call({
 String date, String day, HijriMonth month, String year
});


$HijriMonthCopyWith<$Res> get month;

}
/// @nodoc
class _$HijriDateCopyWithImpl<$Res>
    implements $HijriDateCopyWith<$Res> {
  _$HijriDateCopyWithImpl(this._self, this._then);

  final HijriDate _self;
  final $Res Function(HijriDate) _then;

/// Create a copy of HijriDate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? day = null,Object? month = null,Object? year = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as HijriMonth,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of HijriDate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HijriMonthCopyWith<$Res> get month {
  
  return $HijriMonthCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}
}


/// Adds pattern-matching-related methods to [HijriDate].
extension HijriDatePatterns on HijriDate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HijriDate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HijriDate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HijriDate value)  $default,){
final _that = this;
switch (_that) {
case _HijriDate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HijriDate value)?  $default,){
final _that = this;
switch (_that) {
case _HijriDate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  String day,  HijriMonth month,  String year)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HijriDate() when $default != null:
return $default(_that.date,_that.day,_that.month,_that.year);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  String day,  HijriMonth month,  String year)  $default,) {final _that = this;
switch (_that) {
case _HijriDate():
return $default(_that.date,_that.day,_that.month,_that.year);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  String day,  HijriMonth month,  String year)?  $default,) {final _that = this;
switch (_that) {
case _HijriDate() when $default != null:
return $default(_that.date,_that.day,_that.month,_that.year);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HijriDate implements HijriDate {
  const _HijriDate({required this.date, required this.day, required this.month, required this.year});
  factory _HijriDate.fromJson(Map<String, dynamic> json) => _$HijriDateFromJson(json);

@override final  String date;
@override final  String day;
@override final  HijriMonth month;
@override final  String year;

/// Create a copy of HijriDate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HijriDateCopyWith<_HijriDate> get copyWith => __$HijriDateCopyWithImpl<_HijriDate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HijriDateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HijriDate&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,day,month,year);

@override
String toString() {
  return 'HijriDate(date: $date, day: $day, month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class _$HijriDateCopyWith<$Res> implements $HijriDateCopyWith<$Res> {
  factory _$HijriDateCopyWith(_HijriDate value, $Res Function(_HijriDate) _then) = __$HijriDateCopyWithImpl;
@override @useResult
$Res call({
 String date, String day, HijriMonth month, String year
});


@override $HijriMonthCopyWith<$Res> get month;

}
/// @nodoc
class __$HijriDateCopyWithImpl<$Res>
    implements _$HijriDateCopyWith<$Res> {
  __$HijriDateCopyWithImpl(this._self, this._then);

  final _HijriDate _self;
  final $Res Function(_HijriDate) _then;

/// Create a copy of HijriDate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? day = null,Object? month = null,Object? year = null,}) {
  return _then(_HijriDate(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as HijriMonth,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of HijriDate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HijriMonthCopyWith<$Res> get month {
  
  return $HijriMonthCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}
}


/// @nodoc
mixin _$GregorianMonth {

 int get number; String get en;
/// Create a copy of GregorianMonth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GregorianMonthCopyWith<GregorianMonth> get copyWith => _$GregorianMonthCopyWithImpl<GregorianMonth>(this as GregorianMonth, _$identity);

  /// Serializes this GregorianMonth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GregorianMonth&&(identical(other.number, number) || other.number == number)&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,en);

@override
String toString() {
  return 'GregorianMonth(number: $number, en: $en)';
}


}

/// @nodoc
abstract mixin class $GregorianMonthCopyWith<$Res>  {
  factory $GregorianMonthCopyWith(GregorianMonth value, $Res Function(GregorianMonth) _then) = _$GregorianMonthCopyWithImpl;
@useResult
$Res call({
 int number, String en
});




}
/// @nodoc
class _$GregorianMonthCopyWithImpl<$Res>
    implements $GregorianMonthCopyWith<$Res> {
  _$GregorianMonthCopyWithImpl(this._self, this._then);

  final GregorianMonth _self;
  final $Res Function(GregorianMonth) _then;

/// Create a copy of GregorianMonth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? en = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GregorianMonth].
extension GregorianMonthPatterns on GregorianMonth {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GregorianMonth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GregorianMonth() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GregorianMonth value)  $default,){
final _that = this;
switch (_that) {
case _GregorianMonth():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GregorianMonth value)?  $default,){
final _that = this;
switch (_that) {
case _GregorianMonth() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  String en)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GregorianMonth() when $default != null:
return $default(_that.number,_that.en);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  String en)  $default,) {final _that = this;
switch (_that) {
case _GregorianMonth():
return $default(_that.number,_that.en);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  String en)?  $default,) {final _that = this;
switch (_that) {
case _GregorianMonth() when $default != null:
return $default(_that.number,_that.en);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GregorianMonth implements GregorianMonth {
  const _GregorianMonth({required this.number, required this.en});
  factory _GregorianMonth.fromJson(Map<String, dynamic> json) => _$GregorianMonthFromJson(json);

@override final  int number;
@override final  String en;

/// Create a copy of GregorianMonth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GregorianMonthCopyWith<_GregorianMonth> get copyWith => __$GregorianMonthCopyWithImpl<_GregorianMonth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GregorianMonthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GregorianMonth&&(identical(other.number, number) || other.number == number)&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,en);

@override
String toString() {
  return 'GregorianMonth(number: $number, en: $en)';
}


}

/// @nodoc
abstract mixin class _$GregorianMonthCopyWith<$Res> implements $GregorianMonthCopyWith<$Res> {
  factory _$GregorianMonthCopyWith(_GregorianMonth value, $Res Function(_GregorianMonth) _then) = __$GregorianMonthCopyWithImpl;
@override @useResult
$Res call({
 int number, String en
});




}
/// @nodoc
class __$GregorianMonthCopyWithImpl<$Res>
    implements _$GregorianMonthCopyWith<$Res> {
  __$GregorianMonthCopyWithImpl(this._self, this._then);

  final _GregorianMonth _self;
  final $Res Function(_GregorianMonth) _then;

/// Create a copy of GregorianMonth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? en = null,}) {
  return _then(_GregorianMonth(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HijriMonth {

 int get number; String get en; String get ar;
/// Create a copy of HijriMonth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HijriMonthCopyWith<HijriMonth> get copyWith => _$HijriMonthCopyWithImpl<HijriMonth>(this as HijriMonth, _$identity);

  /// Serializes this HijriMonth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HijriMonth&&(identical(other.number, number) || other.number == number)&&(identical(other.en, en) || other.en == en)&&(identical(other.ar, ar) || other.ar == ar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,en,ar);

@override
String toString() {
  return 'HijriMonth(number: $number, en: $en, ar: $ar)';
}


}

/// @nodoc
abstract mixin class $HijriMonthCopyWith<$Res>  {
  factory $HijriMonthCopyWith(HijriMonth value, $Res Function(HijriMonth) _then) = _$HijriMonthCopyWithImpl;
@useResult
$Res call({
 int number, String en, String ar
});




}
/// @nodoc
class _$HijriMonthCopyWithImpl<$Res>
    implements $HijriMonthCopyWith<$Res> {
  _$HijriMonthCopyWithImpl(this._self, this._then);

  final HijriMonth _self;
  final $Res Function(HijriMonth) _then;

/// Create a copy of HijriMonth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? en = null,Object? ar = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,ar: null == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HijriMonth].
extension HijriMonthPatterns on HijriMonth {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HijriMonth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HijriMonth() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HijriMonth value)  $default,){
final _that = this;
switch (_that) {
case _HijriMonth():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HijriMonth value)?  $default,){
final _that = this;
switch (_that) {
case _HijriMonth() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  String en,  String ar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HijriMonth() when $default != null:
return $default(_that.number,_that.en,_that.ar);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  String en,  String ar)  $default,) {final _that = this;
switch (_that) {
case _HijriMonth():
return $default(_that.number,_that.en,_that.ar);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  String en,  String ar)?  $default,) {final _that = this;
switch (_that) {
case _HijriMonth() when $default != null:
return $default(_that.number,_that.en,_that.ar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HijriMonth implements HijriMonth {
  const _HijriMonth({required this.number, required this.en, required this.ar});
  factory _HijriMonth.fromJson(Map<String, dynamic> json) => _$HijriMonthFromJson(json);

@override final  int number;
@override final  String en;
@override final  String ar;

/// Create a copy of HijriMonth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HijriMonthCopyWith<_HijriMonth> get copyWith => __$HijriMonthCopyWithImpl<_HijriMonth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HijriMonthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HijriMonth&&(identical(other.number, number) || other.number == number)&&(identical(other.en, en) || other.en == en)&&(identical(other.ar, ar) || other.ar == ar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,en,ar);

@override
String toString() {
  return 'HijriMonth(number: $number, en: $en, ar: $ar)';
}


}

/// @nodoc
abstract mixin class _$HijriMonthCopyWith<$Res> implements $HijriMonthCopyWith<$Res> {
  factory _$HijriMonthCopyWith(_HijriMonth value, $Res Function(_HijriMonth) _then) = __$HijriMonthCopyWithImpl;
@override @useResult
$Res call({
 int number, String en, String ar
});




}
/// @nodoc
class __$HijriMonthCopyWithImpl<$Res>
    implements _$HijriMonthCopyWith<$Res> {
  __$HijriMonthCopyWithImpl(this._self, this._then);

  final _HijriMonth _self;
  final $Res Function(_HijriMonth) _then;

/// Create a copy of HijriMonth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? en = null,Object? ar = null,}) {
  return _then(_HijriMonth(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,ar: null == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Meta {

 double get latitude; double get longitude; String get timezone;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,timezone);

@override
String toString() {
  return 'Meta(latitude: $latitude, longitude: $longitude, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, String timezone
});




}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? timezone = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Meta].
extension MetaPatterns on Meta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meta value)  $default,){
final _that = this;
switch (_that) {
case _Meta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meta value)?  $default,){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String timezone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.latitude,_that.longitude,_that.timezone);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String timezone)  $default,) {final _that = this;
switch (_that) {
case _Meta():
return $default(_that.latitude,_that.longitude,_that.timezone);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  String timezone)?  $default,) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.latitude,_that.longitude,_that.timezone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meta implements Meta {
  const _Meta({required this.latitude, required this.longitude, required this.timezone});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  String timezone;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaCopyWith<_Meta> get copyWith => __$MetaCopyWithImpl<_Meta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,timezone);

@override
String toString() {
  return 'Meta(latitude: $latitude, longitude: $longitude, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, String timezone
});




}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? timezone = null,}) {
  return _then(_Meta(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
