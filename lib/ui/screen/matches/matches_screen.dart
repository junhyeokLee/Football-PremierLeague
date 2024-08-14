
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/widget/custom_container.dart';
import 'package:football_premier_league/common/widget/custom_dropdown_button.dart';


final selectedYearProvider = StateProvider<int?>((ref) => null);

class MatchesScreen extends ConsumerWidget {
  const MatchesScreen({super.key});

  static const pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 현재 선택된 년도 상태를 읽어옵니다
    final selectedYear = ref.watch(selectedYearProvider);

    // 선택 가능한 년도 리스트 (현재 년도를 기준으로)
    List<int> years = List<int>.generate(30, (int index) => DateTime.now().year - index);

    // final query = ref.watch(matchesSearchQueryNotifierProvider);

    // final responseAsync = ref.watch(
    //   fetchMatchesProvider(queryData: (page: 1, query: query)),
    // );
    // final totalResults = responseAsync.valueOrNull?.totalResults;
    return Scaffold(
        appBar: AppBar(title: const Text('Matches'),
          actions: [
            Center(
              child: CustomDropdownButton(
                text: selectedYear != null ? selectedYear.toString() : DateTime.now().year.toString(),
                items: years,
                selectedValue: selectedYear,
                onChanged: (int? newValue) {
                  ref.read(selectedYearProvider.notifier).state = newValue;
                },
                width: 122.0,
                fontSize: 14.0,
                backgroundColor: AppColors.primaryColor,
                textColor: AppColors.backgroundColor,
                borderColor: Colors.transparent,
                borderRadius: 6.0,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  // ref.invalidate(fetchMatchesProvider);
                  // try {
                  //   await ref.read(fetchMatchesProvider(queryData: (page: 1, query: query)).future,);
                  // } catch (e) {
                  // }
                }, child: CustomContainer(),
                // child: ListView.builder(
                //   key: ValueKey(query),
                //   itemCount: totalResults,
                //   itemBuilder: (context, index) {
                //     final page = index ~/ pageSize + 1;
                //     final indexInPage = index % pageSize;
                //     final responseAsync = ref.watch(
                //       fetchMatchesProvider(queryData: (page: page, query: query)),
                //     );
                //     return responseAsync.when(
                //       error: (err, stack) => MovieListTileError(
                //         query: query,
                //         page: page,
                //         indexInPage: indexInPage,
                //         error: err.toString(),
                //         isLoading: responseAsync.isLoading,
                //       ),
                //       // loading: () => const MovieListTileShimmer(),
                //       data: (response) {
                //         if (indexInPage >= response.results.length) {
                //           return null;
                //         }
                //         final movie = response.results[indexInPage];
                //         return MovieListTile(
                //           movie: movie,
                //           debugIndex: index + 1,
                //           onPressed: () => context.goNamed(
                //             AppRoute.movie.name,
                //             pathParameters: {'id': movie.id.toString()},
                //             extra: movie,
                //           ),
                //         );
                //       },
                //     );
                //   },
                // ),
              ),
            ),
          ],
        )
    );
  }
}
