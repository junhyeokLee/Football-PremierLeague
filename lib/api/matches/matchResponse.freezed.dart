// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matchResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchResponse _$MatchResponseFromJson(Map<String, dynamic> json) {
  return _MatchResponse.fromJson(json);
}

/// @nodoc
mixin _$MatchResponse {
  Aggregates get aggregates => throw _privateConstructorUsedError;
  List<Match> get matches => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this MatchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchResponseCopyWith<MatchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchResponseCopyWith<$Res> {
  factory $MatchResponseCopyWith(
          MatchResponse value, $Res Function(MatchResponse) then) =
      _$MatchResponseCopyWithImpl<$Res, MatchResponse>;
  @useResult
  $Res call({Aggregates aggregates, List<Match> matches, List<String> errors});

  $AggregatesCopyWith<$Res> get aggregates;
}

/// @nodoc
class _$MatchResponseCopyWithImpl<$Res, $Val extends MatchResponse>
    implements $MatchResponseCopyWith<$Res> {
  _$MatchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregates = null,
    Object? matches = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      aggregates: null == aggregates
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as Aggregates,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AggregatesCopyWith<$Res> get aggregates {
    return $AggregatesCopyWith<$Res>(_value.aggregates, (value) {
      return _then(_value.copyWith(aggregates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchResponseImplCopyWith<$Res>
    implements $MatchResponseCopyWith<$Res> {
  factory _$$MatchResponseImplCopyWith(
          _$MatchResponseImpl value, $Res Function(_$MatchResponseImpl) then) =
      __$$MatchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Aggregates aggregates, List<Match> matches, List<String> errors});

  @override
  $AggregatesCopyWith<$Res> get aggregates;
}

/// @nodoc
class __$$MatchResponseImplCopyWithImpl<$Res>
    extends _$MatchResponseCopyWithImpl<$Res, _$MatchResponseImpl>
    implements _$$MatchResponseImplCopyWith<$Res> {
  __$$MatchResponseImplCopyWithImpl(
      _$MatchResponseImpl _value, $Res Function(_$MatchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregates = null,
    Object? matches = null,
    Object? errors = null,
  }) {
    return _then(_$MatchResponseImpl(
      aggregates: null == aggregates
          ? _value.aggregates
          : aggregates // ignore: cast_nullable_to_non_nullable
              as Aggregates,
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchResponseImpl implements _MatchResponse {
  _$MatchResponseImpl(
      {required this.aggregates,
      required final List<Match> matches,
      final List<String> errors = const []})
      : _matches = matches,
        _errors = errors;

  factory _$MatchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchResponseImplFromJson(json);

  @override
  final Aggregates aggregates;
  final List<Match> _matches;
  @override
  List<Match> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
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
    return 'MatchResponse(aggregates: $aggregates, matches: $matches, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchResponseImpl &&
            (identical(other.aggregates, aggregates) ||
                other.aggregates == aggregates) &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aggregates,
      const DeepCollectionEquality().hash(_matches),
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchResponseImplCopyWith<_$MatchResponseImpl> get copyWith =>
      __$$MatchResponseImplCopyWithImpl<_$MatchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchResponseImplToJson(
      this,
    );
  }
}

abstract class _MatchResponse implements MatchResponse {
  factory _MatchResponse(
      {required final Aggregates aggregates,
      required final List<Match> matches,
      final List<String> errors}) = _$MatchResponseImpl;

  factory _MatchResponse.fromJson(Map<String, dynamic> json) =
      _$MatchResponseImpl.fromJson;

  @override
  Aggregates get aggregates;
  @override
  List<Match> get matches;
  @override
  List<String> get errors;

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchResponseImplCopyWith<_$MatchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
