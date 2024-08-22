// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standingsResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StandingsResponse _$StandingsResponseFromJson(Map<String, dynamic> json) {
  return _StandingsResponse.fromJson(json);
}

/// @nodoc
mixin _$StandingsResponse {
  List<Standings> get standings => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this StandingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StandingsResponseCopyWith<StandingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsResponseCopyWith<$Res> {
  factory $StandingsResponseCopyWith(
          StandingsResponse value, $Res Function(StandingsResponse) then) =
      _$StandingsResponseCopyWithImpl<$Res, StandingsResponse>;
  @useResult
  $Res call({List<Standings> standings, List<String> errors});
}

/// @nodoc
class _$StandingsResponseCopyWithImpl<$Res, $Val extends StandingsResponse>
    implements $StandingsResponseCopyWith<$Res> {
  _$StandingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standings = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      standings: null == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<Standings>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingsResponseImplCopyWith<$Res>
    implements $StandingsResponseCopyWith<$Res> {
  factory _$$StandingsResponseImplCopyWith(_$StandingsResponseImpl value,
          $Res Function(_$StandingsResponseImpl) then) =
      __$$StandingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Standings> standings, List<String> errors});
}

/// @nodoc
class __$$StandingsResponseImplCopyWithImpl<$Res>
    extends _$StandingsResponseCopyWithImpl<$Res, _$StandingsResponseImpl>
    implements _$$StandingsResponseImplCopyWith<$Res> {
  __$$StandingsResponseImplCopyWithImpl(_$StandingsResponseImpl _value,
      $Res Function(_$StandingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standings = null,
    Object? errors = null,
  }) {
    return _then(_$StandingsResponseImpl(
      standings: null == standings
          ? _value._standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<Standings>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingsResponseImpl implements _StandingsResponse {
  _$StandingsResponseImpl(
      {required final List<Standings> standings,
      final List<String> errors = const []})
      : _standings = standings,
        _errors = errors;

  factory _$StandingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingsResponseImplFromJson(json);

  final List<Standings> _standings;
  @override
  List<Standings> get standings {
    if (_standings is EqualUnmodifiableListView) return _standings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_standings);
  }

  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'StandingsResponse(standings: $standings, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._standings, _standings) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_standings),
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of StandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsResponseImplCopyWith<_$StandingsResponseImpl> get copyWith =>
      __$$StandingsResponseImplCopyWithImpl<_$StandingsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingsResponseImplToJson(
      this,
    );
  }
}

abstract class _StandingsResponse implements StandingsResponse {
  factory _StandingsResponse(
      {required final List<Standings> standings,
      final List<String> errors}) = _$StandingsResponseImpl;

  factory _StandingsResponse.fromJson(Map<String, dynamic> json) =
      _$StandingsResponseImpl.fromJson;

  @override
  List<Standings> get standings;
  @override
  List<String> get errors;

  /// Create a copy of StandingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StandingsResponseImplCopyWith<_$StandingsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
