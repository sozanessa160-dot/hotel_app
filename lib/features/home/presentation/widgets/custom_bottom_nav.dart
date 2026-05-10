import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppColors.lightGrey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _item(Icons.home_rounded, true),
          _item(Icons.calendar_month_outlined, false),
          _item(Icons.bookmark_outline, false),
          _item(Icons.person_outline, false),
        ],
      ),
    );
  }

  Widget _item(IconData icon, bool active) => Icon(
    icon,
    color: active ? AppColors.primary : AppColors.textGrey,
    size: 28,
  );
}
