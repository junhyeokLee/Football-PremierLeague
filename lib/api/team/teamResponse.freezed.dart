// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamResponse _$TeamResponseFromJson(Map<String, dynamic> json) {
  return _TeamResponse.fromJson(json);
}

/// @nodoc
mixin _$TeamResponse {
  Area get area => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shortName => throw _privateConstructorUsedError;
  String get tla => throw _privateConstructorUsedError;
  String get crest => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  int get founded => throw _privateConstructorUsedError;
  String get clubColors => throw _privateConstructorUsedError;
  String get venue => throw _privateConstructorUsedError;
  List<RunningCompetition> get runningCompetitions =>
      throw _privateConstructorUsedError;
  Coach get coach => throw _privateConstructorUsedError;
  List<Squad> get squad => throw _privateConstructorUsedError;
  List<Staff> get staff => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this TeamResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamResponseCopyWith<TeamResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamResponseCopyWith<$Res> {
  factory $TeamResponseCopyWith(
          TeamResponse value, $Res Function(TeamResponse) then) =
      _$TeamResponseCopyWithImpl<$Res, TeamResponse>;
  @useResult
  $Res call(
      {Area area,
      int id,
      String name,
      String shortName,
      String tla,
      String crest,
      String address,
      String website,
      int founded,
      String clubColors,
      String venue,
      List<RunningCompetition> runningCompetitions,
      Coach coach,
      List<Squad> squad,
      List<Staff> staff,
      String lastUpdated,
      List<String> errors});

  $AreaCopyWith<$Res> get area;
  $CoachCopyWith<$Res> get coach;
}

/// @nodoc
class _$TeamResponseCopyWithImpl<$Res, $Val extends TeamResponse>
    implements $TeamResponseCopyWith<$Res> {
  _$TeamResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
    Object? tla = null,
    Object? crest = null,
    Object? address = null,
    Object? website = null,
    Object? founded = null,
    Object? clubColors = null,
    Object? venue = null,
    Object? runningCompetitions = null,
    Object? coach = null,
    Object? squad = null,
    Object? staff = null,
    Object? lastUpdated = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      tla: null == tla
          ? _value.tla
          : tla // ignore: cast_nullable_to_non_nullable
              as String,
      crest: null == crest
          ? _value.crest
          : crest // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      clubColors: null == clubColors
          ? _value.clubColors
          : clubColors // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      runningCompetitions: null == runningCompetitions
          ? _value.runningCompetitions
          : runningCompetitions // ignore: cast_nullable_to_non_nullable
              as List<RunningCompetition>,
      coach: null == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as Coach,
      squad: null == squad
          ? _value.squad
          : squad // ignore: cast_nullable_to_non_nullable
              as List<Squad>,
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area {
    return $AreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachCopyWith<$Res> get coach {
    return $CoachCopyWith<$Res>(_value.coach, (value) {
      return _then(_value.copyWith(coach: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamResponseImplCopyWith<$Res>
    implements $TeamResponseCopyWith<$Res> {
  factory _$$TeamResponseImplCopyWith(
          _$TeamResponseImpl value, $Res Function(_$TeamResponseImpl) then) =
      __$$TeamResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Area area,
      int id,
      String name,
      String shortName,
      String tla,
      String crest,
      String address,
      String website,
      int founded,
      String clubColors,
      String venue,
      List<RunningCompetition> runningCompetitions,
      Coach coach,
      List<Squad> squad,
      List<Staff> staff,
      String lastUpdated,
      List<String> errors});

  @override
  $AreaCopyWith<$Res> get area;
  @override
  $CoachCopyWith<$Res> get coach;
}

/// @nodoc
class __$$TeamResponseImplCopyWithImpl<$Res>
    extends _$TeamResponseCopyWithImpl<$Res, _$TeamResponseImpl>
    implements _$$TeamResponseImplCopyWith<$Res> {
  __$$TeamResponseImplCopyWithImpl(
      _$TeamResponseImpl _value, $Res Function(_$TeamResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
    Object? tla = null,
    Object? crest = null,
    Object? address = null,
    Object? website = null,
    Object? founded = null,
    Object? clubColors = null,
    Object? venue = null,
    Object? runningCompetitions = null,
    Object? coach = null,
    Object? squad = null,
    Object? staff = null,
    Object? lastUpdated = null,
    Object? errors = null,
  }) {
    return _then(_$TeamResponseImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      tla: null == tla
          ? _value.tla
          : tla // ignore: cast_nullable_to_non_nullable
              as String,
      crest: null == crest
          ? _value.crest
          : crest // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      clubColors: null == clubColors
          ? _value.clubColors
          : clubColors // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      runningCompetitions: null == runningCompetitions
          ? _value._runningCompetitions
          : runningCompetitions // ignore: cast_nullable_to_non_nullable
              as List<RunningCompetition>,
      coach: null == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as Coach,
      squad: null == squad
          ? _value._squad
          : squad // ignore: cast_nullable_to_non_nullable
              as List<Squad>,
      staff: null == staff
          ? _value._staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamResponseImpl implements _TeamResponse {
  _$TeamResponseImpl(
      {required this.area,
      required this.id,
      this.name = "",
      this.shortName = "",
      this.tla = "",
      this.crest = "",
      this.address = "",
      this.website = "",
      this.founded = 0,
      this.clubColors = "",
      this.venue = "",
      final List<RunningCompetition> runningCompetitions = const [],
      required this.coach,
      final List<Squad> squad = const [],
      final List<Staff> staff = const [],
      this.lastUpdated = "",
      final List<String> errors = const []})
      : _runningCompetitions = runningCompetitions,
        _squad = squad,
        _staff = staff,
        _errors = errors;

  factory _$TeamResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamResponseImplFromJson(json);

  @override
  final Area area;
  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String shortName;
  @override
  @JsonKey()
  final String tla;
  @override
  @JsonKey()
  final String crest;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String website;
  @override
  @JsonKey()
  final int founded;
  @override
  @JsonKey()
  final String clubColors;
  @override
  @JsonKey()
  final String venue;
  final List<RunningCompetition> _runningCompetitions;
  @override
  @JsonKey()
  List<RunningCompetition> get runningCompetitions {
    if (_runningCompetitions is EqualUnmodifiableListView)
      return _runningCompetitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_runningCompetitions);
  }

  @override
  final Coach coach;
  final List<Squad> _squad;
  @override
  @JsonKey()
  List<Squad> get squad {
    if (_squad is EqualUnmodifiableListView) return _squad;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_squad);
  }

  final List<Staff> _staff;
  @override
  @JsonKey()
  List<Staff> get staff {
    if (_staff is EqualUnmodifiableListView) return _staff;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staff);
  }

  @override
  @JsonKey()
  final String lastUpdated;
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
    return 'TeamResponse(area: $area, id: $id, name: $name, shortName: $shortName, tla: $tla, crest: $crest, address: $address, website: $website, founded: $founded, clubColors: $clubColors, venue: $venue, runningCompetitions: $runningCompetitions, coach: $coach, squad: $squad, staff: $staff, lastUpdated: $lastUpdated, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamResponseImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.tla, tla) || other.tla == tla) &&
            (identical(other.crest, crest) || other.crest == crest) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.founded, founded) || other.founded == founded) &&
            (identical(other.clubColors, clubColors) ||
                other.clubColors == clubColors) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            const DeepCollectionEquality()
                .equals(other._runningCompetitions, _runningCompetitions) &&
            (identical(other.coach, coach) || other.coach == coach) &&
            const DeepCollectionEquality().equals(other._squad, _squad) &&
            const DeepCollectionEquality().equals(other._staff, _staff) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      area,
      id,
      name,
      shortName,
      tla,
      crest,
      address,
      website,
      founded,
      clubColors,
      venue,
      const DeepCollectionEquality().hash(_runningCompetitions),
      coach,
      const DeepCollectionEquality().hash(_squad),
      const DeepCollectionEquality().hash(_staff),
      lastUpdated,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamResponseImplCopyWith<_$TeamResponseImpl> get copyWith =>
      __$$TeamResponseImplCopyWithImpl<_$TeamResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamResponseImplToJson(
      this,
    );
  }
}

abstract class _TeamResponse implements TeamResponse {
  factory _TeamResponse(
      {required final Area area,
      required final int id,
      final String name,
      final String shortName,
      final String tla,
      final String crest,
      final String address,
      final String website,
      final int founded,
      final String clubColors,
      final String venue,
      final List<RunningCompetition> runningCompetitions,
      required final Coach coach,
      final List<Squad> squad,
      final List<Staff> staff,
      final String lastUpdated,
      final List<String> errors}) = _$TeamResponseImpl;

  factory _TeamResponse.fromJson(Map<String, dynamic> json) =
      _$TeamResponseImpl.fromJson;

  @override
  Area get area;
  @override
  int get id;
  @override
  String get name;
  @override
  String get shortName;
  @override
  String get tla;
  @override
  String get crest;
  @override
  String get address;
  @override
  String get website;
  @override
  int get founded;
  @override
  String get clubColors;
  @override
  String get venue;
  @override
  List<RunningCompetition> get runningCompetitions;
  @override
  Coach get coach;
  @override
  List<Squad> get squad;
  @override
  List<Staff> get staff;
  @override
  String get lastUpdated;
  @override
  List<String> get errors;

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamResponseImplCopyWith<_$TeamResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
