// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Odds _$OddsFromJson(Map<String, dynamic> json) {
  return _Odds.fromJson(json);
}

/// @nodoc
mixin _$Odds {
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this Odds to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Odds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OddsCopyWith<Odds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OddsCopyWith<$Res> {
  factory $OddsCopyWith(Odds value, $Res Function(Odds) then) =
      _$OddsCopyWithImpl<$Res, Odds>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$OddsCopyWithImpl<$Res, $Val extends Odds>
    implements $OddsCopyWith<$Res> {
  _$OddsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Odds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OddsImplCopyWith<$Res> implements $OddsCopyWith<$Res> {
  factory _$$OddsImplCopyWith(
          _$OddsImpl value, $Res Function(_$OddsImpl) then) =
      __$$OddsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$OddsImplCopyWithImpl<$Res>
    extends _$OddsCopyWithImpl<$Res, _$OddsImpl>
    implements _$$OddsImplCopyWith<$Res> {
  __$$OddsImplCopyWithImpl(_$OddsImpl _value, $Res Function(_$OddsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Odds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$OddsImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OddsImpl implements _Odds {
  _$OddsImpl({this.msg = ""});

  factory _$OddsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OddsImplFromJson(json);

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'Odds(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OddsImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of Odds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OddsImplCopyWith<_$OddsImpl> get copyWith =>
      __$$OddsImplCopyWithImpl<_$OddsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OddsImplToJson(
      this,
    );
  }
}

abstract class _Odds implements Odds {
  factory _Odds({final String msg}) = _$OddsImpl;

  factory _Odds.fromJson(Map<String, dynamic> json) = _$OddsImpl.fromJson;

  @override
  String get msg;

  /// Create a copy of Odds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OddsImplCopyWith<_$OddsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
