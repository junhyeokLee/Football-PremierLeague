import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchDetailsScreen extends ConsumerWidget {
  const MatchDetailsScreen(
      {super.key, required this.matchId, required this.match});
  final int matchId;
  final Match? match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (match != null) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Match Details"),
            ],
          ),
        ),
        body: Column(
          children: [
            // MatchListTile(match: match!),
          ],
        ),
      );
    } else {
      return Container();
      // final matchAsync = ref.watch(matchProvider(matchId: matchId));
      // return matchAsync.when(
      //   error: (e, st) => Scaffold(
      //     appBar: AppBar(
      //       // title: Text(match?.title ?? 'Error'),
      //     ),
      //     body: Center(child: Text(e.toString())),
      //   ),
      //   loading: () => Scaffold(
      //     appBar: AppBar(
      //       // title: Text(match?.title ?? 'Loading'),
      //     ),
      //     body: const Column(
      //       children: [
      //         // MatchListTileShimmer(),
      //       ],
      //     ),
      //   ),
      //   data: (match) => Scaffold(
      //     appBar: AppBar(
      //       title: Text(match.title),
      //     ),
      //     body: Column(
      //       children: [
      //         // MatchListTile(movie: movie),
      //       ],
      //     ),
      //   ),
      // );
    }
  }
}
