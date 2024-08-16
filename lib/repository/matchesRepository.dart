

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_premier_league/api/matches/matchesResponse.dart';
import 'package:football_premier_league/env.dart';
import 'package:football_premier_league/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matchesRepository.g.dart';


@riverpod
MatchesRepository matchesRepository(MatchesRepositoryRef ref) =>
    MatchesRepository(client: ref.watch(dioProvider));

class MatchesRepository {
  const MatchesRepository({ required this.client});
  final Dio client;

  Future<MatchesResponse> fetchMatches (
      { required int startDate,required int endDate, CancelToken? cancelToken }) async {
    final uri = Uri(
      scheme: 'https',
      host: Env.baseUrl,
      path: 'v4/competitions/PL/matches',
      queryParameters: {
        'dateFrom': startDate.toString(),
        'dateTo': endDate.toString(),
      },
    );
    https://api.football-data.org/v4/competitions/PL/matches?dateFrom=2024-05-19&dateTo=2024-06-22

    final response = await client.getUri(uri, cancelToken: cancelToken);
    debugPrint('Matches Data: ${response.data}');
    return MatchesResponse.fromJson(response.data);
  }

}

