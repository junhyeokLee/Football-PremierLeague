import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/player/playerResponse.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/repository/persons/playersRepository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayersRankDetailsScreen extends HookConsumerWidget {
  const PlayersRankDetailsScreen(
      {super.key, required this.playerId,required this.playerName});
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
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
          titleSpacing: 0,
          title: Text('${playerName?? ''}',style: context.textTheme.bodyLarge),
        ),
        body: Column(
          children: [
            // MatchListTile(match: match!),
          ],
        ),
      );
    }
  }
