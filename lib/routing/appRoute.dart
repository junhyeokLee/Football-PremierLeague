import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/data/team/team.dart';
import 'package:football_premier_league/routing/scaffold_with_nested_navigation.dart';
import 'package:football_premier_league/ui/screen/matches/detail/matchDetailsScreen.dart';
import 'package:football_premier_league/ui/screen/matches/matchesScreen.dart';
import 'package:football_premier_league/ui/screen/playerRank/detail/playersRankDetailsScreen.dart';
import 'package:football_premier_league/ui/screen/playerRank/playersRankScreen.dart';
import 'package:football_premier_league/ui/screen/teamRank/detail/teamRankDetailsScreen.dart';
import 'package:football_premier_league/ui/screen/teamRank/teamsRankScreen.dart';
import 'package:go_router/go_router.dart';


enum AppRoute {
  matches,
  match,
  teamRank,
  teamRankDetails,
  playerRank,
  playerRankDetails,
  ;
  static AppRoute find(String? name) {
    return values.asNameMap()[name] ?? AppRoute.matches;
  }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _matchesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'matches');
final _teamRankNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'teamRank');
final _playerRankNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'playerRank');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/matches',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _matchesNavigatorKey,
            routes: [
              // Products
              GoRoute(
                path: '/matches',
                name: AppRoute.matches.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const MatchesScreen(),
                ),
                routes: [
                  GoRoute(
                    path: ':id',
                    name: AppRoute.match.name,
                    pageBuilder: (context, state) {
                      final id = int.parse(state.pathParameters['id'] as String);
                      return CustomTransitionPage(
                        key: state.pageKey,
                        child: MatchDetailsScreen(matchId: id),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );

                          // var opacity = animation.drive(Tween<double>(begin: 0.5, end: 1.0));
                          // return FadeTransition(opacity: opacity, child: child);
                        },
                        transitionDuration:
                            const Duration(milliseconds: 300), // 애니메이션 속도 조절
                      );

                      // return MaterialPage(
                      //   key: state.pageKey,
                      //   child: MovieDetailsScreen(movieId: id, movie: movie),
                      // );
                    },
                  )
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _teamRankNavigatorKey,
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/teamsRank',
                name: AppRoute.teamRank.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const TeamsRankScreen(),
                ),
                routes: [
                  GoRoute(
                    path: ':id',
                    name: AppRoute.teamRankDetails.name,
                    pageBuilder: (context, state) {
                      final id = int.parse(state.pathParameters['id'] as String);
                      final team = state.extra as Team; // extra에서 team 객체를 가져옴
                      return CustomTransitionPage(
                        key: state.pageKey,
                        child: TeamRankDetailsScreen(teamId: id,team: team),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                        transitionDuration:
                        const Duration(milliseconds: 300), // 애니메이션 속도 조절
                      );
                    },
                  )
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _playerRankNavigatorKey,
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/playersRank',
                name: AppRoute.playerRank.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const PlayersRankScreen(),
                ),
                routes: [
                  GoRoute(
                    path: ':id/:playerName',
                    name: AppRoute.playerRankDetails.name,
                    pageBuilder: (context, state) {
                      final id = int.parse(state.pathParameters['id'] as String);
                      final playerName = state.pathParameters['playerName'] as String;
                      return CustomTransitionPage(
                        key: state.pageKey,
                        child: PlayersRankDetailsScreen( playerId: id,playerName: playerName),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                        transitionDuration:
                        const Duration(milliseconds: 300), // 애니메이션 속도 조절
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
