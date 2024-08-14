import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/constant/assets.dart';
import 'package:football_premier_league/common/constant/dimen.dart';
import 'package:football_premier_league/common/widget/border/custom_triangle_border.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithNavigationBar(
      body: navigationShell,
      currentIndex: navigationShell.currentIndex,
      onDestinationSelected: _goBranch,
    );
  }
}

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: Border(
            top: BorderSide(
              color: AppColors.grey10,
              width: 1.0,
            ),

          ),
          // shape: CustomTriangleBorder(
          //   borderRadius: 8,
          //   borderColor: Colors.transparent,
          // ),
        ),
        child: NavigationBar(
          height: Dimen.navBottomHeight,
          backgroundColor: Colors.white,
          selectedIndex: currentIndex,
          indicatorColor: Colors.transparent,
          destinations: [
            NavigationDestination(
              icon: Padding(
                padding: EdgeInsets.only(top: 12.0),  // 아이콘을 상단에서 하단으로 이동
                child: Image.asset(
                  Assets.football,
                  width: 24,
                  height: 24,
                  color: AppColors.grey20,
                ),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(top: 12.0),  // 아이콘을 상단에서 하단으로 이동
                child: Image.asset(
                  Assets.footballSelect,
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Image.asset(
                  Assets.ranking,
                  width: 24,
                  height: 24,
                  color: AppColors.grey20,
                ),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Image.asset(
                  Assets.rankingSelect,
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Image.asset(
                  Assets.players,
                  width: 24,
                  height: 24,
                  color: AppColors.grey20,
                ),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Image.asset(
                  Assets.players,
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
          ],
          onDestinationSelected: onDestinationSelected,
        ),
      ),
    );
  }
}