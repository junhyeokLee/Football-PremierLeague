import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';
import 'package:football_premier_league/ui/widget/border/custom_triangle_border.dart';

class CustomDropdownButton extends StatelessWidget {
  final String text; // 기본으로 표시될 텍스트
  final int? selectedValue; // 선택된 값
  final List<int> items; // 드롭다운 항목 리스트
  final ValueChanged<int?> onChanged; // 값이 변경될 때 호출되는 콜백
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
  final Color menuItemTextColor; // 드롭다운 메뉴 항목 텍스트 색상
  final Color selectedMenuItemTextColor; // 선택된 메뉴 항목 텍스트 색상

  CustomDropdownButton({
    required this.text,
    required this.items,
    required this.onChanged,
    this.selectedValue,
    this.height = 32.0,
    this.width = double.infinity,
    this.fontSize = 14.0,
    this.padding = 0.0,
    this.horizontalMargin = 16.0,
    this.verticalMargin = 0.0,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = AppColors.black,
    this.borderColor = Colors.transparent,
    this.borderRadius = 8.0,
    this.fontWeight = FontWeight.w400,
    this.leftWidget,
    this.rightWidget,
    this.fullWidth = false,
    this.textAlign = TextAlign.start,
    this.menuItemTextColor = Colors.black, // 드롭다운 메뉴 항목 텍스트 색상
    this.selectedMenuItemTextColor = Colors.white, // 선택된 메뉴 항목 텍스트 색상
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
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: CustomTriangleBorder(
            borderRadius: borderRadius,
            borderColor: backgroundColor,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: DropdownButtonHideUnderline(
            child: Container(
              width: double.infinity,
              child: DropdownButton2<int>(
                value: selectedValue,
                onChanged: onChanged,
                items: items.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      value.toString(),
                      style: TextStyle(
                        color: menuItemTextColor, // 드롭다운 메뉴 항목 텍스트 색상
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                      ),
                    ),
                  );
                }).toList(),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),  // 드롭다운 전체 창 둥글게
                    color: AppColors.grey10,  // 드롭다운 배경색
                  ),
                  elevation: 0,  // 그림자 효과
                ),
                iconStyleData: IconStyleData(
                  iconEnabledColor: textColor,
                  iconSize: 24,
                ),
                selectedItemBuilder: (BuildContext context) {
                  return items.map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 24),  // 아이콘 공간 확보
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              value.toString(),
                              style: TextStyle(
                                color: selectedMenuItemTextColor, // 선택된 메뉴 항목 텍스트 색상
                                fontSize: fontSize,
                                fontWeight: fontWeight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList();
                },
                style: TextStyle(
                  color: textColor, // 드롭다운 버튼 텍스트 색상
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
                isExpanded: true, // 드롭다운 버튼 확장하여 아이템을 정렬
                hint: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // 텍스트 중앙 정렬
                  children: [
                    SizedBox(width: 24),  // 아이콘 공간 확보
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: textColor,
                            fontSize: fontSize,
                            fontWeight: fontWeight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}