import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  SectionHeader({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textBlack,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "See all",
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
