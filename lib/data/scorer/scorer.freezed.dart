// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scorer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Scorer _$ScorerFromJson(Map<String, dynamic> json) {
  return _Scorer.fromJson(json);
}

/// @nodoc
mixin _$Scorer {
  Player get player => throw _privateConstructorUsedError; // 선수 정보
  TeamDetail get team => throw _privateConstructorUsedError; // 팀 정보
  int get playedMatches => throw _privateConstructorUsedError; // 출전 경기 수
  int get goals => throw _privateConstructorUsedError; // 득점 수
  int get assists => throw _privateConstructorUsedError; // 도움 수
  int? get penalties => throw _privateConstructorUsedError;

  /// Serializes this Scorer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScorerCopyWith<Scorer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScorerCopyWith<$Res> {
  factory $ScorerCopyWith(Scorer value, $Res Function(Scorer) then) =
      _$ScorerCopyWithImpl<$Res, Scorer>;
  @useResult
  $Res call(
      {Player player,
      TeamDetail team,
      int playedMatches,
      int goals,
      int assists,
      int? penalties});

  $PlayerCopyWith<$Res> get player;
  $TeamDetailCopyWith<$Res> get team;
}

/// @nodoc
class _$ScorerCopyWithImpl<$Res, $Val extends Scorer>
    implements $ScorerCopyWith<$Res> {
  _$ScorerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? team = null,
    Object? playedMatches = null,
    Object? goals = null,
    Object? assists = null,
    Object? penalties = freezed,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamDetail,
      playedMatches: null == playedMatches
          ? _value.playedMatches
          : playedMatches // ignore: cast_nullable_to_non_nullable
              as int,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
              as int,
      penalties: freezed == penalties
          ? _value.penalties
          : penalties // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamDetailCopyWith<$Res> get team {
    return $TeamDetailCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScorerImplCopyWith<$Res> implements $ScorerCopyWith<$Res> {
  factory _$$ScorerImplCopyWith(
          _$ScorerImpl value, $Res Function(_$ScorerImpl) then) =
      __$$ScorerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Player player,
      TeamDetail team,
      int playedMatches,
      int goals,
      int assists,
      int? penalties});

  @override
  $PlayerCopyWith<$Res> get player;
  @override
  $TeamDetailCopyWith<$Res> get team;
}

/// @nodoc
class __$$ScorerImplCopyWithImpl<$Res>
    extends _$ScorerCopyWithImpl<$Res, _$ScorerImpl>
    implements _$$ScorerImplCopyWith<$Res> {
  __$$ScorerImplCopyWithImpl(
      _$ScorerImpl _value, $Res Function(_$ScorerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? team = null,
    Object? playedMatches = null,
    Object? goals = null,
    Object? assists = null,
    Object? penalties = freezed,
  }) {
    return _then(_$ScorerImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamDetail,
      playedMatches: null == playedMatches
          ? _value.playedMatches
          : playedMatches // ignore: cast_nullable_to_non_nullable
              as int,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
              as int,
      penalties: freezed == penalties
          ? _value.penalties
          : penalties // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScorerImpl implements _Scorer {
  _$ScorerImpl(
      {required this.player,
      required this.team,
      this.playedMatches = 0,
      this.goals = 0,
      this.assists = 0,
      this.penalties});

  factory _$ScorerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScorerImplFromJson(json);

  @override
  final Player player;
// 선수 정보
  @override
  final TeamDetail team;
// 팀 정보
  @override
  @JsonKey()
  final int playedMatches;
// 출전 경기 수
  @override
  @JsonKey()
  final int goals;
// 득점 수
  @override
  @JsonKey()
  final int assists;
// 도움 수
  @override
  final int? penalties;

  @override
  String toString() {
    return 'Scorer(player: $player, team: $team, playedMatches: $playedMatches, goals: $goals, assists: $assists, penalties: $penalties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScorerImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.playedMatches, playedMatches) ||
                other.playedMatches == playedMatches) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.assists, assists) || other.assists == assists) &&
            (identical(other.penalties, penalties) ||
                other.penalties == penalties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, player, team, playedMatches, goals, assists, penalties);

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScorerImplCopyWith<_$ScorerImpl> get copyWith =>
      __$$ScorerImplCopyWithImpl<_$ScorerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScorerImplToJson(
      this,
    );
  }
}

abstract class _Scorer implements Scorer {
  factory _Scorer(
      {required final Player player,
      required final TeamDetail team,
      final int playedMatches,
      final int goals,
      final int assists,
      final int? penalties}) = _$ScorerImpl;

  factory _Scorer.fromJson(Map<String, dynamic> json) = _$ScorerImpl.fromJson;

  @override
  Player get player; // 선수 정보
  @override
  TeamDetail get team; // 팀 정보
  @override
  int get playedMatches; // 출전 경기 수
  @override
  int get goals; // 득점 수
  @override
  int get assists; // 도움 수
  @override
  int? get penalties;

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScorerImplCopyWith<_$ScorerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
