
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/common/constant/app_theme.dart';
import 'package:football_premier_league/common/widget/custom_text_button.dart';
import 'package:football_premier_league/repository/standingsRepository.dart';
import 'package:football_premier_league/routing/appRoute.dart';

void main() {
  runApp(const ProviderScope(child: MyApp())); // Riverpod ProviderScope 추가
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Flutter Demo',
      theme: AppTheme.light(),  // AppTheme의 light 테마 적용
    );
  }
}

