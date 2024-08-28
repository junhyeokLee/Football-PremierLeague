// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'runningCompetition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RunningCompetition _$RunningCompetitionFromJson(Map<String, dynamic> json) {
  return _RunningCompetition.fromJson(json);
}

/// @nodoc
mixin _$RunningCompetition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get emblem => throw _privateConstructorUsedError;

  /// Serializes this RunningCompetition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RunningCompetition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RunningCompetitionCopyWith<RunningCompetition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunningCompetitionCopyWith<$Res> {
  factory $RunningCompetitionCopyWith(
          RunningCompetition value, $Res Function(RunningCompetition) then) =
      _$RunningCompetitionCopyWithImpl<$Res, RunningCompetition>;
  @useResult
  $Res call({int id, String name, String code, String type, String? emblem});
}

/// @nodoc
class _$RunningCompetitionCopyWithImpl<$Res, $Val extends RunningCompetition>
    implements $RunningCompetitionCopyWith<$Res> {
  _$RunningCompetitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RunningCompetition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? emblem = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      emblem: freezed == emblem
          ? _value.emblem
          : emblem // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RunningCompetitionImplCopyWith<$Res>
    implements $RunningCompetitionCopyWith<$Res> {
  factory _$$RunningCompetitionImplCopyWith(_$RunningCompetitionImpl value,
          $Res Function(_$RunningCompetitionImpl) then) =
      __$$RunningCompetitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code, String type, String? emblem});
}

/// @nodoc
class __$$RunningCompetitionImplCopyWithImpl<$Res>
    extends _$RunningCompetitionCopyWithImpl<$Res, _$RunningCompetitionImpl>
    implements _$$RunningCompetitionImplCopyWith<$Res> {
  __$$RunningCompetitionImplCopyWithImpl(_$RunningCompetitionImpl _value,
      $Res Function(_$RunningCompetitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RunningCompetition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? emblem = freezed,
  }) {
    return _then(_$RunningCompetitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      emblem: freezed == emblem
          ? _value.emblem
          : emblem // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RunningCompetitionImpl implements _RunningCompetition {
  _$RunningCompetitionImpl(
      {required this.id,
      this.name = "",
      this.code = "",
      this.type = "",
      this.emblem});

  factory _$RunningCompetitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RunningCompetitionImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String type;
  @override
  final String? emblem;

  @override
  String toString() {
    return 'RunningCompetition(id: $id, name: $name, code: $code, type: $type, emblem: $emblem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RunningCompetitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.emblem, emblem) || other.emblem == emblem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, type, emblem);

  /// Create a copy of RunningCompetition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RunningCompetitionImplCopyWith<_$RunningCompetitionImpl> get copyWith =>
      __$$RunningCompetitionImplCopyWithImpl<_$RunningCompetitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RunningCompetitionImplToJson(
      this,
    );
  }
}

abstract class _RunningCompetition implements RunningCompetition {
  factory _RunningCompetition(
      {required final int id,
      final String name,
      final String code,
      final String type,
      final String? emblem}) = _$RunningCompetitionImpl;

  factory _RunningCompetition.fromJson(Map<String, dynamic> json) =
      _$RunningCompetitionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get type;
  @override
  String? get emblem;

  /// Create a copy of RunningCompetition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RunningCompetitionImplCopyWith<_$RunningCompetitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
