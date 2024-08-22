import 'package:flutter/material.dart';
import 'package:football_premier_league/common/common.dart';
import 'package:football_premier_league/common/constant/app_colors.dart';

class CustomSearchField extends StatelessWidget {

  final String hintText; // 힌트 텍스트
  final ValueNotifier<String> searchQuery; // 검색어 상태

  const CustomSearchField({
    super.key,
    required this.hintText,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: TextField(
          cursorColor: AppColors.grey20, // 커서 색상 설정
          style: context.textTheme.bodySmall ,
          onChanged: (value) {
            searchQuery.value = value; // 입력된 값으로 검색어 상태 업데이트
          },
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true, // 배경색 사용
              fillColor: Colors.white, // 배경색 설정 (예: 흰색)
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey), // 비활성화 보더 색상
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.primaryColor), // 활성화 보더 색상
              ),
              // 작성 중일 때 아이콘 없애기
              prefixIcon: const Icon(Icons.search,color: Colors.grey)
          ),
        ),
      ),
    );
  }
}