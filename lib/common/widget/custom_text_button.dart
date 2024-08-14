import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/common/widget/border/custom_triangle_border.dart';

class CustomTextButton extends StatelessWidget {
  final String text; // 버튼에 표시될 텍스트
  final bool isEnabled; // 버튼의 활성화 상태
  final VoidCallback onPressed; // 버튼이 클릭될 때 호출될 콜백
  final VoidCallback? onPressedDisabled; // 버튼이 비활성화 상태일 때 호출될 콜백
  final double height; // 버튼의 높이
  final double width; // 버튼의 너비
  final double fontSize; // 버튼 텍스트의 폰트 크기
  final double padding; // 버튼 내부의 수평 패딩
  final double horizontalMargin; // 버튼의 좌우 마진
  final double verticalMargin; // 버튼의 상하 마진
  final Color backgroundColor; // 버튼의 배경 색상
  final Color textColor; // 버튼 텍스트 색상
  final Color borderColor; // 버튼 테두리 색상
  final double borderRadius; // 버튼의 모서리 라운딩 정도
  final FontWeight fontWeight; // 버튼 텍스트의 폰트 두께
  final Widget? leftWidget; // 버튼 왼쪽에 위치할 위젯
  final Widget? rightWidget; // 버튼 오른쪽에 위치할 위젯
  final bool fullWidth; // 버튼이 전체 너비를 차지할지 여부
  final TextAlign textAlign; // 버튼 텍스트의 정렬 방식
  final bool showLoading; // 로딩 상태를 표시할지 여부

  CustomTextButton({
    required this.text,
    required this.onPressed,
    this.onPressedDisabled,
    this.isEnabled = true,
    this.height = 32.0,
    this.width = double.infinity,
    this.fontSize = 14.0, // 폰트 크기를 버튼 높이에 맞게 조정
    this.padding = 0.0, // 내부 패딩을 줄여서 텍스트가 버튼 안에 맞도록 조정
    this.horizontalMargin = 16.0,
    this.verticalMargin = 0.0,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderRadius = 8.0,
    this.fontWeight = FontWeight.w400,
    this.leftWidget,
    this.rightWidget,
    this.fullWidth = false,
    this.textAlign = TextAlign.start,
    this.showLoading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 전체 너비를 사용할 경우 계산된 너비
    final effectiveWidth = fullWidth
        ? MediaQuery.of(context).size.width - horizontalMargin * 2
        : width;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin, vertical: verticalMargin),
      width: effectiveWidth,
      height: height,
      child: TextButton(
        onPressed: isEnabled ? onPressed : onPressedDisabled ?? () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.zero, // 내부 패딩을 제거
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
                (states) {
              if (!isEnabled) return AppColors.black; // 비활성화 상태 텍스트 색상
              return textColor; // 활성화 상태 텍스트 색상
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (states) {
              if (!isEnabled) return AppColors.grey20; // 비활성화 상태 색상
              if (states.contains(WidgetState.pressed)) {
                return AppColors.primarySelectedColor; // 눌림 상태 색상
              }
              return backgroundColor; // 기본 배경 색상
            },
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            CustomTriangleBorder(
              borderRadius: borderRadius,
              borderColor: borderColor,
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (showLoading) ...[
              Center(
                child: CircularProgressIndicator(), // 로딩 상태 표시
              ),
            ] else ...[
              if (leftWidget != null) // 왼쪽 위젯이 있을 경우 표시
                Positioned(
                  left: 0,
                  child: leftWidget!,
                ),
              if (rightWidget != null) // 오른쪽 위젯이 있을 경우 표시
                Positioned(
                  right: 0,
                  child: rightWidget!,
                ),
              Text(
                text,
                textAlign: textAlign, // 텍스트 정렬
                style: TextStyle(
                  fontSize: fontSize, // 폰트 크기
                  fontWeight: fontWeight, // 폰트 두께
                ),
                overflow: TextOverflow.ellipsis, // 텍스트가 잘릴 경우 처리
              ),
            ]
          ],
        ),
      ),
    );
  }
}
