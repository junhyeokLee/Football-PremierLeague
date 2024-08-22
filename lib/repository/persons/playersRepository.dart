

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_premier_league/api/scorer/scorerResponse.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/env.dart';
import 'package:football_premier_league/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'playersRepository.g.dart';


@riverpod
PlayersRepository playersRepository(PlayersRepositoryRef ref) =>
    PlayersRepository(client: ref.watch(dioProvider));

class PlayersRepository {
  const PlayersRepository({ required this.client});
  final Dio client;

  Future<ScorerResponse> fetchTopScorer (
      { required int season, CancelToken? cancelToken }) async {
    final uri = Uri(
      scheme: 'https',
      host: Env.baseUrl,
      path: 'v4/competitions/PL/scorers',
      queryParameters: {
        'season': season.toString(),
        'limit' : 100.toString(),
      },
    );

    final response = await client.getUri(uri, cancelToken: cancelToken);
    debugPrint('Standings Data: ${response.data}');
    return ScorerResponse.fromJson(response.data);
  }

}

