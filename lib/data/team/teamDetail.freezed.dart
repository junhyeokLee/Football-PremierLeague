// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamDetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamDetail _$TeamDetailFromJson(Map<String, dynamic> json) {
  return _TeamDetail.fromJson(json);
}

/// @nodoc
mixin _$TeamDetail {
  int get id => throw _privateConstructorUsedError; // 팀 고유 ID
  String get name => throw _privateConstructorUsedError; // 팀 이름
  String get shortName => throw _privateConstructorUsedError; // 팀 약어
  String get tla => throw _privateConstructorUsedError; // 팀의 3글자 약어
  String get crest => throw _privateConstructorUsedError; // 팀 엠블럼 URL
  String get address => throw _privateConstructorUsedError; // 팀 주소
  String get website => throw _privateConstructorUsedError; // 팀 웹사이트
  int get founded => throw _privateConstructorUsedError; // 창단 연도
  String get clubColors => throw _privateConstructorUsedError; // 팀 색상
  String get venue => throw _privateConstructorUsedError; // 홈 경기장
  String get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this TeamDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamDetailCopyWith<TeamDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDetailCopyWith<$Res> {
  factory $TeamDetailCopyWith(
          TeamDetail value, $Res Function(TeamDetail) then) =
      _$TeamDetailCopyWithImpl<$Res, TeamDetail>;
  @useResult
  $Res call(
      {int id,
      String name,
      String shortName,
      String tla,
      String crest,
      String address,
      String website,
      int founded,
      String clubColors,
      String venue,
      String lastUpdated});
}

/// @nodoc
class _$TeamDetailCopyWithImpl<$Res, $Val extends TeamDetail>
    implements $TeamDetailCopyWith<$Res> {
  _$TeamDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? lastUpdated = null,
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamDetailImplCopyWith<$Res>
    implements $TeamDetailCopyWith<$Res> {
  factory _$$TeamDetailImplCopyWith(
          _$TeamDetailImpl value, $Res Function(_$TeamDetailImpl) then) =
      __$$TeamDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String shortName,
      String tla,
      String crest,
      String address,
      String website,
      int founded,
      String clubColors,
      String venue,
      String lastUpdated});
}

/// @nodoc
class __$$TeamDetailImplCopyWithImpl<$Res>
    extends _$TeamDetailCopyWithImpl<$Res, _$TeamDetailImpl>
    implements _$$TeamDetailImplCopyWith<$Res> {
  __$$TeamDetailImplCopyWithImpl(
      _$TeamDetailImpl _value, $Res Function(_$TeamDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? lastUpdated = null,
  }) {
    return _then(_$TeamDetailImpl(
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamDetailImpl implements _TeamDetail {
  _$TeamDetailImpl(
      {required this.id,
      this.name = "",
      this.shortName = "",
      this.tla = "",
      this.crest = "",
      this.address = "",
      this.website = "",
      this.founded = 0,
      this.clubColors = "",
      this.venue = "",
      this.lastUpdated = ""});

  factory _$TeamDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamDetailImplFromJson(json);

  @override
  final int id;
// 팀 고유 ID
  @override
  @JsonKey()
  final String name;
// 팀 이름
  @override
  @JsonKey()
  final String shortName;
// 팀 약어
  @override
  @JsonKey()
  final String tla;
// 팀의 3글자 약어
  @override
  @JsonKey()
  final String crest;
// 팀 엠블럼 URL
  @override
  @JsonKey()
  final String address;
// 팀 주소
  @override
  @JsonKey()
  final String website;
// 팀 웹사이트
  @override
  @JsonKey()
  final int founded;
// 창단 연도
  @override
  @JsonKey()
  final String clubColors;
// 팀 색상
  @override
  @JsonKey()
  final String venue;
// 홈 경기장
  @override
  @JsonKey()
  final String lastUpdated;

  @override
  String toString() {
    return 'TeamDetail(id: $id, name: $name, shortName: $shortName, tla: $tla, crest: $crest, address: $address, website: $website, founded: $founded, clubColors: $clubColors, venue: $venue, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamDetailImpl &&
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
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, shortName, tla, crest,
      address, website, founded, clubColors, venue, lastUpdated);

  /// Create a copy of TeamDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamDetailImplCopyWith<_$TeamDetailImpl> get copyWith =>
      __$$TeamDetailImplCopyWithImpl<_$TeamDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamDetailImplToJson(
      this,
    );
  }
}

abstract class _TeamDetail implements TeamDetail {
  factory _TeamDetail(
      {required final int id,
      final String name,
      final String shortName,
      final String tla,
      final String crest,
      final String address,
      final String website,
      final int founded,
      final String clubColors,
      final String venue,
      final String lastUpdated}) = _$TeamDetailImpl;

  factory _TeamDetail.fromJson(Map<String, dynamic> json) =
      _$TeamDetailImpl.fromJson;

  @override
  int get id; // 팀 고유 ID
  @override
  String get name; // 팀 이름
  @override
  String get shortName; // 팀 약어
  @override
  String get tla; // 팀의 3글자 약어
  @override
  String get crest; // 팀 엠블럼 URL
  @override
  String get address; // 팀 주소
  @override
  String get website; // 팀 웹사이트
  @override
  int get founded; // 창단 연도
  @override
  String get clubColors; // 팀 색상
  @override
  String get venue; // 홈 경기장
  @override
  String get lastUpdated;

  /// Create a copy of TeamDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamDetailImplCopyWith<_$TeamDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
