// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playerResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerResponse _$PlayerResponseFromJson(Map<String, dynamic> json) {
  return _PlayerResponse.fromJson(json);
}

/// @nodoc
mixin _$PlayerResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  String get section => throw _privateConstructorUsedError;
  dynamic get position => throw _privateConstructorUsedError;
  dynamic get shirtNumber => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;
  CurrentTeam get currentTeam => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this PlayerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerResponseCopyWith<PlayerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerResponseCopyWith<$Res> {
  factory $PlayerResponseCopyWith(
          PlayerResponse value, $Res Function(PlayerResponse) then) =
      _$PlayerResponseCopyWithImpl<$Res, PlayerResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      String firstName,
      String lastName,
      String dateOfBirth,
      String nationality,
      String section,
      dynamic position,
      dynamic shirtNumber,
      String lastUpdated,
      CurrentTeam currentTeam,
      List<String> errors});

  $CurrentTeamCopyWith<$Res> get currentTeam;
}

/// @nodoc
class _$PlayerResponseCopyWithImpl<$Res, $Val extends PlayerResponse>
    implements $PlayerResponseCopyWith<$Res> {
  _$PlayerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? dateOfBirth = null,
    Object? nationality = null,
    Object? section = null,
    Object? position = freezed,
    Object? shirtNumber = freezed,
    Object? lastUpdated = null,
    Object? currentTeam = null,
    Object? errors = null,
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shirtNumber: freezed == shirtNumber
          ? _value.shirtNumber
          : shirtNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      currentTeam: null == currentTeam
          ? _value.currentTeam
          : currentTeam // ignore: cast_nullable_to_non_nullable
              as CurrentTeam,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of PlayerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentTeamCopyWith<$Res> get currentTeam {
    return $CurrentTeamCopyWith<$Res>(_value.currentTeam, (value) {
      return _then(_value.copyWith(currentTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerResponseImplCopyWith<$Res>
    implements $PlayerResponseCopyWith<$Res> {
  factory _$$PlayerResponseImplCopyWith(_$PlayerResponseImpl value,
          $Res Function(_$PlayerResponseImpl) then) =
      __$$PlayerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String firstName,
      String lastName,
      String dateOfBirth,
      String nationality,
      String section,
      dynamic position,
      dynamic shirtNumber,
      String lastUpdated,
      CurrentTeam currentTeam,
      List<String> errors});

  @override
  $CurrentTeamCopyWith<$Res> get currentTeam;
}

/// @nodoc
class __$$PlayerResponseImplCopyWithImpl<$Res>
    extends _$PlayerResponseCopyWithImpl<$Res, _$PlayerResponseImpl>
    implements _$$PlayerResponseImplCopyWith<$Res> {
  __$$PlayerResponseImplCopyWithImpl(
      _$PlayerResponseImpl _value, $Res Function(_$PlayerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? dateOfBirth = null,
    Object? nationality = null,
    Object? section = null,
    Object? position = freezed,
    Object? shirtNumber = freezed,
    Object? lastUpdated = null,
    Object? currentTeam = null,
    Object? errors = null,
  }) {
    return _then(_$PlayerResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position ? _value.position! : position,
      shirtNumber: freezed == shirtNumber ? _value.shirtNumber! : shirtNumber,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      currentTeam: null == currentTeam
          ? _value.currentTeam
          : currentTeam // ignore: cast_nullable_to_non_nullable
              as CurrentTeam,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerResponseImpl implements _PlayerResponse {
  _$PlayerResponseImpl(
      {required this.id,
      this.name = "",
      this.firstName = "",
      this.lastName = "",
      this.dateOfBirth = "",
      this.nationality = "",
      this.section = "",
      this.position = "",
      this.shirtNumber = 0,
      required this.lastUpdated,
      required this.currentTeam,
      final List<String> errors = const []})
      : _errors = errors;

  factory _$PlayerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String dateOfBirth;
  @override
  @JsonKey()
  final String nationality;
  @override
  @JsonKey()
  final String section;
  @override
  @JsonKey()
  final dynamic position;
  @override
  @JsonKey()
  final dynamic shirtNumber;
  @override
  final String lastUpdated;
  @override
  final CurrentTeam currentTeam;
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
    return 'PlayerResponse(id: $id, name: $name, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, nationality: $nationality, section: $section, position: $position, shirtNumber: $shirtNumber, lastUpdated: $lastUpdated, currentTeam: $currentTeam, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.section, section) || other.section == section) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other.shirtNumber, shirtNumber) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.currentTeam, currentTeam) ||
                other.currentTeam == currentTeam) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      firstName,
      lastName,
      dateOfBirth,
      nationality,
      section,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(shirtNumber),
      lastUpdated,
      currentTeam,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of PlayerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerResponseImplCopyWith<_$PlayerResponseImpl> get copyWith =>
      __$$PlayerResponseImplCopyWithImpl<_$PlayerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerResponseImplToJson(
      this,
    );
  }
}

abstract class _PlayerResponse implements PlayerResponse {
  factory _PlayerResponse(
      {required final int id,
      final String name,
      final String firstName,
      final String lastName,
      final String dateOfBirth,
      final String nationality,
      final String section,
      final dynamic position,
      final dynamic shirtNumber,
      required final String lastUpdated,
      required final CurrentTeam currentTeam,
      final List<String> errors}) = _$PlayerResponseImpl;

  factory _PlayerResponse.fromJson(Map<String, dynamic> json) =
      _$PlayerResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get dateOfBirth;
  @override
  String get nationality;
  @override
  String get section;
  @override
  dynamic get position;
  @override
  dynamic get shirtNumber;
  @override
  String get lastUpdated;
  @override
  CurrentTeam get currentTeam;
  @override
  List<String> get errors;

  /// Create a copy of PlayerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerResponseImplCopyWith<_$PlayerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
