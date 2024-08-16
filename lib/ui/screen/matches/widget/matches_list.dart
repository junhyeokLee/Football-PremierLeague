import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/widget/custom_calendar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MatchesList extends HookConsumerWidget {
  final today = DateTime.now();

  // 캘린더의 시작일과 종료일을 사실상 무제한으로 설정
  final firstDay = DateTime.utc(1900, 1, 1);
  final lastDay = DateTime.utc(2100, 12, 31);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          // 분리한 ReusableCalendar 위젯 사용
          CustomCalendar(
            firstDay: firstDay,
            lastDay: lastDay,
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AspectRatio(
                      aspectRatio: 3,
                      child: Image.asset(
                        Assets.players,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Nothing to do!\nTry to add a new one.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}