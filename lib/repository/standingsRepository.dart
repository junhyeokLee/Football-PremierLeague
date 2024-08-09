

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/data/standings/standings.dart';
import 'package:football_premier_league/env.dart';
import 'package:football_premier_league/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'standingsRepository.g.dart';


@riverpod
StandingsRepository standingsRepository(StandingsRepositoryRef ref) =>
    StandingsRepository(client: ref.watch(dioProvider));

class StandingsRepository {
  const StandingsRepository({ required this.client});
  final Dio client;

  Future<StandingsResponse> fetchRanking (
      { required int season, CancelToken? cancelToken }) async {
    final uri = Uri(
      scheme: 'https',
      host: Env.baseUrl,
      path: 'v4/competitions/PL/standings',
      queryParameters: {
        'season': season.toString(),
      },
    );

    final response = await client.getUri(uri, cancelToken: cancelToken);
    debugPrint('Standings Data: ${response.data}');
    return StandingsResponse.fromJson(response.data);
  }

}

