// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matche.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  Area get area => throw _privateConstructorUsedError;
  Competition get competition => throw _privateConstructorUsedError;
  Season get season => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get utcDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get matchday => throw _privateConstructorUsedError;
  String get stage => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;
  Team get homeTeam => throw _privateConstructorUsedError;
  Team get awayTeam => throw _privateConstructorUsedError;
  Score get score => throw _privateConstructorUsedError;
  Odds? get odds => throw _privateConstructorUsedError;
  List<Referee> get referees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call(
      {Area area,
      Competition competition,
      Season season,
      int id,
      String utcDate,
      String status,
      int matchday,
      String stage,
      String? group,
      String lastUpdated,
      Team homeTeam,
      Team awayTeam,
      Score score,
      Odds? odds,
      List<Referee> referees});

  $AreaCopyWith<$Res> get area;
  $CompetitionCopyWith<$Res> get competition;
  $SeasonCopyWith<$Res> get season;
  $TeamCopyWith<$Res> get homeTeam;
  $TeamCopyWith<$Res> get awayTeam;
  $ScoreCopyWith<$Res> get score;
  $OddsCopyWith<$Res>? get odds;
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? competition = null,
    Object? season = null,
    Object? id = null,
    Object? utcDate = null,
    Object? status = null,
    Object? matchday = null,
    Object? stage = null,
    Object? group = freezed,
    Object? lastUpdated = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? score = null,
    Object? odds = freezed,
    Object? referees = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      competition: null == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Competition,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Season,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      utcDate: null == utcDate
          ? _value.utcDate
          : utcDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      matchday: null == matchday
          ? _value.matchday
          : matchday // ignore: cast_nullable_to_non_nullable
              as int,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
      odds: freezed == odds
          ? _value.odds
          : odds // ignore: cast_nullable_to_non_nullable
              as Odds?,
      referees: null == referees
          ? _value.referees
          : referees // ignore: cast_nullable_to_non_nullable
              as List<Referee>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area {
    return $AreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompetitionCopyWith<$Res> get competition {
    return $CompetitionCopyWith<$Res>(_value.competition, (value) {
      return _then(_value.copyWith(competition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeasonCopyWith<$Res> get season {
    return $SeasonCopyWith<$Res>(_value.season, (value) {
      return _then(_value.copyWith(season: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get homeTeam {
    return $TeamCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get awayTeam {
    return $TeamCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreCopyWith<$Res> get score {
    return $ScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OddsCopyWith<$Res>? get odds {
    if (_value.odds == null) {
      return null;
    }

    return $OddsCopyWith<$Res>(_value.odds!, (value) {
      return _then(_value.copyWith(odds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchImplCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$MatchImplCopyWith(
          _$MatchImpl value, $Res Function(_$MatchImpl) then) =
      __$$MatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Area area,
      Competition competition,
      Season season,
      int id,
      String utcDate,
      String status,
      int matchday,
      String stage,
      String? group,
      String lastUpdated,
      Team homeTeam,
      Team awayTeam,
      Score score,
      Odds? odds,
      List<Referee> referees});

  @override
  $AreaCopyWith<$Res> get area;
  @override
  $CompetitionCopyWith<$Res> get competition;
  @override
  $SeasonCopyWith<$Res> get season;
  @override
  $TeamCopyWith<$Res> get homeTeam;
  @override
  $TeamCopyWith<$Res> get awayTeam;
  @override
  $ScoreCopyWith<$Res> get score;
  @override
  $OddsCopyWith<$Res>? get odds;
}

/// @nodoc
class __$$MatchImplCopyWithImpl<$Res>
    extends _$MatchCopyWithImpl<$Res, _$MatchImpl>
    implements _$$MatchImplCopyWith<$Res> {
  __$$MatchImplCopyWithImpl(
      _$MatchImpl _value, $Res Function(_$MatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? competition = null,
    Object? season = null,
    Object? id = null,
    Object? utcDate = null,
    Object? status = null,
    Object? matchday = null,
    Object? stage = null,
    Object? group = freezed,
    Object? lastUpdated = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? score = null,
    Object? odds = freezed,
    Object? referees = null,
  }) {
    return _then(_$MatchImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      competition: null == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Competition,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Season,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      utcDate: null == utcDate
          ? _value.utcDate
          : utcDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      matchday: null == matchday
          ? _value.matchday
          : matchday // ignore: cast_nullable_to_non_nullable
              as int,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
      odds: freezed == odds
          ? _value.odds
          : odds // ignore: cast_nullable_to_non_nullable
              as Odds?,
      referees: null == referees
          ? _value._referees
          : referees // ignore: cast_nullable_to_non_nullable
              as List<Referee>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl implements _Match {
  _$MatchImpl(
      {required this.area,
      required this.competition,
      required this.season,
      required this.id,
      required this.utcDate,
      required this.status,
      required this.matchday,
      required this.stage,
      this.group,
      required this.lastUpdated,
      required this.homeTeam,
      required this.awayTeam,
      required this.score,
      this.odds,
      required final List<Referee> referees})
      : _referees = referees;

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

  @override
  final Area area;
  @override
  final Competition competition;
  @override
  final Season season;
  @override
  final int id;
  @override
  final String utcDate;
  @override
  final String status;
  @override
  final int matchday;
  @override
  final String stage;
  @override
  final String? group;
  @override
  final String lastUpdated;
  @override
  final Team homeTeam;
  @override
  final Team awayTeam;
  @override
  final Score score;
  @override
  final Odds? odds;
  final List<Referee> _referees;
  @override
  List<Referee> get referees {
    if (_referees is EqualUnmodifiableListView) return _referees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referees);
  }

  @override
  String toString() {
    return 'Match(area: $area, competition: $competition, season: $season, id: $id, utcDate: $utcDate, status: $status, matchday: $matchday, stage: $stage, group: $group, lastUpdated: $lastUpdated, homeTeam: $homeTeam, awayTeam: $awayTeam, score: $score, odds: $odds, referees: $referees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.competition, competition) ||
                other.competition == competition) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.utcDate, utcDate) || other.utcDate == utcDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.matchday, matchday) ||
                other.matchday == matchday) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.odds, odds) || other.odds == odds) &&
            const DeepCollectionEquality().equals(other._referees, _referees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      area,
      competition,
      season,
      id,
      utcDate,
      status,
      matchday,
      stage,
      group,
      lastUpdated,
      homeTeam,
      awayTeam,
      score,
      odds,
      const DeepCollectionEquality().hash(_referees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      __$$MatchImplCopyWithImpl<_$MatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchImplToJson(
      this,
    );
  }
}

abstract class _Match implements Match {
  factory _Match(
      {required final Area area,
      required final Competition competition,
      required final Season season,
      required final int id,
      required final String utcDate,
      required final String status,
      required final int matchday,
      required final String stage,
      final String? group,
      required final String lastUpdated,
      required final Team homeTeam,
      required final Team awayTeam,
      required final Score score,
      final Odds? odds,
      required final List<Referee> referees}) = _$MatchImpl;

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  Area get area;
  @override
  Competition get competition;
  @override
  Season get season;
  @override
  int get id;
  @override
  String get utcDate;
  @override
  String get status;
  @override
  int get matchday;
  @override
  String get stage;
  @override
  String? get group;
  @override
  String get lastUpdated;
  @override
  Team get homeTeam;
  @override
  Team get awayTeam;
  @override
  Score get score;
  @override
  Odds? get odds;
  @override
  List<Referee> get referees;
  @override
  @JsonKey(ignore: true)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
