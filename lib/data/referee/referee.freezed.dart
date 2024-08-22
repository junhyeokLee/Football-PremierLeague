// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Referee _$RefereeFromJson(Map<String, dynamic> json) {
  return _Referee.fromJson(json);
}

/// @nodoc
mixin _$Referee {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;

  /// Serializes this Referee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Referee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefereeCopyWith<Referee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefereeCopyWith<$Res> {
  factory $RefereeCopyWith(Referee value, $Res Function(Referee) then) =
      _$RefereeCopyWithImpl<$Res, Referee>;
  @useResult
  $Res call({int id, String name, String type, String nationality});
}

/// @nodoc
class _$RefereeCopyWithImpl<$Res, $Val extends Referee>
    implements $RefereeCopyWith<$Res> {
  _$RefereeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Referee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? nationality = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefereeImplCopyWith<$Res> implements $RefereeCopyWith<$Res> {
  factory _$$RefereeImplCopyWith(
          _$RefereeImpl value, $Res Function(_$RefereeImpl) then) =
      __$$RefereeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String type, String nationality});
}

/// @nodoc
class __$$RefereeImplCopyWithImpl<$Res>
    extends _$RefereeCopyWithImpl<$Res, _$RefereeImpl>
    implements _$$RefereeImplCopyWith<$Res> {
  __$$RefereeImplCopyWithImpl(
      _$RefereeImpl _value, $Res Function(_$RefereeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Referee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? nationality = null,
  }) {
    return _then(_$RefereeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefereeImpl implements _Referee {
  _$RefereeImpl(
      {required this.id,
      this.name = "",
      this.type = "",
      this.nationality = ""});

  factory _$RefereeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefereeImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String nationality;

  @override
  String toString() {
    return 'Referee(id: $id, name: $name, type: $type, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefereeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, nationality);

  /// Create a copy of Referee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefereeImplCopyWith<_$RefereeImpl> get copyWith =>
      __$$RefereeImplCopyWithImpl<_$RefereeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefereeImplToJson(
      this,
    );
  }
}

abstract class _Referee implements Referee {
  factory _Referee(
      {required final int id,
      final String name,
      final String type,
      final String nationality}) = _$RefereeImpl;

  factory _Referee.fromJson(Map<String, dynamic> json) = _$RefereeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get nationality;

  /// Create a copy of Referee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefereeImplCopyWith<_$RefereeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
