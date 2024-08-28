import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/matches/matchResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/repository/matches/matchRepository.dart';
import 'package:football_premier_league/ui/screen/matches/widget/matchDetailItem.dart';
import 'package:football_premier_league/ui/widget/customMatchTable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MatchDetailsScreen extends HookConsumerWidget {
  const MatchDetailsScreen({super.key, required this.matchId});

  final int matchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchRepository = ref.watch(matchRepositoryProvider);
    final matchFuture = useState<Future<MatchResponse>?>(null);

    useEffect(() {
      matchFuture.value = matchRepository.getMatch(matchId: matchId);
      return null;
    }, []);

    final matchSnapshot = useFuture(matchFuture.value);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Text(
          '경기내역',
          style: context.textTheme.bodyLarge,
        ),
      ),
      body: matchSnapshot.connectionState == ConnectionState.waiting
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            )
          : matchSnapshot.hasError
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      '${matchSnapshot.data?.getErrorMessage()}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                )
              : matchSnapshot.hasData && matchSnapshot.data!.matches.isNotEmpty
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomMatchTable(matchSnapshot: matchSnapshot),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '시즌 ${matchSnapshot.data!.matches.length}경기',
                                  style: context.labelMedium,
                                ),
                              ],
                            ),
                          ),
                          // MatchItem을 사용하여 각 매치 정보를 표시
                          Column(
                            children: matchSnapshot.data!.matches
                                .map((match) => MatchDetailItem(match: match))
                                .toList(),
                          ),
                        ],
                      ),
                    )
                  : const Center(
                      child: Text('No matches found'),
                    ),
    );
  }
}
