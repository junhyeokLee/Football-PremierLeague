
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/widget/custom_dropdown_button.dart';
import 'package:football_premier_league/providers/calendar_provider.dart';
import 'package:football_premier_league/ui/screen/matches/widget/matches_list.dart';



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
              child: MatchesList(),
            )
          ],
        )
    );
  }
}
