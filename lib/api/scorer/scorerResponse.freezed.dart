// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scorerResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScorerResponse _$ScorerResponseFromJson(Map<String, dynamic> json) {
  return _ScorerResponse.fromJson(json);
}

/// @nodoc
mixin _$ScorerResponse {
  List<Scorer> get scorers => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this ScorerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScorerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScorerResponseCopyWith<ScorerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScorerResponseCopyWith<$Res> {
  factory $ScorerResponseCopyWith(
          ScorerResponse value, $Res Function(ScorerResponse) then) =
      _$ScorerResponseCopyWithImpl<$Res, ScorerResponse>;
  @useResult
  $Res call({List<Scorer> scorers, List<String> errors});
}

/// @nodoc
class _$ScorerResponseCopyWithImpl<$Res, $Val extends ScorerResponse>
    implements $ScorerResponseCopyWith<$Res> {
  _$ScorerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScorerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scorers = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      scorers: null == scorers
          ? _value.scorers
          : scorers // ignore: cast_nullable_to_non_nullable
              as List<Scorer>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScorerResponseImplCopyWith<$Res>
    implements $ScorerResponseCopyWith<$Res> {
  factory _$$ScorerResponseImplCopyWith(_$ScorerResponseImpl value,
          $Res Function(_$ScorerResponseImpl) then) =
      __$$ScorerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Scorer> scorers, List<String> errors});
}

/// @nodoc
class __$$ScorerResponseImplCopyWithImpl<$Res>
    extends _$ScorerResponseCopyWithImpl<$Res, _$ScorerResponseImpl>
    implements _$$ScorerResponseImplCopyWith<$Res> {
  __$$ScorerResponseImplCopyWithImpl(
      _$ScorerResponseImpl _value, $Res Function(_$ScorerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScorerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scorers = null,
    Object? errors = null,
  }) {
    return _then(_$ScorerResponseImpl(
      scorers: null == scorers
          ? _value._scorers
          : scorers // ignore: cast_nullable_to_non_nullable
              as List<Scorer>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScorerResponseImpl implements _ScorerResponse {
  _$ScorerResponseImpl(
      {required final List<Scorer> scorers,
      final List<String> errors = const []})
      : _scorers = scorers,
        _errors = errors;

  factory _$ScorerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScorerResponseImplFromJson(json);

  final List<Scorer> _scorers;
  @override
  List<Scorer> get scorers {
    if (_scorers is EqualUnmodifiableListView) return _scorers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scorers);
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
    return 'ScorerResponse(scorers: $scorers, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScorerResponseImpl &&
            const DeepCollectionEquality().equals(other._scorers, _scorers) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scorers),
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ScorerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScorerResponseImplCopyWith<_$ScorerResponseImpl> get copyWith =>
      __$$ScorerResponseImplCopyWithImpl<_$ScorerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScorerResponseImplToJson(
      this,
    );
  }
}

abstract class _ScorerResponse implements ScorerResponse {
  factory _ScorerResponse(
      {required final List<Scorer> scorers,
      final List<String> errors}) = _$ScorerResponseImpl;

  factory _ScorerResponse.fromJson(Map<String, dynamic> json) =
      _$ScorerResponseImpl.fromJson;

  @override
  List<Scorer> get scorers;
  @override
  List<String> get errors;

  /// Create a copy of ScorerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScorerResponseImplCopyWith<_$ScorerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
