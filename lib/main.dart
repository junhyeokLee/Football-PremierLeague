import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/api/standings/standingsResponse.dart';
import 'package:football_premier_league/repository/standingsRepository.dart';

void main() {
  runApp(const ProviderScope(child: MyApp())); // Riverpod ProviderScope 추가
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  // 클릭 시 호출될 메서드
  void _fetchRanking() async {
    final standingsRepo = ref.watch(standingsRepositoryProvider);

    try {
      final standingsResponse = await standingsRepo.fetchRanking(season: 2024);
      // 데이터 로그 출력
      debugPrint('Standings Data: ${standingsResponse.toJson()}');
    } catch (e) {
      debugPrint('Error fetching standings: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Press the button to fetch standings:',
            ),
            ElevatedButton(
              onPressed: _fetchRanking,
              child: const Text('Fetch Standings'),
            ),
          ],
        ),
      ),
    );
  }
}