import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final double height; // 컨테이너의 높이
  final double width; // 컨테이너의 너비
  final EdgeInsetsGeometry padding; // 컨테이너 내부 패딩
  final EdgeInsetsGeometry margin; // 컨테이너 외부 마진
  final Color backgroundColor; // 컨테이너 배경 색상
  final BorderRadiusGeometry borderRadius; // 컨테이너의 모서리 라운딩 정도
  final BoxBorder? border; // 컨테이너의 테두리
  final List<BoxShadow>? boxShadow; // 컨테이너의 그림자
  final AlignmentGeometry alignment; // 컨테이너 내부 정렬 방식
  final Widget? child; // 컨테이너 내부에 포함될 위젯

  const CustomContainer({
    this.height = double.infinity,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(0.0),
    this.backgroundColor = AppColors.backgroundColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.border,
    this.boxShadow,
    this.alignment = Alignment.center,
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, // 지정된 높이 설정
      width: width, // 지정된 너비 설정
      padding: padding, // 내부 패딩 적용
      margin: margin, // 외부 마진 적용
      alignment: alignment, // 내부 정렬 방식 설정
      decoration: BoxDecoration(
        color: backgroundColor, // 배경 색상 설정
        borderRadius: borderRadius, // 모서리 라운딩 설정
        border: border, // 테두리 설정
        boxShadow: boxShadow, // 그림자 설정
      ),
      child: child, // 컨테이너 내부에 포함될 위젯
    );
  }
}