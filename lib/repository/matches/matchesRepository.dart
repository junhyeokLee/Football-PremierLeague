

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
      { required String startDate,required String endDate, CancelToken? cancelToken }) async {
    final uri = Uri(
      scheme: 'https',
      host: Env.baseUrl,
      path: 'v4/competitions/PL/matches',
      queryParameters: {
        'dateFrom': startDate,
        'dateTo': endDate,
      },
    );

    final response = await client.getUri(uri, cancelToken: cancelToken);
    debugPrint('Matches Data: ${response.data}');
    return MatchesResponse.fromJson(response.data);
  }
}



// getMattches 함수
// 1.	상태 관리의 일관성:
// •	FutureProvider, StreamProvider, StateProvider 등을 사용하여 비동기 작업의 상태를 자동으로 관리할 수 있습니다.
// •	UI에서 상태를 간편하게 처리할 수 있으며, 상태 변화에 따라 UI가 자동으로 업데이트됩니다.
// 2.	재사용성:
// •	Provider를 정의해두면, 애플리케이션의 여러 부분에서 재사용할 수 있습니다.
// •	동일한 비동기 작업을 여러 위젯에서 손쉽게 사용할 수 있습니다.
// 3.	의존성 주입:
// •	Provider를 통해 의존성을 주입받아 사용할 수 있습니다. 이를 통해 코드의 결합도를 낮출 수 있습니다.
// •	테스트가 용이해지고, 유지보수성이 높아집니다.
// 4.	Lifecycle 관리:
// •	onDispose, onCancel, onResume과 같은 라이프사이클 이벤트를 Riverpod에서 관리할 수 있어, 리소스 관리를 효율적으로 할 수 있습니다.

@riverpod
Future<MatchesResponse> getMatches(
    GetMatchesRef ref,  // 자동 생성된 클래스 이름 확인 필요
        {required String startDate, required String endDate}) async {

  final matchesRepo = ref.watch(matchesRepositoryProvider);
  final cancelToken = CancelToken();
  final link = ref.keepAlive();
  Timer? timer;

  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });

  ref.onCancel(() {
    timer = Timer(const Duration(seconds: 30), () {
      link.close();
    });
  });

  ref.onResume(() {
    timer?.cancel();
  });

  return matchesRepo.fetchMatches(startDate: startDate, endDate: endDate, cancelToken: cancelToken);
}