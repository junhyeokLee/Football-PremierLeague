
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/common/widget/custom_container.dart';
import 'package:go_router/go_router.dart';

class PlayersRankScreen extends ConsumerWidget {
  const PlayersRankScreen({super.key});

  static const pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final query = ref.watch(matchesSearchQueryNotifierProvider);

    // final responseAsync = ref.watch(
    //   fetchMatchesProvider(queryData: (page: 1, query: query)),
    // );
    // final totalResults = responseAsync.valueOrNull?.totalResults;
    return Scaffold(
        appBar: AppBar(title: const Text('TeamsRank'),),
        body: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                }, child: CustomContainer(),
              ),
            ),
          ],
        )
    );
  }
}
