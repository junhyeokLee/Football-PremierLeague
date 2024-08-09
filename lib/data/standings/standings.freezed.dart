// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Standings _$StandingsFromJson(Map<String, dynamic> json) {
  return _Standings.fromJson(json);
}

/// @nodoc
mixin _$Standings {
  String get stage => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  List<Table> get table => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsCopyWith<Standings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsCopyWith<$Res> {
  factory $StandingsCopyWith(Standings value, $Res Function(Standings) then) =
      _$StandingsCopyWithImpl<$Res, Standings>;
  @useResult
  $Res call({String stage, String type, String? group, List<Table> table});
}

/// @nodoc
class _$StandingsCopyWithImpl<$Res, $Val extends Standings>
    implements $StandingsCopyWith<$Res> {
  _$StandingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? type = null,
    Object? group = freezed,
    Object? table = null,
  }) {
    return _then(_value.copyWith(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as List<Table>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandingsImplCopyWith<$Res>
    implements $StandingsCopyWith<$Res> {
  factory _$$StandingsImplCopyWith(
          _$StandingsImpl value, $Res Function(_$StandingsImpl) then) =
      __$$StandingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stage, String type, String? group, List<Table> table});
}

/// @nodoc
class __$$StandingsImplCopyWithImpl<$Res>
    extends _$StandingsCopyWithImpl<$Res, _$StandingsImpl>
    implements _$$StandingsImplCopyWith<$Res> {
  __$$StandingsImplCopyWithImpl(
      _$StandingsImpl _value, $Res Function(_$StandingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? type = null,
    Object? group = freezed,
    Object? table = null,
  }) {
    return _then(_$StandingsImpl(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      table: null == table
          ? _value._table
          : table // ignore: cast_nullable_to_non_nullable
              as List<Table>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingsImpl implements _Standings {
  _$StandingsImpl(
      {required this.stage,
      required this.type,
      this.group,
      required final List<Table> table})
      : _table = table;

  factory _$StandingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingsImplFromJson(json);

  @override
  final String stage;
  @override
  final String type;
  @override
  final String? group;
  final List<Table> _table;
  @override
  List<Table> get table {
    if (_table is EqualUnmodifiableListView) return _table;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_table);
  }

  @override
  String toString() {
    return 'Standings(stage: $stage, type: $type, group: $group, table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingsImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._table, _table));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stage, type, group,
      const DeepCollectionEquality().hash(_table));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingsImplCopyWith<_$StandingsImpl> get copyWith =>
      __$$StandingsImplCopyWithImpl<_$StandingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingsImplToJson(
      this,
    );
  }
}

abstract class _Standings implements Standings {
  factory _Standings(
      {required final String stage,
      required final String type,
      final String? group,
      required final List<Table> table}) = _$StandingsImpl;

  factory _Standings.fromJson(Map<String, dynamic> json) =
      _$StandingsImpl.fromJson;

  @override
  String get stage;
  @override
  String get type;
  @override
  String? get group;
  @override
  List<Table> get table;
  @override
  @JsonKey(ignore: true)
  _$$StandingsImplCopyWith<_$StandingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Table _$TableFromJson(Map<String, dynamic> json) {
  return _Table.fromJson(json);
}

/// @nodoc
mixin _$Table {
  int get position => throw _privateConstructorUsedError;
  Team get team => throw _privateConstructorUsedError;
  int get playedGames => throw _privateConstructorUsedError;
  String get form => throw _privateConstructorUsedError;
  int get won => throw _privateConstructorUsedError;
  int get draw => throw _privateConstructorUsedError;
  int get lost => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  int get goalsFor => throw _privateConstructorUsedError;
  int get goalsAgainst => throw _privateConstructorUsedError;
  int get goalDifference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableCopyWith<Table> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableCopyWith<$Res> {
  factory $TableCopyWith(Table value, $Res Function(Table) then) =
      _$TableCopyWithImpl<$Res, Table>;
  @useResult
  $Res call(
      {int position,
      Team team,
      int playedGames,
      String form,
      int won,
      int draw,
      int lost,
      int points,
      int goalsFor,
      int goalsAgainst,
      int goalDifference});

  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class _$TableCopyWithImpl<$Res, $Val extends Table>
    implements $TableCopyWith<$Res> {
  _$TableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? team = null,
    Object? playedGames = null,
    Object? form = null,
    Object? won = null,
    Object? draw = null,
    Object? lost = null,
    Object? points = null,
    Object? goalsFor = null,
    Object? goalsAgainst = null,
    Object? goalDifference = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      playedGames: null == playedGames
          ? _value.playedGames
          : playedGames // ignore: cast_nullable_to_non_nullable
              as int,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
      won: null == won
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int,
      draw: null == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      goalsFor: null == goalsFor
          ? _value.goalsFor
          : goalsFor // ignore: cast_nullable_to_non_nullable
              as int,
      goalsAgainst: null == goalsAgainst
          ? _value.goalsAgainst
          : goalsAgainst // ignore: cast_nullable_to_non_nullable
              as int,
      goalDifference: null == goalDifference
          ? _value.goalDifference
          : goalDifference // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableImplCopyWith<$Res> implements $TableCopyWith<$Res> {
  factory _$$TableImplCopyWith(
          _$TableImpl value, $Res Function(_$TableImpl) then) =
      __$$TableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int position,
      Team team,
      int playedGames,
      String form,
      int won,
      int draw,
      int lost,
      int points,
      int goalsFor,
      int goalsAgainst,
      int goalDifference});

  @override
  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$TableImplCopyWithImpl<$Res>
    extends _$TableCopyWithImpl<$Res, _$TableImpl>
    implements _$$TableImplCopyWith<$Res> {
  __$$TableImplCopyWithImpl(
      _$TableImpl _value, $Res Function(_$TableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? team = null,
    Object? playedGames = null,
    Object? form = null,
    Object? won = null,
    Object? draw = null,
    Object? lost = null,
    Object? points = null,
    Object? goalsFor = null,
    Object? goalsAgainst = null,
    Object? goalDifference = null,
  }) {
    return _then(_$TableImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      playedGames: null == playedGames
          ? _value.playedGames
          : playedGames // ignore: cast_nullable_to_non_nullable
              as int,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
      won: null == won
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int,
      draw: null == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      goalsFor: null == goalsFor
          ? _value.goalsFor
          : goalsFor // ignore: cast_nullable_to_non_nullable
              as int,
      goalsAgainst: null == goalsAgainst
          ? _value.goalsAgainst
          : goalsAgainst // ignore: cast_nullable_to_non_nullable
              as int,
      goalDifference: null == goalDifference
          ? _value.goalDifference
          : goalDifference // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableImpl implements _Table {
  _$TableImpl(
      {required this.position,
      required this.team,
      required this.playedGames,
      required this.form,
      required this.won,
      required this.draw,
      required this.lost,
      required this.points,
      required this.goalsFor,
      required this.goalsAgainst,
      required this.goalDifference});

  factory _$TableImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableImplFromJson(json);

  @override
  final int position;
  @override
  final Team team;
  @override
  final int playedGames;
  @override
  final String form;
  @override
  final int won;
  @override
  final int draw;
  @override
  final int lost;
  @override
  final int points;
  @override
  final int goalsFor;
  @override
  final int goalsAgainst;
  @override
  final int goalDifference;

  @override
  String toString() {
    return 'Table(position: $position, team: $team, playedGames: $playedGames, form: $form, won: $won, draw: $draw, lost: $lost, points: $points, goalsFor: $goalsFor, goalsAgainst: $goalsAgainst, goalDifference: $goalDifference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.playedGames, playedGames) ||
                other.playedGames == playedGames) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.won, won) || other.won == won) &&
            (identical(other.draw, draw) || other.draw == draw) &&
            (identical(other.lost, lost) || other.lost == lost) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.goalsFor, goalsFor) ||
                other.goalsFor == goalsFor) &&
            (identical(other.goalsAgainst, goalsAgainst) ||
                other.goalsAgainst == goalsAgainst) &&
            (identical(other.goalDifference, goalDifference) ||
                other.goalDifference == goalDifference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, team, playedGames,
      form, won, draw, lost, points, goalsFor, goalsAgainst, goalDifference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableImplCopyWith<_$TableImpl> get copyWith =>
      __$$TableImplCopyWithImpl<_$TableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableImplToJson(
      this,
    );
  }
}

abstract class _Table implements Table {
  factory _Table(
      {required final int position,
      required final Team team,
      required final int playedGames,
      required final String form,
      required final int won,
      required final int draw,
      required final int lost,
      required final int points,
      required final int goalsFor,
      required final int goalsAgainst,
      required final int goalDifference}) = _$TableImpl;

  factory _Table.fromJson(Map<String, dynamic> json) = _$TableImpl.fromJson;

  @override
  int get position;
  @override
  Team get team;
  @override
  int get playedGames;
  @override
  String get form;
  @override
  int get won;
  @override
  int get draw;
  @override
  int get lost;
  @override
  int get points;
  @override
  int get goalsFor;
  @override
  int get goalsAgainst;
  @override
  int get goalDifference;
  @override
  @JsonKey(ignore: true)
  _$$TableImplCopyWith<_$TableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shortName => throw _privateConstructorUsedError;
  String get tla => throw _privateConstructorUsedError;
  String get crest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({int id, String name, String shortName, String tla, String crest});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
    Object? tla = null,
    Object? crest = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamImplCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$TeamImplCopyWith(
          _$TeamImpl value, $Res Function(_$TeamImpl) then) =
      __$$TeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String shortName, String tla, String crest});
}

/// @nodoc
class __$$TeamImplCopyWithImpl<$Res>
    extends _$TeamCopyWithImpl<$Res, _$TeamImpl>
    implements _$$TeamImplCopyWith<$Res> {
  __$$TeamImplCopyWithImpl(_$TeamImpl _value, $Res Function(_$TeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
    Object? tla = null,
    Object? crest = null,
  }) {
    return _then(_$TeamImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamImpl implements _Team {
  _$TeamImpl(
      {required this.id,
      required this.name,
      required this.shortName,
      required this.tla,
      required this.crest});

  factory _$TeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String shortName;
  @override
  final String tla;
  @override
  final String crest;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, shortName: $shortName, tla: $tla, crest: $crest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.tla, tla) || other.tla == tla) &&
            (identical(other.crest, crest) || other.crest == crest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, shortName, tla, crest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      __$$TeamImplCopyWithImpl<_$TeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamImplToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  factory _Team(
      {required final int id,
      required final String name,
      required final String shortName,
      required final String tla,
      required final String crest}) = _$TeamImpl;

  factory _Team.fromJson(Map<String, dynamic> json) = _$TeamImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
