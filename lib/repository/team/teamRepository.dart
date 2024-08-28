

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/api/team/teamResponse.dart';
import 'package:football_premier_league/env.dart';
import 'package:football_premier_league/network/dio_error.dart';
import 'package:football_premier_league/network/dio_provider.dart';
import 'package:football_premier_league/network/handleError.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'teamRepository.g.dart';


@riverpod
TeamRepository teamRepository(TeamRepositoryRef ref) =>
    TeamRepository(client: ref.watch(dioProvider));

class TeamRepository {
  const TeamRepository({ required this.client});
  final Dio client;

  Future<TeamResponse> getTeam (
      { required int teamId, CancelToken? cancelToken }) async {
    final uri = Uri(
      scheme: 'https',
      host: Env.baseUrl,
      path: 'v4/teams/$teamId',
    );

    return handleError(() async {
      final response = await client.getUri(uri, cancelToken: cancelToken);
      debugPrint('TeamResponse Data: ${response.data}');
      return TeamResponse.fromJson(response.data);
    });
    try {
      final response = await client.getUri(uri, cancelToken: cancelToken);
      debugPrint('TeamResponse Data: ${response.data}');
      return TeamResponse.fromJson(response.data);
    } on DioError catch (e) {
      // DioError인 경우
      final errorMessage = getErrorMessage(e);
      debugPrint('DioError: $errorMessage');
      throw Exception(errorMessage); // 예외 처리
    } catch (e) {
      // 다른 예외 처리
      final errorMessage = getErrorMessage(e);
      debugPrint('General Error: $errorMessage');
      throw Exception(errorMessage); // 일반 예외 처리
    }

  }

}

