// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matchesResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchesResponse _$MatchesResponseFromJson(Map<String, dynamic> json) {
  return _MatchesResponse.fromJson(json);
}

/// @nodoc
mixin _$MatchesResponse {
  List<Match> get matches => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this MatchesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchesResponseCopyWith<MatchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesResponseCopyWith<$Res> {
  factory $MatchesResponseCopyWith(
          MatchesResponse value, $Res Function(MatchesResponse) then) =
      _$MatchesResponseCopyWithImpl<$Res, MatchesResponse>;
  @useResult
  $Res call({List<Match> matches, List<String> errors});
}

/// @nodoc
class _$MatchesResponseCopyWithImpl<$Res, $Val extends MatchesResponse>
    implements $MatchesResponseCopyWith<$Res> {
  _$MatchesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$MatchesResponseImplCopyWith<$Res>
    implements $MatchesResponseCopyWith<$Res> {
  factory _$$MatchesResponseImplCopyWith(_$MatchesResponseImpl value,
          $Res Function(_$MatchesResponseImpl) then) =
      __$$MatchesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Match> matches, List<String> errors});
}

/// @nodoc
class __$$MatchesResponseImplCopyWithImpl<$Res>
    extends _$MatchesResponseCopyWithImpl<$Res, _$MatchesResponseImpl>
    implements _$$MatchesResponseImplCopyWith<$Res> {
  __$$MatchesResponseImplCopyWithImpl(
      _$MatchesResponseImpl _value, $Res Function(_$MatchesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? errors = null,
  }) {
    return _then(_$MatchesResponseImpl(
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
class _$MatchesResponseImpl implements _MatchesResponse {
  _$MatchesResponseImpl(
      {required final List<Match> matches,
      final List<String> errors = const []})
      : _matches = matches,
        _errors = errors;

  factory _$MatchesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchesResponseImplFromJson(json);

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
    return 'MatchesResponse(matches: $matches, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesResponseImpl &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_matches),
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of MatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesResponseImplCopyWith<_$MatchesResponseImpl> get copyWith =>
      __$$MatchesResponseImplCopyWithImpl<_$MatchesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchesResponseImplToJson(
      this,
    );
  }
}

abstract class _MatchesResponse implements MatchesResponse {
  factory _MatchesResponse(
      {required final List<Match> matches,
      final List<String> errors}) = _$MatchesResponseImpl;

  factory _MatchesResponse.fromJson(Map<String, dynamic> json) =
      _$MatchesResponseImpl.fromJson;

  @override
  List<Match> get matches;
  @override
  List<String> get errors;

  /// Create a copy of MatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchesResponseImplCopyWith<_$MatchesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
