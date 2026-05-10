import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';

class CustomFacilityChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isRating;

  const CustomFacilityChip({
    super.key,
    required this.icon,
    required this.label,
    this.isRating = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: isRating ? AppColors.orange : AppColors.primary,
          ),
          SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
