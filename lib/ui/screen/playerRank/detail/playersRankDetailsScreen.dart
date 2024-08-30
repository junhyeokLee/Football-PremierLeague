import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/player/playerResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/dart/extension/player_name_translation.dart';
import 'package:football_premier_league/network/dio_error.dart';
import 'package:football_premier_league/repository/persons/playersRepository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayersRankDetailsScreen extends HookConsumerWidget {
  const PlayersRankDetailsScreen(
      {super.key, required this.playerId, required this.playerName});

  final int playerId;
  final String playerName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerRepository = ref.watch(playersRepositoryProvider);
    final playerFuture = useState<Future<PlayerResponse>?>(null);

    useEffect(() {
      playerFuture.value = playerRepository.getPlayer(playerId: playerId);
      return null;
    }, []);

    final playerSnapshot = useFuture(playerFuture.value);

    return Scaffold(
      body: playerSnapshot.connectionState == ConnectionState.waiting
          ? Center(child: CircularProgressIndicator(
              color: AppColors.primaryColor,
      ))
          : playerSnapshot.hasError
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      playerSnapshot.error is DioError
                          ? getErrorMessage(playerSnapshot.error as DioError)
                          : getErrorMessage(playerSnapshot.error!), // 여기서 error는 Object 타입
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                )
              : playerSnapshot.hasData
                  ? _buildPlayerDetails(playerSnapshot.data!, context)
                  : Container(),
    );
  }

  Widget _buildPlayerDetails(PlayerResponse player, BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            // expandedHeight: 200.0, // 앱바의 확장된 높이
            // collapsedHeight: 60.0, // 축소된 높이를 60으로 설정
            // toolbarHeight: 60.0, // 기본 툴바 높이를 60으로 설정
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return FlexibleSpaceBar(
                  title: Text(
                          playerName.playerNameTranslate,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                  // background: Image.network(
                  //   player.currentTeam.crest,
                  //   fit: BoxFit.cover,
                  // ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // 플레이어의 기본 정보를 포함하는 카드
                const SizedBox(height: 16),
                _buildSectionHeader('개인', context),
                _buildPlayerCard(player, context),
                _buildSectionHeader('팀', context),
                _buildTeamInfoCard(player, context),
                _buildSectionHeader('계약기간', context),
                _buildCareerStatsCard(player, context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerCard(PlayerResponse player, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.backgroundColor,
                    child: Text(
                      player.position != null && player.position.isNotEmpty
                          ? "${player.position[0]}"
                          : "?",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Text(
                    player.position != null && player.position.isNotEmpty
                        ? ' : ${translatePosition(player.position)}'
                        : ' : Unknown Position',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    Assets.backNumber,
                    width: 24,
                    color: AppColors.grey20,
                  ),
                  Text(
                    player.shirtNumber != null
                        ? ' : ${player.shirtNumber}번'
                        : ' : Unknown Number',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }

  Widget _buildTeamInfoCard(PlayerResponse player, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildInfoRow(
                icon: Icons.sports_soccer,
                title: translateTeamName(player.currentTeam.name),
                subtitle: player.currentTeam.venue,
                imageUrl: player.currentTeam.crest,
                context: context,
              ),
              const Divider(
                color: AppColors.grey10,
              ),
              _buildInfoRow(
                icon: Icons.location_city,
                title: player.currentTeam.address,
                context: context,
              ),
              const Divider(
                color: AppColors.grey10,
              ),
              _buildInfoRow(
                icon: Icons.flag,
                title: player.nationality,
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCareerStatsCard(PlayerResponse player, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildStatRow(
                  '계약시작', '${player.currentTeam.contract.start}', context),
              const SizedBox(height: 8),
              const Divider(
                color: AppColors.grey10,
              ),
              _buildStatRow(
                  '계약종료', '${player.currentTeam.contract.until}', context),
              const SizedBox(height: 8),
              const Divider(
                color: AppColors.grey10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
      {required IconData icon,
      required String title,
      String? subtitle,
      String? imageUrl,
      required BuildContext context}) {
    return ListTile(
      leading: imageUrl != null
          ? CachedNetworkImage(
              imageUrl: imageUrl,
              width: 24.0,
              height: 24.0,
              fit: BoxFit.fitWidth,
              placeholder: (context, url) => const CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
          : Icon(icon, color: AppColors.grey20),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      subtitle: subtitle != null
          ? Text(subtitle, style: Theme.of(context).textTheme.bodySmall)
          : null,
    );
  }

  Widget _buildStatRow(String label, String value, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        Text(value, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
