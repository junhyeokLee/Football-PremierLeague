import 'package:appbar_animated/appbar_animated.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/team/teamResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/dart/extension/player_name_translation.dart';
import 'package:football_premier_league/common/dart/extension/team_name_translation.dart';
import 'package:football_premier_league/data/team/team.dart';
import 'package:football_premier_league/network/dio_error.dart';
import 'package:football_premier_league/repository/team/teamRepository.dart';
import 'package:football_premier_league/routing/appRoute.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamRankDetailsScreen extends HookConsumerWidget {
  final int teamId;
  final Team team;

  const TeamRankDetailsScreen({
    super.key,
    required this.teamId,
    required this.team,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamRepository = ref.watch(teamRepositoryProvider);
    final teamFuture = useState<Future<TeamResponse>?>(null);

    useEffect(() {
      teamFuture.value = teamRepository.getTeam(teamId: teamId);
      return null;
    }, []);

    final teamSnapshot = useFuture(teamFuture.value);

    return DraggableHome(
      leading: BackButton(
        onPressed: () => Navigator.pop(context),
      ),
      alwaysShowLeadingAndAction: true,
      title: Text("${team.name.teamNameTranslate}",
          style: context.textTheme.bodyLarge),
      headerWidget: headerWidget(context, team),
      headerBottomBar: headerBottomBarWidget(),
      fullyStretchable: false,
      curvedBodyRadius: 20,
      backgroundColor: AppColors.backgroundColor,
      appBarColor: Colors.white,
      body: [
        teamSnapshot.connectionState == ConnectionState.waiting
            ? const Center(
          child: CircularProgressIndicator(
              color: AppColors.primaryColor))
            : teamSnapshot.hasError
            ? Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              teamSnapshot.error is DioError
                  ? getErrorMessage(teamSnapshot.error as DioError)
                  : getErrorMessage(teamSnapshot.error!), // 여기서 error는 Object 타입
              style: const TextStyle(color: Colors.red),
            ),
          ),
        )
            : teamSnapshot.hasData && teamSnapshot.data!.squad.isNotEmpty
            ? _buildSingleChildScrollView(context, teamSnapshot.data!)
            : const Center(
          child: Text("선수 명단이 없습니다."),
        ),
      ],
    );
  }

  SingleChildScrollView _buildSingleChildScrollView(BuildContext context, TeamResponse teamSnapshot) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 코치 정보 표시
                Text("코치",
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: 8),
               Card(
                color: Colors.white,
                 child: ListTile(
                   leading: CircleAvatar(
                     backgroundColor: AppColors.backgroundColor,
                     child: Text(
                       "${teamSnapshot.coach.name[0].playerNameTranslate}",
                       style: Theme.of(context).textTheme.labelMedium,
                     ),
                   ),
                   title: Row(
                     children: [
                       Icon(Icons.person, color: AppColors.grey20),
                        const SizedBox(width: 8),
                       Text(
                         "${teamSnapshot.coach.name.playerNameTranslate}",
                         style: Theme.of(context).textTheme.labelSmall,
                       ),
                     ],
                   ),
                   subtitle: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const SizedBox(height: 4),
                       Row(
                         children: [
                           Icon(Icons.flag, color: AppColors.grey20),
                           const SizedBox(width: 8),
                           Text(
                             "${teamSnapshot.coach.nationality}",
                             style: Theme.of(context).textTheme.bodySmall,
                           ),
                         ],
                       ),
                       const SizedBox(height: 4),
                       Row(
                         children: [
                           Icon(Icons.receipt, color: AppColors.grey20),
                           const SizedBox(width: 8),
                           Text(
                             "${teamSnapshot.coach.contract.start} ~ ${teamSnapshot.coach.contract.until}",
                             style: Theme.of(context).textTheme.bodySmall,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
              ),
              const SizedBox(height: 8),

              // 선수 명단
              Text("선수 명단",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 12),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: teamSnapshot.squad.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.goNamed(
                      AppRoute.teeamRankPlayerDetails.name,
                      pathParameters: {
                      'id' : team.id.toString(),
                      'playerId': teamSnapshot.squad[index].id.toString(),
                      'playerName': teamSnapshot.squad[index].name.playerNameTranslate
                      },
                      extra: team,
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.backgroundColor,
                        child: Text("${teamSnapshot.squad[index].name[0].teamNameTranslate}",
                            style: Theme.of(context).textTheme.labelMedium),
                      ),
                      title: Row(
                        children: [
                          Icon(Icons.person, color: AppColors.grey20),
                          const SizedBox(width: 8),
                          Text("${teamSnapshot.squad[index].name.playerNameTranslate}",
                              style: Theme.of(context).textTheme.labelSmall
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.local_parking, color: AppColors.grey20),
                              const SizedBox(width: 8),
                              Text(
                                  translatePosition("${translatePosition(teamSnapshot.squad[index].position)}"),
                                  style: Theme.of(context).textTheme.bodySmall
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.flag, color: AppColors.grey20),
                              const SizedBox(width: 8),
                              Text(
                                "${teamSnapshot.squad[index].nationality}",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  Row headerBottomBarWidget() {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }

  Widget headerWidget(BuildContext context, Team team) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CachedNetworkImage(
          imageUrl: team.crest,
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(
            color: AppColors.backgroundColor,
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
