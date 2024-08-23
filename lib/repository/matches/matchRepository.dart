import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_premier_league/api/matches/matchResponse.dart';
import 'package:football_premier_league/env.dart';
import 'package:football_premier_league/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matchRepository.g.dart';

@riverpod
MatchRepository matchRepository(MatchRepositoryRef ref) =>
    MatchRepository(client: ref.watch(dioProvider));

class MatchRepository {
  const MatchRepository({ required this.client});
  final Dio client;

  Future<MatchResponse> getMatch(
      { required int matchId, CancelToken? cancelToken }) async {
    final uri = Uri(
      scheme: 'https',
      host: Env.baseUrl,
      path: 'v4/matches/$matchId/head2head',
    );

    final response = await client.getUri(uri, cancelToken: cancelToken);
    debugPrint('Match Data: ${response.data}');
    return MatchResponse.fromJson(response.data);
  }

}