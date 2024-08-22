// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
  String get winner => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  FullTime get fullTime => throw _privateConstructorUsedError;
  HalfTime get halfTime => throw _privateConstructorUsedError;

  /// Serializes this Score to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call(
      {String winner, String duration, FullTime fullTime, HalfTime halfTime});

  $FullTimeCopyWith<$Res> get fullTime;
  $HalfTimeCopyWith<$Res> get halfTime;
}

/// @nodoc
class _$ScoreCopyWithImpl<$Res, $Val extends Score>
    implements $ScoreCopyWith<$Res> {
  _$ScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winner = null,
    Object? duration = null,
    Object? fullTime = null,
    Object? halfTime = null,
  }) {
    return _then(_value.copyWith(
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      fullTime: null == fullTime
          ? _value.fullTime
          : fullTime // ignore: cast_nullable_to_non_nullable
              as FullTime,
      halfTime: null == halfTime
          ? _value.halfTime
          : halfTime // ignore: cast_nullable_to_non_nullable
              as HalfTime,
    ) as $Val);
  }

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FullTimeCopyWith<$Res> get fullTime {
    return $FullTimeCopyWith<$Res>(_value.fullTime, (value) {
      return _then(_value.copyWith(fullTime: value) as $Val);
    });
  }

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HalfTimeCopyWith<$Res> get halfTime {
    return $HalfTimeCopyWith<$Res>(_value.halfTime, (value) {
      return _then(_value.copyWith(halfTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScoreImplCopyWith<$Res> implements $ScoreCopyWith<$Res> {
  factory _$$ScoreImplCopyWith(
          _$ScoreImpl value, $Res Function(_$ScoreImpl) then) =
      __$$ScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String winner, String duration, FullTime fullTime, HalfTime halfTime});

  @override
  $FullTimeCopyWith<$Res> get fullTime;
  @override
  $HalfTimeCopyWith<$Res> get halfTime;
}

/// @nodoc
class __$$ScoreImplCopyWithImpl<$Res>
    extends _$ScoreCopyWithImpl<$Res, _$ScoreImpl>
    implements _$$ScoreImplCopyWith<$Res> {
  __$$ScoreImplCopyWithImpl(
      _$ScoreImpl _value, $Res Function(_$ScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winner = null,
    Object? duration = null,
    Object? fullTime = null,
    Object? halfTime = null,
  }) {
    return _then(_$ScoreImpl(
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      fullTime: null == fullTime
          ? _value.fullTime
          : fullTime // ignore: cast_nullable_to_non_nullable
              as FullTime,
      halfTime: null == halfTime
          ? _value.halfTime
          : halfTime // ignore: cast_nullable_to_non_nullable
              as HalfTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreImpl implements _Score {
  _$ScoreImpl(
      {this.winner = "",
      this.duration = "",
      required this.fullTime,
      required this.halfTime});

  factory _$ScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreImplFromJson(json);

  @override
  @JsonKey()
  final String winner;
  @override
  @JsonKey()
  final String duration;
  @override
  final FullTime fullTime;
  @override
  final HalfTime halfTime;

  @override
  String toString() {
    return 'Score(winner: $winner, duration: $duration, fullTime: $fullTime, halfTime: $halfTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreImpl &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.fullTime, fullTime) ||
                other.fullTime == fullTime) &&
            (identical(other.halfTime, halfTime) ||
                other.halfTime == halfTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, winner, duration, fullTime, halfTime);

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreImplCopyWith<_$ScoreImpl> get copyWith =>
      __$$ScoreImplCopyWithImpl<_$ScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreImplToJson(
      this,
    );
  }
}

abstract class _Score implements Score {
  factory _Score(
      {final String winner,
      final String duration,
      required final FullTime fullTime,
      required final HalfTime halfTime}) = _$ScoreImpl;

  factory _Score.fromJson(Map<String, dynamic> json) = _$ScoreImpl.fromJson;

  @override
  String get winner;
  @override
  String get duration;
  @override
  FullTime get fullTime;
  @override
  HalfTime get halfTime;

  /// Create a copy of Score
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreImplCopyWith<_$ScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FullTime _$FullTimeFromJson(Map<String, dynamic> json) {
  return _FullTime.fromJson(json);
}

/// @nodoc
mixin _$FullTime {
  int get home => throw _privateConstructorUsedError;
  int get away => throw _privateConstructorUsedError;

  /// Serializes this FullTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FullTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FullTimeCopyWith<FullTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullTimeCopyWith<$Res> {
  factory $FullTimeCopyWith(FullTime value, $Res Function(FullTime) then) =
      _$FullTimeCopyWithImpl<$Res, FullTime>;
  @useResult
  $Res call({int home, int away});
}

/// @nodoc
class _$FullTimeCopyWithImpl<$Res, $Val extends FullTime>
    implements $FullTimeCopyWith<$Res> {
  _$FullTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FullTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FullTimeImplCopyWith<$Res>
    implements $FullTimeCopyWith<$Res> {
  factory _$$FullTimeImplCopyWith(
          _$FullTimeImpl value, $Res Function(_$FullTimeImpl) then) =
      __$$FullTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int home, int away});
}

/// @nodoc
class __$$FullTimeImplCopyWithImpl<$Res>
    extends _$FullTimeCopyWithImpl<$Res, _$FullTimeImpl>
    implements _$$FullTimeImplCopyWith<$Res> {
  __$$FullTimeImplCopyWithImpl(
      _$FullTimeImpl _value, $Res Function(_$FullTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FullTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_$FullTimeImpl(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullTimeImpl implements _FullTime {
  _$FullTimeImpl({this.home = 0, this.away = 0});

  factory _$FullTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullTimeImplFromJson(json);

  @override
  @JsonKey()
  final int home;
  @override
  @JsonKey()
  final int away;

  @override
  String toString() {
    return 'FullTime(home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullTimeImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, home, away);

  /// Create a copy of FullTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FullTimeImplCopyWith<_$FullTimeImpl> get copyWith =>
      __$$FullTimeImplCopyWithImpl<_$FullTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullTimeImplToJson(
      this,
    );
  }
}

abstract class _FullTime implements FullTime {
  factory _FullTime({final int home, final int away}) = _$FullTimeImpl;

  factory _FullTime.fromJson(Map<String, dynamic> json) =
      _$FullTimeImpl.fromJson;

  @override
  int get home;
  @override
  int get away;

  /// Create a copy of FullTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FullTimeImplCopyWith<_$FullTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HalfTime _$HalfTimeFromJson(Map<String, dynamic> json) {
  return _HalfTime.fromJson(json);
}

/// @nodoc
mixin _$HalfTime {
  int get home => throw _privateConstructorUsedError;
  int get away => throw _privateConstructorUsedError;

  /// Serializes this HalfTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HalfTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HalfTimeCopyWith<HalfTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HalfTimeCopyWith<$Res> {
  factory $HalfTimeCopyWith(HalfTime value, $Res Function(HalfTime) then) =
      _$HalfTimeCopyWithImpl<$Res, HalfTime>;
  @useResult
  $Res call({int home, int away});
}

/// @nodoc
class _$HalfTimeCopyWithImpl<$Res, $Val extends HalfTime>
    implements $HalfTimeCopyWith<$Res> {
  _$HalfTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HalfTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HalfTimeImplCopyWith<$Res>
    implements $HalfTimeCopyWith<$Res> {
  factory _$$HalfTimeImplCopyWith(
          _$HalfTimeImpl value, $Res Function(_$HalfTimeImpl) then) =
      __$$HalfTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int home, int away});
}

/// @nodoc
class __$$HalfTimeImplCopyWithImpl<$Res>
    extends _$HalfTimeCopyWithImpl<$Res, _$HalfTimeImpl>
    implements _$$HalfTimeImplCopyWith<$Res> {
  __$$HalfTimeImplCopyWithImpl(
      _$HalfTimeImpl _value, $Res Function(_$HalfTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HalfTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_$HalfTimeImpl(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HalfTimeImpl implements _HalfTime {
  _$HalfTimeImpl({this.home = 0, this.away = 0});

  factory _$HalfTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HalfTimeImplFromJson(json);

  @override
  @JsonKey()
  final int home;
  @override
  @JsonKey()
  final int away;

  @override
  String toString() {
    return 'HalfTime(home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HalfTimeImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, home, away);

  /// Create a copy of HalfTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HalfTimeImplCopyWith<_$HalfTimeImpl> get copyWith =>
      __$$HalfTimeImplCopyWithImpl<_$HalfTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HalfTimeImplToJson(
      this,
    );
  }
}

abstract class _HalfTime implements HalfTime {
  factory _HalfTime({final int home, final int away}) = _$HalfTimeImpl;

  factory _HalfTime.fromJson(Map<String, dynamic> json) =
      _$HalfTimeImpl.fromJson;

  @override
  int get home;
  @override
  int get away;

  /// Create a copy of HalfTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HalfTimeImplCopyWith<_$HalfTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
